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
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ElastiCache
  # An API client for Aws::ElastiCache.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonElastiCacheV9
    @identifier = :elasticache

    add_plugin(::Aws::ElastiCache::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElastiCache::EndpointProvider)
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

    # <p>A tag is a key-value pair where the key and value are case-sensitive. You can use tags
    #             to categorize and track all your ElastiCache resources, with the exception of global
    #             replication group. When you add or remove tags on replication groups, those actions will
    #             be replicated to all nodes in the replication group. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    #          <p> For example, you can use cost-allocation tags to your ElastiCache resources, Amazon
    #             generates a cost allocation report as a comma-separated value (CSV) file with your usage
    #             and costs aggregated by your tags. You can apply tags that represent business categories
    #             (such as cost centers, application names, or owners) to organize your costs across
    #             multiple services.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Tagging.html">Using Cost Allocation Tags in
    #                 Amazon ElastiCache</a> in the <i>ElastiCache User
    #             Guide</i>.</p>
    # @param [Hash, Types::AddTagsToResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added, for
    #               example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.
    #               ElastiCache resources are <i>cluster</i> and
    #               <i>snapshot</i>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Service Namespaces</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example AddTagsToResource
    #   # Adds up to 10 tags, key/value pairs, to a cluster or snapshot resource.
    #   params = {
    #     resource_name: "arn:aws:elasticache:us-east-1:1234567890:cluster:my-mem-cluster",
    #     tags: [
    #       {
    #         value: "20150202",
    #         key: "APIVersion"
    #       },
    #       {
    #         value: "ElastiCache",
    #         key: "Service"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         value: "20150202",
    #         key: "APIVersion"
    #       },
    #       {
    #         value: "ElastiCache",
    #         key: "Service"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
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
    # @return [Types::AddTagsToResourceOutput]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Allows network ingress to a cache security group. Applications using ElastiCache must
    #             be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization
    #             mechanism.</p>
    #          <note>
    #             <p>You cannot authorize ingress from an Amazon EC2 security group in one region to an
    #                 ElastiCache cluster in another region.</p>
    #          </note>
    # @param [Hash, Types::AuthorizeCacheSecurityGroupIngressMessage] params
    # @option params [String] :cache_security_group_name
    #   <p>The cache security group that allows network ingress.</p>
    # @option params [String] :ec2_security_group_name
    #   <p>The Amazon EC2 security group to be authorized for ingress to the cache security
    #               group.</p>
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner. Note that this is
    #               not the same thing as an Amazon access key ID - you must provide a valid Amazon account
    #               number for this parameter.</p>
    # @example AuthorizeCacheCacheSecurityGroupIngress
    #   # Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2. Amazon EC2 security groups are used as the authorization mechanism.
    #   params = {
    #     cache_security_group_name: "my-sec-grp",
    #     ec2_security_group_name: "my-ec2-sec-grp",
    #     ec2_security_group_owner_id: "1234567890"
    #   }
    #   options = {}
    #   response = client.authorize_cache_security_group_ingress(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_security_group_name: "String", # required
    #     ec2_security_group_name: "String", # required
    #     ec2_security_group_owner_id: "String", # required
    #   }
    #   options = {}
    #   response = client.authorize_cache_security_group_ingress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_security_group: {
    #       owner_id: "String",
    #       cache_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String"
    #         }
    #       ],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::AuthorizeCacheSecurityGroupIngressResult]
    def authorize_cache_security_group_ingress(params = {}, options = {})
      request = build_request(:authorize_cache_security_group_ingress, params)
      request.send_request(options)
    end

    # <p>Apply the service update. For more information on service updates and applying them,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/applying-updates.html">Applying Service
    #                 Updates</a>.</p>
    # @param [Hash, Types::BatchApplyUpdateActionMessage] params
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_ids: ["String"],
    #     cache_cluster_ids: ["String"],
    #     service_update_name: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_apply_update_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_update_actions: [
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         service_update_name: "String",
    #         update_action_status: "not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #       }
    #     ],
    #     unprocessed_update_actions: [
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         service_update_name: "String",
    #         error_type: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchApplyUpdateActionOutput]
    def batch_apply_update_action(params = {}, options = {})
      request = build_request(:batch_apply_update_action, params)
      request.send_request(options)
    end

    # <p>Stop the service update. For more information on service updates and stopping them,
    #             see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/stopping-self-service-updates.html">Stopping
    #                 Service Updates</a>.</p>
    # @param [Hash, Types::BatchStopUpdateActionMessage] params
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_ids: ["String"],
    #     cache_cluster_ids: ["String"],
    #     service_update_name: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_stop_update_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_update_actions: [
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         service_update_name: "String",
    #         update_action_status: "not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]
    #       }
    #     ],
    #     unprocessed_update_actions: [
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         service_update_name: "String",
    #         error_type: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchStopUpdateActionOutput]
    def batch_stop_update_action(params = {}, options = {})
      request = build_request(:batch_stop_update_action, params)
      request.send_request(options)
    end

    # <p>Complete the migration of data.</p>
    # @param [Hash, Types::CompleteMigrationMessage] params
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which data is being migrated.</p>
    # @option params [Boolean] :force
    #   <p>Forces the migration to stop without ensuring that data is in sync. It is recommended
    #               to use this option only to abort the migration and not recommended when application
    #               wants to continue migration to ElastiCache.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.complete_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::CompleteMigrationResponse]
    def complete_migration(params = {}, options = {})
      request = build_request(:complete_migration, params)
      request.send_request(options)
    end

    # <p>Creates a copy of an existing serverless cache’s snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @param [Hash, Types::CopyServerlessCacheSnapshotRequest] params
    # @option params [String] :source_serverless_cache_snapshot_name
    #   <p>The identifier of the existing serverless cache’s snapshot to be copied. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :target_serverless_cache_snapshot_name
    #   <p>The identifier for the snapshot to be created. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of the KMS key used to encrypt the target snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to the target snapshot resource. A tag is a key-value pair. Available for Valkey, Redis OSS and Serverless Memcached only. Default: NULL</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_serverless_cache_snapshot_name: "String", # required
    #     target_serverless_cache_snapshot_name: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_serverless_cache_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache_snapshot: {
    #       serverless_cache_snapshot_name: "String",
    #       arn: "String",
    #       kms_key_id: "String",
    #       snapshot_type: "String",
    #       status: "String",
    #       create_time: Time.now,
    #       expiry_time: Time.now,
    #       bytes_used_for_cache: "String",
    #       serverless_cache_configuration: {
    #         serverless_cache_name: "String",
    #         engine: "String",
    #         major_engine_version: "String"
    #       }
    #     }
    #   }
    # @return [Types::CopyServerlessCacheSnapshotResponse]
    def copy_serverless_cache_snapshot(params = {}, options = {})
      request = build_request(:copy_serverless_cache_snapshot, params)
      request.send_request(options)
    end

    # <p>Makes a copy of an existing snapshot.</p>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    #          <important>
    #             <p>Users or groups that have permissions to use the <code>CopySnapshot</code>
    #                 operation can create their own Amazon S3 buckets and copy snapshots to it. To
    #                 control access to your snapshots, use an IAM policy to control who has the ability
    #                 to use the <code>CopySnapshot</code> operation. For more information about using IAM
    #                 to control the use of ElastiCache operations, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html">Exporting
    #                     Snapshots</a> and <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.html">Authentication & Access
    #                     Control</a>.</p>
    #          </important>
    #          <p>You could receive the following error messages.</p>
    #          <p class="title">
    #             <b>Error Messages</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Error Message:</b> The S3 bucket %s is outside of
    #                     the region.</p>
    #                <p>
    #                   <b>Solution:</b> Create an Amazon S3 bucket in the
    #                     same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User
    #                     Guide.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message:</b> The S3 bucket %s does not
    #                     exist.</p>
    #                <p>
    #                   <b>Solution:</b> Create an Amazon S3 bucket in the
    #                     same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User
    #                     Guide.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message:</b> The S3 bucket %s is not owned
    #                     by the authenticated user.</p>
    #                <p>
    #                   <b>Solution:</b> Create an Amazon S3 bucket in the
    #                     same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User
    #                     Guide.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message:</b> The authenticated user does
    #                     not have sufficient permissions to perform the desired activity.</p>
    #                <p>
    #                   <b>Solution:</b> Contact your system administrator
    #                     to get the needed permissions.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message:</b> The S3 bucket %s already
    #                     contains an object with key %s.</p>
    #                <p>
    #                   <b>Solution:</b> Give the
    #                         <code>TargetSnapshotName</code> a new and unique value. If exporting a
    #                     snapshot, you could alternatively create a new Amazon S3 bucket and use this
    #                     same value for <code>TargetSnapshotName</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message: </b> ElastiCache has not been
    #                     granted READ permissions %s on the S3 Bucket.</p>
    #                <p>
    #                   <b>Solution:</b> Add List and Read permissions on
    #                     the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
    #                     ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message: </b> ElastiCache has not been
    #                     granted WRITE permissions %s on the S3 Bucket.</p>
    #                <p>
    #                   <b>Solution:</b> Add Upload/Delete permissions on
    #                     the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
    #                     ElastiCache User Guide.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Error Message: </b> ElastiCache has not been
    #                     granted READ_ACP permissions %s on the S3 Bucket.</p>
    #                <p>
    #                   <b>Solution:</b> Add View Permissions on the bucket.
    #                     For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
    #                     ElastiCache User Guide.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CopySnapshotMessage] params
    # @option params [String] :source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    # @option params [String] :target_snapshot_name
    #   <p>A name for the snapshot copy. ElastiCache does not permit overwriting a snapshot,
    #               therefore this name must be unique within its context - ElastiCache or an Amazon S3
    #               bucket if exporting.</p>
    # @option params [String] :target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only
    #               when exporting a snapshot for external access.</p>
    #            <p>When using this parameter to export a snapshot, be sure Amazon ElastiCache has the
    #               needed permissions to this S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
    #                   <i>Amazon ElastiCache User Guide</i>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html">Exporting a
    #                   Snapshot</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example CopySnapshot
    #   # Copies a snapshot to a specified name.
    #   params = {
    #     source_snapshot_name: "my-snapshot",
    #     target_snapshot_name: "my-snapshot-copy",
    #     target_bucket: ""
    #   }
    #   options = {}
    #   response = client.copy_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       engine: "redis",
    #       cache_parameter_group_name: "default.redis3.2",
    #       vpc_id: "vpc-3820329f3",
    #       cache_cluster_id: "my-redis4",
    #       snapshot_retention_limit: 7,
    #       num_cache_nodes: 1,
    #       snapshot_name: "my-snapshot-copy",
    #       cache_cluster_create_time: Time.parse("2016-12-21T22:24:04.955Z"),
    #       auto_minor_version_upgrade: true,
    #       preferred_availability_zone: "us-east-1c",
    #       snapshot_status: "creating",
    #       snapshot_source: "manual",
    #       snapshot_window: "07:00-08:00",
    #       engine_version: "3.2.4",
    #       node_snapshots: [
    #         {
    #           cache_size: "3 MB",
    #           snapshot_create_time: Time.parse("2016-12-28T07:00:52Z"),
    #           cache_node_id: "0001",
    #           cache_node_create_time: Time.parse("2016-12-21T22:24:04.955Z")
    #         }
    #       ],
    #       cache_subnet_group_name: "default",
    #       port: 6379,
    #       preferred_maintenance_window: "tue:09:30-tue:10:30",
    #       cache_node_type: "cache.m3.large"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_snapshot_name: "String", # required
    #     target_snapshot_name: "String", # required
    #     target_bucket: "String",
    #     kms_key_id: "String",
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
    #       snapshot_name: "String",
    #       replication_group_id: "String",
    #       replication_group_description: "String",
    #       cache_cluster_id: "String",
    #       snapshot_status: "String",
    #       snapshot_source: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       topic_arn: "String",
    #       port: 1,
    #       cache_parameter_group_name: "String",
    #       cache_subnet_group_name: "String",
    #       vpc_id: "String",
    #       auto_minor_version_upgrade: false,
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       num_node_groups: 1,
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       node_snapshots: [
    #         {
    #           cache_cluster_id: "String",
    #           node_group_id: "String",
    #           cache_node_id: "String",
    #           node_group_configuration: {
    #             node_group_id: "AllowedNodeGroupId",
    #             slots: "String",
    #             replica_count: 1,
    #             primary_availability_zone: "String",
    #             replica_availability_zones: ["String"],
    #             primary_outpost_arn: "String",
    #             replica_outpost_arns: ["String"]
    #           },
    #           cache_size: "String",
    #           cache_node_create_time: Time.now,
    #           snapshot_create_time: Time.now
    #         }
    #       ],
    #       kms_key_id: "String",
    #       arn: "String",
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"]
    #     }
    #   }
    # @return [Types::CopySnapshotResult]
    def copy_snapshot(params = {}, options = {})
      request = build_request(:copy_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a cluster. All nodes in the cluster run the same protocol-compliant cache
    #             engine software, either Memcached, Valkey or Redis OSS.</p>
    #          <p>This operation is not supported for Valkey or Redis OSS (cluster mode enabled) clusters.</p>
    # @param [Hash, Types::CreateCacheClusterMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The node group (shard) identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>
    #               <b>Constraints:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 50 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which this cluster should belong. If this parameter
    #               is specified, the cluster is added to the specified replication group as a read replica;
    #               otherwise, the cluster is a standalone primary that is not part of any replication
    #               group.</p>
    #            <p>If the specified replication group is Multi-AZ enabled and the Availability Zone is
    #               not specified, the cluster is created in Availability Zones that provide the best spread
    #               of read replicas across Availability Zones.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    # @option params [String] :az_mode
    #   <p>Specifies whether the nodes in this Memcached cluster are created in a single
    #               Availability Zone or created across multiple Availability Zones in the cluster's
    #               region.</p>
    #            <p>This parameter is only supported for Memcached clusters.</p>
    #            <p>If the <code>AZMode</code> and <code>PreferredAvailabilityZones</code> are not
    #               specified, ElastiCache assumes <code>single-az</code> mode.</p>
    # @option params [String] :preferred_availability_zone
    #   <p>The EC2 Availability Zone in which the cluster is created.</p>
    #            <p>All nodes belonging to this cluster are placed in the preferred Availability Zone. If
    #               you want to create your nodes across multiple Availability Zones, use
    #                   <code>PreferredAvailabilityZones</code>.</p>
    #            <p>Default: System chosen Availability Zone.</p>
    # @option params [Array<String>] :preferred_availability_zones
    #   <p>A list of the Availability Zones in which cache nodes are created. The order of the
    #               zones in the list is not important.</p>
    #            <p>This option is only supported on Memcached.</p>
    #            <note>
    #               <p>If you are creating your cluster in an Amazon VPC (recommended) you can only
    #                   locate nodes in Availability Zones that are associated with the subnets in the
    #                   selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of
    #                       <code>NumCacheNodes</code>.</p>
    #            </note>
    #            <p>If you want all the nodes in the same Availability Zone, use
    #                   <code>PreferredAvailabilityZone</code> instead, or repeat the Availability Zone
    #               multiple times in the list.</p>
    #            <p>Default: System chosen Availability Zones.</p>
    # @option params [Integer] :num_cache_nodes
    #   <p>The initial number of cache nodes that the cluster has.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #            <p>If you need more than 40 nodes for your Memcached cluster, please fill out the
    #               ElastiCache Limit Increase Request form at <a href="http://aws.amazon.com/contact-us/elasticache-node-limit-request/">http://aws.amazon.com/contact-us/elasticache-node-limit-request/</a>.</p>
    # @option params [String] :cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    # @option params [String] :engine
    #   <p>The name of the cache engine to be used for this cluster.</p>
    #            <p>Valid values for this parameter are: <code>memcached</code> |
    #               <code>redis</code>
    #            </p>
    # @option params [String] :engine_version
    #   <p>The version number of the cache engine to be used for this cluster. To view the
    #               supported cache engine versions, use the DescribeCacheEngineVersions operation.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               cluster or replication group and create it anew with the earlier engine version. </p>
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this cluster. If this argument is
    #               omitted, the default parameter group for the specified engine is used. You cannot use
    #               any parameter group which has <code>cluster-enabled='yes'</code> when creating a
    #               cluster.</p>
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private
    #               Cloud (Amazon VPC).</p>
    #            <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC, you need to create a
    #                   subnet group before you start creating a cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of security group names to associate with this cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster outside of an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more VPC security groups associated with the cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private
    #               Cloud (Amazon VPC).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource.</p>
    # @option params [Array<String>] :snapshot_arns
    #   <p>A single-element string list containing an Amazon Resource Name (ARN) that uniquely
    #               identifies a Valkey or Redis OSS RDB snapshot file stored in Amazon S3. The snapshot file is used to
    #               populate the node group (shard). The Amazon S3 object name in the ARN cannot contain any
    #               commas.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #            <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    # @option params [String] :snapshot_name
    #   <p>The name of a Valkey or Redis OSS snapshot from which to restore data into the new node group
    #               (shard). The snapshot status changes to <code>restoring</code> while the new node group
    #               (shard) is being created.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period. </p>
    # @option params [Integer] :port
    #   <p>The port number on which each of the cache nodes accepts connections.</p>
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic
    #               to which notifications are sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 and above or Redis OSS engine version 6.0 and above, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting
    #               them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot taken
    #               today is retained for 5 days before being deleted.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cache cluster).</p>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    # @option params [String] :auth_token
    #   <p>
    #               <b>Reserved parameter.</b> The password used to access a
    #               password protected server.</p>
    #            <p>Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <,
    #                       >, and -. Other printable special characters cannot be used in the AUTH
    #                       token.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH
    #                   password</a> at http://redis.io/commands/AUTH.</p>
    # @option params [String] :outpost_mode
    #   <p>Specifies whether the nodes in the cluster are created in a single outpost or across
    #               multiple outposts.</p>
    # @option params [String] :preferred_outpost_arn
    #   <p>The outpost ARN in which the cache cluster is created.</p>
    # @option params [Array<String>] :preferred_outpost_arns
    #   <p>The outpost ARNs in which the cache cluster is created.</p>
    # @option params [Array<Types::LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs. </p>
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.</p>
    # @option params [String] :network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2 to 7.1
    #               and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>. </p>
    # @option params [String] :ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    # @example CreateCacheCluster
    #   # Creates a Memcached cluster with 2 nodes. 
    #   params = {
    #     cache_cluster_id: "my-memcached-cluster",
    #     az_mode: cross-az,
    #     num_cache_nodes: 2,
    #     cache_node_type: "cache.r3.large",
    #     engine: "memcached",
    #     engine_version: "1.4.24",
    #     cache_subnet_group_name: "default",
    #     port: 11211
    #   }
    #   options = {}
    #   response = client.create_cache_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       engine: "memcached",
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ],
    #         cache_parameter_group_name: "default.memcached1.4",
    #         parameter_apply_status: "in-sync"
    #       },
    #       cache_cluster_id: "my-memcached-cluster",
    #       cache_security_groups: [
    #       ],
    #       num_cache_nodes: 2,
    #       auto_minor_version_upgrade: true,
    #       cache_cluster_status: "creating",
    #       preferred_availability_zone: "Multiple",
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #       cache_subnet_group_name: "default",
    #       engine_version: "1.4.24",
    #       pending_modified_values: {
    #       },
    #       preferred_maintenance_window: "wed:09:00-wed:10:00",
    #       cache_node_type: "cache.r3.large"
    #     }
    #   }
    # @example CreateCacheCluster
    #   # Creates a Redis cluster with 1 node. 
    #   params = {
    #     cache_cluster_id: "my-redis",
    #     preferred_availability_zone: "us-east-1c",
    #     num_cache_nodes: 1,
    #     cache_node_type: "cache.r3.larage",
    #     engine: "redis",
    #     engine_version: "3.2.4",
    #     cache_subnet_group_name: "default",
    #     port: 6379,
    #     snapshot_retention_limit: 7,
    #     auto_minor_version_upgrade: true
    #   }
    #   options = {}
    #   response = client.create_cache_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       engine: "redis",
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ],
    #         cache_parameter_group_name: "default.redis3.2",
    #         parameter_apply_status: "in-sync"
    #       },
    #       snapshot_retention_limit: 7,
    #       cache_cluster_id: "my-redis",
    #       cache_security_groups: [
    #       ],
    #       num_cache_nodes: 1,
    #       snapshot_window: "10: 00-11: 00",
    #       auto_minor_version_upgrade: true,
    #       cache_cluster_status: "creating",
    #       preferred_availability_zone: "us-east-1c",
    #       client_download_landing_page: "https: //console.aws.amazon.com/elasticache/home#client-download: ",
    #       cache_subnet_group_name: "default",
    #       engine_version: "3.2.4",
    #       pending_modified_values: {
    #       },
    #       preferred_maintenance_window: "fri: 05: 30-fri: 06: 30",
    #       cache_node_type: "cache.m3.large"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String", # required
    #     replication_group_id: "String",
    #     az_mode: "single-az" # One of: ["single-az", "cross-az"],
    #     preferred_availability_zone: "String",
    #     preferred_availability_zones: ["String"],
    #     num_cache_nodes: 1,
    #     cache_node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_name: "String",
    #     cache_subnet_group_name: "String",
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     preferred_maintenance_window: "String",
    #     port: 1,
    #     notification_topic_arn: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     auth_token: "String",
    #     outpost_mode: "single-outpost" # One of: ["single-outpost", "cross-outpost"],
    #     preferred_outpost_arn: "String",
    #     preferred_outpost_arns: ["String"],
    #     log_delivery_configurations: [
    #       {
    #         log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #         destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: "String"
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: "String"
    #           }
    #         },
    #         log_format: "text" # One of: ["text", "json"],
    #         enabled: false
    #       }
    #     ],
    #     transit_encryption_enabled: false,
    #     network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #   }
    #   options = {}
    #   response = client.create_cache_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       cache_cluster_id: "String",
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       client_download_landing_page: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       cache_cluster_status: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         num_cache_nodes: 1,
    #         cache_node_ids_to_remove: ["String"],
    #         engine_version: "String",
    #         cache_node_type: "String",
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         scale_config: {
    #           scale_percentage: 1,
    #           scale_interval_minutes: 1
    #         }
    #       },
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       cache_security_groups: [
    #         {
    #           cache_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       cache_parameter_group: {
    #         cache_parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         cache_node_ids_to_reboot: ["String"]
    #       },
    #       cache_subnet_group_name: "String",
    #       cache_nodes: [
    #         {
    #           cache_node_id: "String",
    #           cache_node_status: "String",
    #           cache_node_create_time: Time.now,
    #           endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           parameter_group_status: "String",
    #           source_cache_node_id: "String",
    #           customer_availability_zone: "String",
    #           customer_outpost_arn: "String"
    #         }
    #       ],
    #       auto_minor_version_upgrade: false,
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       replication_group_id: "String",
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String",
    #       replication_group_log_delivery_enabled: false,
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"]
    #     }
    #   }
    # @return [Types::CreateCacheClusterResult]
    def create_cache_cluster(params = {}, options = {})
      request = build_request(:create_cache_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter
    #             group is a collection of parameters and their values that are applied to all of the
    #             nodes in any cluster or replication group using the CacheParameterGroup.</p>
    #          <p>A newly created CacheParameterGroup is an exact duplicate of the default parameter
    #             group for the CacheParameterGroupFamily. To customize the newly created
    #             CacheParameterGroup you can change the values of specific parameters. For more
    #             information, see:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html">ModifyCacheParameterGroup</a> in the ElastiCache API Reference.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.html">Parameters and
    #                         Parameter Groups</a> in the ElastiCache User Guide.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateCacheParameterGroupMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>A user-specified name for the cache parameter group.</p>
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of the cache parameter group family that the cache parameter group can be
    #               used with.</p>
    #            <p>Valid values are: <code>valkey8</code> | <code>valkey7</code> | <code>memcached1.4</code> | <code>memcached1.5</code> | <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> | <code>redis6.x</code> | <code>redis7</code>
    #            </p>
    # @option params [String] :description
    #   <p>A user-specified description for the cache parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example CreateCacheParameterGroup
    #   # Creates the Amazon ElastiCache parameter group custom-redis2-8.
    #   params = {
    #     cache_parameter_group_name: "custom-redis2-8",
    #     cache_parameter_group_family: "redis2.8",
    #     description: "Custom Redis 2.8 parameter group."
    #   }
    #   options = {}
    #   response = client.create_cache_parameter_group(params, options)
    #   response.to_h #=>
    #   {
    #     cache_parameter_group: {
    #       cache_parameter_group_name: "custom-redis2-8",
    #       cache_parameter_group_family: "redis2.8",
    #       description: "Custom Redis 2.8 parameter group."
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String", # required
    #     cache_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cache_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_parameter_group: {
    #       cache_parameter_group_name: "String",
    #       cache_parameter_group_family: "String",
    #       description: "String",
    #       is_global: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateCacheParameterGroupResult]
    def create_cache_parameter_group(params = {}, options = {})
      request = build_request(:create_cache_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new cache security group. Use a cache security group to control access to
    #             one or more clusters.</p>
    #          <p>Cache security groups are only used when you are creating a cluster outside of an
    #             Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a
    #             VPC, use a cache subnet group instead. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html">CreateCacheSubnetGroup</a>.</p>
    # @param [Hash, Types::CreateCacheSecurityGroupMessage] params
    # @option params [String] :cache_security_group_name
    #   <p>A name for the cache security group. This value is stored as a lowercase
    #               string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word
    #               "Default".</p>
    #            <p>Example: <code>mysecuritygroup</code>
    #            </p>
    # @option params [String] :description
    #   <p>A description for the cache security group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example CreateCacheSecurityGroup
    #   # Creates an ElastiCache security group. ElastiCache security groups are only for clusters not running in an AWS VPC.
    #   params = {
    #     cache_security_group_name: "my-cache-sec-grp",
    #     description: "Example ElastiCache security group."
    #   }
    #   options = {}
    #   response = client.create_cache_security_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_security_group_name: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cache_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_security_group: {
    #       owner_id: "String",
    #       cache_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String"
    #         }
    #       ],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateCacheSecurityGroupResult]
    def create_cache_security_group(params = {}, options = {})
      request = build_request(:create_cache_security_group, params)
      request.send_request(options)
    end

    # <p>Creates a new cache subnet group.</p>
    #          <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private
    #             Cloud (Amazon VPC).</p>
    # @param [Hash, Types::CreateCacheSubnetGroupMessage] params
    # @option params [String] :cache_subnet_group_name
    #   <p>A name for the cache subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #            <p>Example: <code>mysubnetgroup</code>
    #            </p>
    # @option params [String] :cache_subnet_group_description
    #   <p>A description for the cache subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the cache subnet group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example CreateCacheSubnet
    #   # Creates a new cache subnet group.
    #   params = {
    #     cache_subnet_group_name: "my-sn-grp2",
    #     cache_subnet_group_description: "Sample subnet group",
    #     subnet_ids: [
    #       "subnet-6f28c982",
    #       "subnet-bcd382f3",
    #       "subnet-845b3e7c0"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cache_subnet_group(params, options)
    #   response.to_h #=>
    #   {
    #     cache_subnet_group: {
    #       vpc_id: "vpc-91280df6",
    #       cache_subnet_group_description: "My subnet group.",
    #       subnets: [
    #         {
    #           subnet_identifier: "subnet-6f28c982",
    #           subnet_availability_zone: {
    #             name: "us-east-1a"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-bcd382f3",
    #           subnet_availability_zone: {
    #             name: "us-east-1c"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-845b3e7c0",
    #           subnet_availability_zone: {
    #             name: "us-east-1b"
    #           }
    #         }
    #       ],
    #       cache_subnet_group_name: "my-sn-grp"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_subnet_group_name: "String", # required
    #     cache_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cache_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_subnet_group: {
    #       cache_subnet_group_name: "String",
    #       cache_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_outpost: {
    #             subnet_outpost_arn: "String"
    #           },
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       arn: "String",
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::CreateCacheSubnetGroupResult]
    def create_cache_subnet_group(params = {}, options = {})
      request = build_request(:create_cache_subnet_group, params)
      request.send_request(options)
    end

    # <p>Global Datastore offers fully managed, fast, reliable and secure
    #             cross-region replication. Using Global Datastore with Valkey or Redis OSS, you can create cross-region
    #             read replica clusters for ElastiCache to enable low-latency reads and disaster
    #             recovery across regions. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastore.html">Replication
    #                 Across Regions Using Global Datastore</a>. </p>
    #          <ul>
    #             <li>
    #                <p>The <b>GlobalReplicationGroupIdSuffix</b> is the
    #                     name of the Global datastore.</p>
    #             </li>
    #             <li>
    #                <p>The <b>PrimaryReplicationGroupId</b> represents the
    #                     name of the primary cluster that accepts writes and will replicate updates to
    #                     the secondary cluster.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id_suffix
    #   <p>The suffix name of a Global datastore. Amazon ElastiCache automatically applies a
    #               prefix to the Global datastore ID when it is created. Each Amazon Region has its own
    #               prefix. For instance, a Global datastore ID created in the US-West-1 region will begin
    #               with "dsdfu" along with the suffix name you provide. The suffix, combined with the
    #               auto-generated prefix, guarantees uniqueness of the Global datastore name across
    #               multiple regions. </p>
    #            <p>For a full list of Amazon Regions and their respective Global datastore iD prefixes,
    #               see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastores-CLI.html">Using the Amazon CLI with Global datastores </a>.</p>
    # @option params [String] :global_replication_group_description
    #   <p>Provides details of the Global datastore</p>
    # @option params [String] :primary_replication_group_id
    #   <p>The name of the primary cluster that accepts writes and will replicate updates to the
    #               secondary cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id_suffix: "String", # required
    #     global_replication_group_description: "String",
    #     primary_replication_group_id: "String", # required
    #   }
    #   options = {}
    #   response = client.create_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateGlobalReplicationGroupResult]
    def create_global_replication_group(params = {}, options = {})
      request = build_request(:create_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Creates a Valkey or Redis OSS (cluster mode disabled) or a Valkey or Redis OSS (cluster mode enabled) replication
    #             group.</p>
    #          <p>This API can be used to create a standalone regional replication group or a secondary
    #             replication group associated with a Global datastore.</p>
    #          <p>A Valkey or Redis OSS (cluster mode disabled) replication group is a collection of nodes, where
    #             one of the nodes is a read/write primary and the others are read-only replicas.
    #             Writes to the primary are asynchronously propagated to the replicas.</p>
    #          <p>A Valkey or Redis OSS cluster-mode enabled cluster is comprised of from 1 to 90 shards (API/CLI:
    #             node groups). Each shard has a primary node and up to 5 read-only replica nodes. The
    #             configuration can range from 90 shards and 0 replicas to 15 shards and 5 replicas, which
    #             is the maximum number or replicas allowed. </p>
    #          <p>The node or shard limit can be increased to a maximum of 500 per cluster if the Valkey or Redis OSS 
    #             engine version is 5.0.6 or higher. For example, you can choose to configure a 500 node
    #             cluster that ranges between 83 shards (one primary and 5 replicas per shard) and 500
    #             shards (single primary and no replicas). Make sure there are enough available IP
    #             addresses to accommodate the increase. Common pitfalls include the subnets in the subnet
    #             group have too small a CIDR range or the subnets are shared and heavily used by other
    #             clusters. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.Creating.html">Creating a Subnet
    #                 Group</a>. For versions below 5.0.6, the limit is 250 per cluster.</p>
    #          <p>To request a limit increase, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">Amazon Service Limits</a> and
    #             choose the limit type <b>Nodes per cluster per instance
    #                 type</b>. </p>
    #          <p>When a Valkey or Redis OSS (cluster mode disabled) replication group has been successfully created,
    #             you can add one or more read replicas to it, up to a total of 5 read replicas. If you
    #             need to increase or decrease the number of node groups (console: shards), you can use scaling. 
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Scaling.html">Scaling self-designed clusters</a> in the <i>ElastiCache User
    #                 Guide</i>.</p>
    #          <note>
    #             <p>This operation is valid for Valkey and Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::CreateReplicationGroupMessage] params
    # @option params [String] :replication_group_id
    #   <p>The replication group identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 40 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :replication_group_description
    #   <p>A user-created description for the replication group.</p>
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [String] :primary_cluster_id
    #   <p>The identifier of the cluster that serves as the primary for this replication group.
    #               This cluster must already exist and have a status of <code>available</code>.</p>
    #            <p>This parameter is not required if <code>NumCacheClusters</code>,
    #                   <code>NumNodeGroups</code>, or <code>ReplicasPerNodeGroup</code> is
    #               specified.</p>
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Specifies whether a read-only replica is automatically promoted to read/write primary
    #               if the existing primary fails.</p>
    #            <p>
    #               <code>AutomaticFailoverEnabled</code> must be enabled for Valkey or Redis OSS (cluster mode enabled)
    #               replication groups.</p>
    #            <p>Default: false</p>
    # @option params [Boolean] :multi_az_enabled
    #   <p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more
    #               information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html">Minimizing Downtime: Multi-AZ</a>.</p>
    # @option params [Integer] :num_cache_clusters
    #   <p>The number of clusters this replication group initially has.</p>
    #            <p>This parameter is not used if there is more than one node group (shard). You should
    #               use <code>ReplicasPerNodeGroup</code> instead.</p>
    #            <p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the value of this
    #               parameter must be at least 2. If <code>AutomaticFailoverEnabled</code> is
    #                   <code>false</code> you can omit this parameter (it will default to 1), or you can
    #               explicitly set it to a value between 2 and 6.</p>
    #            <p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1 primary plus 5
    #               replicas).</p>
    # @option params [Array<String>] :preferred_cache_cluster_a_zs
    #   <p>A list of EC2 Availability Zones in which the replication group's clusters are
    #               created. The order of the Availability Zones in the list is the order in which clusters
    #               are allocated. The primary cluster is created in the first AZ in the list.</p>
    #            <p>This parameter is not used if there is more than one node group (shard). You should
    #               use <code>NodeGroupConfiguration</code> instead.</p>
    #            <note>
    #               <p>If you are creating your replication group in an Amazon VPC (recommended), you can
    #                   only locate clusters in Availability Zones associated with the subnets in the
    #                   selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of
    #                       <code>NumCacheClusters</code>.</p>
    #            </note>
    #            <p>Default: system chosen Availability Zones.</p>
    # @option params [Integer] :num_node_groups
    #   <p>An optional parameter that specifies the number of node groups (shards) for this Valkey or Redis OSS (cluster mode enabled) replication group. For Valkey or Redis OSS (cluster mode disabled) either omit
    #               this parameter or set it to 1.</p>
    #            <p>Default: 1</p>
    # @option params [Integer] :replicas_per_node_group
    #   <p>An optional parameter that specifies the number of replica nodes in each node group
    #               (shard). Valid values are 0 to 5.</p>
    # @option params [Array<Types::NodeGroupConfiguration>] :node_group_configuration
    #   <p>A list of node group (shard) configuration options. Each node group (shard)
    #               configuration has the following members: <code>PrimaryAvailabilityZone</code>,
    #                   <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>, and
    #                   <code>Slots</code>.</p>
    #            <p>If you're creating a Valkey or Redis OSS (cluster mode disabled) or a Valkey or Redis OSS (cluster mode enabled)
    #               replication group, you can use this parameter to individually configure each node group
    #               (shard), or you can omit this parameter. However, it is required when seeding a Valkey or Redis OSS (cluster mode enabled) cluster from a S3 rdb file. You must configure each node group
    #               (shard) using this parameter because you must specify the slots for each node
    #               group.</p>
    # @option params [String] :cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    # @option params [String] :engine
    #   <p>The name of the cache engine to be used for the clusters in this replication group.
    #               The value must be set to <code>valkey</code> or <code>redis</code>.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the cache engine to be used for the clusters in this replication
    #               group. To view the supported cache engine versions, use the
    #                   <code>DescribeCacheEngineVersions</code> operation.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>) in the <i>ElastiCache User
    #                   Guide</i>, but you cannot downgrade to an earlier engine version. If you want
    #               to use an earlier engine version, you must delete the existing cluster or replication
    #               group and create it anew with the earlier engine version. </p>
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this replication group. If this
    #               argument is omitted, the default cache parameter group for the specified engine is
    #               used.</p>
    #            <p>If you are running Valkey or Redis OSS version 3.2.4 or later, only one node group (shard), and want
    #               to use a default parameter group, we recommend that you specify the parameter group by
    #               name. </p>
    #            <ul>
    #               <li>
    #                  <p>To create a Valkey or Redis OSS (cluster mode disabled) replication group, use
    #                           <code>CacheParameterGroupName=default.redis3.2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a Valkey or Redis OSS (cluster mode enabled) replication group, use
    #                           <code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to be used for the replication group.</p>
    #            <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC, you need to create a
    #                   subnet group before you start creating a cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to associate with this replication group.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more Amazon VPC security groups associated with this replication group.</p>
    #            <p>Use this parameter only when you are creating a replication group in an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs
    #               (e.g. Key=<code>myKey</code>, Value=<code>myKeyValue</code>. You can include multiple
    #               tags as shown following: Key=<code>myKey</code>, Value=<code>myKeyValue</code>
    #                   Key=<code>mySecondKey</code>, Value=<code>mySecondKeyValue</code>. Tags on
    #               replication groups will be replicated to all nodes.</p>
    # @option params [Array<String>] :snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the Valkey or Redis OSS RDB snapshot
    #               files stored in Amazon S3. The snapshot files are used to populate the new replication
    #               group. The Amazon S3 object name in the ARN cannot contain any commas. The new
    #               replication group will have the number of node groups (console: shards) specified by the
    #               parameter <i>NumNodeGroups</i> or the number of node groups configured by
    #                   <i>NodeGroupConfiguration</i> regardless of the number of ARNs
    #               specified here.</p>
    #            <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    # @option params [String] :snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new replication group. The
    #               snapshot status changes to <code>restoring</code> while the new replication group is
    #               being created.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    #   <p>The port number on which each member of the replication group accepts
    #               connections.</p>
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic
    #               to which notifications are sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 and above or Redis OSS engine version 6.0 and above, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting
    #               them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that
    #               was taken today is retained for 5 days before being deleted.</p>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cluster).</p>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    # @option params [String] :auth_token
    #   <p>
    #               <b>Reserved parameter.</b> The password used to access a
    #               password protected server.</p>
    #            <p>
    #               <code>AuthToken</code> can be specified only on replication groups where
    #                   <code>TransitEncryptionEnabled</code> is <code>true</code>.</p>
    #            <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as
    #                       <code>true</code>, an <code>AuthToken</code>, and a
    #                       <code>CacheSubnetGroup</code>.</p>
    #            </important>
    #            <p>Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <,
    #                       >, and -. Other printable special characters cannot be used in the AUTH
    #                       token.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH
    #                   password</a> at http://redis.io/commands/AUTH.</p>
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
    #            <p>This parameter is valid only if the <code>Engine</code> parameter is
    #                   <code>redis</code>, the <code>EngineVersion</code> parameter is <code>3.2.6</code>,
    #                   <code>4.x</code> or later, and the cluster is being created in an Amazon VPC.</p>
    #            <p>If you enable in-transit encryption, you must also specify a value for
    #                   <code>CacheSubnetGroup</code>.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as
    #                       <code>true</code>, an <code>AuthToken</code>, and a
    #                       <code>CacheSubnetGroup</code>.</p>
    #            </important>
    # @option params [Boolean] :at_rest_encryption_enabled
    #   <p>A flag that enables encryption at rest when set to <code>true</code>.</p>
    #            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the
    #               replication group is created. To enable encryption at rest on a replication group you
    #               must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create the
    #               replication group. </p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Valkey 7.2 and later, Redis OSS version <code>3.2.6</code>, or Redis OSS <code>4.x</code> and
    #               later.</p>
    #            <p>Default: <code>true</code> when using Valkey, <code>false</code> when using Redis OSS</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the disk in the cluster.</p>
    # @option params [Array<String>] :user_group_ids
    #   <p>The user group to associate with the replication group.</p>
    # @option params [Array<Types::LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    # @option params [Boolean] :data_tiering_enabled
    #   <p>Enables data tiering. Data tiering is only supported for replication groups using the
    #               r6gd node type. This parameter must be set to true when using r6gd nodes. For more
    #               information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html">Data tiering</a>.</p>
    # @option params [String] :network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    # @option params [String] :ip_discovery
    #   <p>The network type you choose when creating a replication group, either
    #               <code>ipv4</code> | <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on
    #               the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    # @option params [String] :transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #            <p>When setting <code>TransitEncryptionEnabled</code> to <code>true</code>, you can set
    #               your <code>TransitEncryptionMode</code> to <code>preferred</code> in the same request,
    #               to allow both encrypted and unencrypted connections at the same time. Once you migrate
    #               all your Valkey or Redis OSS clients to use encrypted connections you can modify the value to
    #                   <code>required</code> to allow encrypted connections only.</p>
    #            <p>Setting <code>TransitEncryptionMode</code> to <code>required</code> is a two-step
    #               process that requires you to first set the <code>TransitEncryptionMode</code> to
    #                   <code>preferred</code>, after that you can set <code>TransitEncryptionMode</code> to
    #                   <code>required</code>.</p>
    #            <p>This process will not trigger the replacement of the replication group.</p>
    # @option params [String] :cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS 
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    # @option params [String] :serverless_cache_snapshot_name
    #   <p>The name of the snapshot used to create a replication group. Available for Valkey, Redis OSS only.</p>
    # @example CreateCacheReplicationGroup
    #   # Creates a Redis replication group with 3 nodes.
    #   params = {
    #     replication_group_id: "my-redis-rg",
    #     replication_group_description: "A Redis replication group.",
    #     automatic_failover_enabled: true,
    #     num_cache_clusters: 3,
    #     cache_node_type: "cache.m3.medium",
    #     engine: "redis",
    #     engine_version: "2.8.24",
    #     snapshot_retention_limit: 30
    #   }
    #   options = {}
    #   response = client.create_replication_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       status: "creating",
    #       description: "A Redis replication group.",
    #       replication_group_id: "my-redis-rg",
    #       automatic_failover: enabling,
    #       snapshotting_cluster_id: "my-redis-rg-002",
    #       member_clusters: [
    #         "my-redis-rg-001",
    #         "my-redis-rg-002",
    #         "my-redis-rg-003"
    #       ],
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example CreateReplicationGroup
    #   # Creates a Redis (cluster mode enabled) replication group with two shards. One shard has one read replica node and the other shard has two read replicas.
    #   params = {
    #     replication_group_id: "clustered-redis-rg",
    #     replication_group_description: "A multi-sharded replication group",
    #     num_node_groups: 2,
    #     node_group_configuration: [
    #       {
    #         slots: "0-8999",
    #         primary_availability_zone: "us-east-1c",
    #         replica_count: 1,
    #         replica_availability_zones: [
    #           "us-east-1b"
    #         ]
    #       },
    #       {
    #         slots: "9000-16383",
    #         primary_availability_zone: "us-east-1a",
    #         replica_count: 2,
    #         replica_availability_zones: [
    #           "us-east-1a",
    #           "us-east-1c"
    #         ]
    #       }
    #     ],
    #     cache_node_type: "cache.m3.medium",
    #     engine: "redis",
    #     engine_version: "3.2.4",
    #     cache_parameter_group_name: "default.redis3.2.cluster.on",
    #     auto_minor_version_upgrade: true,
    #     snapshot_retention_limit: 8
    #   }
    #   options = {}
    #   response = client.create_replication_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       status: "creating",
    #       description: "Sharded replication group",
    #       replication_group_id: "clustered-redis-rg",
    #       snapshot_retention_limit: 8,
    #       automatic_failover: enabled,
    #       snapshot_window: "05:30-06:30",
    #       member_clusters: [
    #         "rc-rg3-0001-001",
    #         "rc-rg3-0001-002",
    #         "rc-rg3-0002-001",
    #         "rc-rg3-0002-002",
    #         "rc-rg3-0002-003"
    #       ],
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     replication_group_description: "String", # required
    #     global_replication_group_id: "String",
    #     primary_cluster_id: "String",
    #     automatic_failover_enabled: false,
    #     multi_az_enabled: false,
    #     num_cache_clusters: 1,
    #     preferred_cache_cluster_a_zs: ["String"],
    #     num_node_groups: 1,
    #     replicas_per_node_group: 1,
    #     node_group_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         slots: "String",
    #         replica_count: 1,
    #         primary_availability_zone: "String",
    #         replica_availability_zones: ["String"],
    #         primary_outpost_arn: "String",
    #         replica_outpost_arns: ["String"]
    #       }
    #     ],
    #     cache_node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_name: "String",
    #     cache_subnet_group_name: "String",
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     preferred_maintenance_window: "String",
    #     port: 1,
    #     notification_topic_arn: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     auth_token: "String",
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #     kms_key_id: "String",
    #     user_group_ids: ["UserGroupId"],
    #     log_delivery_configurations: [
    #       {
    #         log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #         destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: "String"
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: "String"
    #           }
    #         },
    #         log_format: "text" # One of: ["text", "json"],
    #         enabled: false
    #       }
    #     ],
    #     data_tiering_enabled: false,
    #     network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #     transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #     cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #     serverless_cache_snapshot_name: "String"
    #   }
    #   options = {}
    #   response = client.create_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::CreateReplicationGroupResult]
    def create_replication_group(params = {}, options = {})
      request = build_request(:create_replication_group, params)
      request.send_request(options)
    end

    # <p>Creates a serverless cache.</p>
    # @param [Hash, Types::CreateServerlessCacheRequest] params
    # @option params [String] :serverless_cache_name
    #   <p>User-provided identifier for the serverless cache. This parameter is stored as a lowercase string.</p>
    # @option params [String] :description
    #   <p>User-provided description for the serverless cache.  
    #              The default is NULL, i.e. if no description is provided then an empty string will be returned. 
    #              The maximum length is 255 characters. </p>
    # @option params [String] :engine
    #   <p>The name of the cache engine to be used for creating the serverless cache.</p>
    # @option params [String] :major_engine_version
    #   <p>The version of the cache engine that will be used to create the serverless cache.</p>
    # @option params [Types::CacheUsageLimits] :cache_usage_limits
    #   <p>Sets the cache usage limits for storage and ElastiCache Processing Units for the cache.</p>
    # @option params [String] :kms_key_id
    #   <p>ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of the one or more VPC security groups to be associated with the serverless cache. 
    #              The security group will authorize traffic access for the VPC end-point (private-link). 
    #              If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC 
    #              end-point.</p>
    # @option params [Array<String>] :snapshot_arns_to_restore
    #   <p>The ARN(s) of the snapshot that the new serverless cache will be created from. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags (key, value) pairs to be added to the serverless cache resource. Default is NULL.</p>
    # @option params [String] :user_group_id
    #   <p>The identifier of the UserGroup to be associated with the serverless cache.  Available for Valkey and Redis OSS only. Default is NULL.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. 
    #              All the subnetIds must belong to the same VPC.</p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of snapshots that will be retained for the serverless cache that is being created. 
    #              As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :daily_snapshot_time
    #   <p>The daily time that snapshots will be created from the new serverless cache. By default this number is populated with 
    #              0, i.e. no snapshots will be created on an automatic daily basis. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_name: "String", # required
    #     description: "String",
    #     engine: "String", # required
    #     major_engine_version: "String",
    #     cache_usage_limits: {
    #       data_storage: {
    #         maximum: 1,
    #         minimum: 1,
    #         unit: "GB" # One of: ["GB"], # required
    #       },
    #       ecpu_per_second: {
    #         maximum: 1,
    #         minimum: 1
    #       }
    #     },
    #     kms_key_id: "String",
    #     security_group_ids: ["String"],
    #     snapshot_arns_to_restore: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     user_group_id: "String",
    #     subnet_ids: ["String"],
    #     snapshot_retention_limit: 1,
    #     daily_snapshot_time: "String"
    #   }
    #   options = {}
    #   response = client.create_serverless_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache: {
    #       serverless_cache_name: "String",
    #       description: "String",
    #       create_time: Time.now,
    #       status: "String",
    #       engine: "String",
    #       major_engine_version: "String",
    #       full_engine_version: "String",
    #       cache_usage_limits: {
    #         data_storage: {
    #           maximum: 1,
    #           minimum: 1,
    #           unit: "GB" # One of: ["GB"], # required
    #         },
    #         ecpu_per_second: {
    #           maximum: 1,
    #           minimum: 1
    #         }
    #       },
    #       kms_key_id: "String",
    #       security_group_ids: ["String"],
    #       endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       reader_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       arn: "String",
    #       user_group_id: "String",
    #       subnet_ids: ["String"],
    #       snapshot_retention_limit: 1,
    #       daily_snapshot_time: "String"
    #     }
    #   }
    # @return [Types::CreateServerlessCacheResponse]
    def create_serverless_cache(params = {}, options = {})
      request = build_request(:create_serverless_cache, params)
      request.send_request(options)
    end

    # <p>This API creates a copy of an entire ServerlessCache at a specific moment in time. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @param [Hash, Types::CreateServerlessCacheSnapshotRequest] params
    # @option params [String] :serverless_cache_snapshot_name
    #   <p>The name for the snapshot being created. Must be unique for the customer account. Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Must be between 1 and 255 characters.</p>
    # @option params [String] :serverless_cache_name
    #   <p>The name of an existing serverless cache. The snapshot is created from this cache. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.  Available for Valkey, Redis OSS and Serverless Memcached only. Default: NULL</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to the snapshot resource. A tag is a key-value pair. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_snapshot_name: "String", # required
    #     serverless_cache_name: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_serverless_cache_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache_snapshot: {
    #       serverless_cache_snapshot_name: "String",
    #       arn: "String",
    #       kms_key_id: "String",
    #       snapshot_type: "String",
    #       status: "String",
    #       create_time: Time.now,
    #       expiry_time: Time.now,
    #       bytes_used_for_cache: "String",
    #       serverless_cache_configuration: {
    #         serverless_cache_name: "String",
    #         engine: "String",
    #         major_engine_version: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateServerlessCacheSnapshotResponse]
    def create_serverless_cache_snapshot(params = {}, options = {})
      request = build_request(:create_serverless_cache_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a copy of an entire cluster or replication group at a specific moment in
    #             time.</p>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::CreateSnapshotMessage] params
    # @option params [String] :replication_group_id
    #   <p>The identifier of an existing replication group. The snapshot is created from this
    #               replication group.</p>
    # @option params [String] :cache_cluster_id
    #   <p>The identifier of an existing cluster. The snapshot is created from this
    #               cluster.</p>
    # @option params [String] :snapshot_name
    #   <p>A name for the snapshot being created.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example CreateSnapshot - NonClustered Redis, 2 read-replicas
    #   # Creates a snapshot of a non-clustered Redis cluster that has only three nodes, primary and two read-replicas. CacheClusterId must be a specific node in the cluster.
    #   params = {
    #     cache_cluster_id: "threenoderedis-001",
    #     snapshot_name: "snapshot-2"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       engine: "redis",
    #       cache_parameter_group_name: "default.redis3.2",
    #       vpc_id: "vpc-73c3cd17",
    #       cache_cluster_id: "threenoderedis-001",
    #       snapshot_retention_limit: 1,
    #       num_cache_nodes: 1,
    #       snapshot_name: "snapshot-2",
    #       cache_cluster_create_time: Time.parse("2017-02-03T15:43:36.278Z"),
    #       auto_minor_version_upgrade: true,
    #       preferred_availability_zone: "us-west-2c",
    #       snapshot_status: "creating",
    #       snapshot_source: "manual",
    #       snapshot_window: "00:00-01:00",
    #       engine_version: "3.2.4",
    #       node_snapshots: [
    #         {
    #           cache_size: "",
    #           cache_node_id: "0001",
    #           cache_node_create_time: Time.parse("2017-02-03T15:43:36.278Z")
    #         }
    #       ],
    #       cache_subnet_group_name: "default",
    #       port: 6379,
    #       preferred_maintenance_window: "sat:08:00-sat:09:00",
    #       cache_node_type: "cache.m3.medium"
    #     }
    #   }
    # @example CreateSnapshot - NonClustered Redis, no read-replicas
    #   # Creates a snapshot of a non-clustered Redis cluster that has only one node.
    #   params = {
    #     cache_cluster_id: "onenoderedis",
    #     snapshot_name: "snapshot-1"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       engine: "redis",
    #       cache_parameter_group_name: "default.redis3.2",
    #       vpc_id: "vpc-73c3cd17",
    #       cache_cluster_id: "onenoderedis",
    #       snapshot_retention_limit: 1,
    #       num_cache_nodes: 1,
    #       snapshot_name: "snapshot-1",
    #       cache_cluster_create_time: Time.parse("2017-02-03T15:43:36.278Z"),
    #       auto_minor_version_upgrade: true,
    #       preferred_availability_zone: "us-west-2c",
    #       snapshot_status: "creating",
    #       snapshot_source: "manual",
    #       snapshot_window: "00:00-01:00",
    #       engine_version: "3.2.4",
    #       node_snapshots: [
    #         {
    #           cache_size: "",
    #           cache_node_id: "0001",
    #           cache_node_create_time: Time.parse("2017-02-03T15:43:36.278Z")
    #         }
    #       ],
    #       cache_subnet_group_name: "default",
    #       port: 6379,
    #       preferred_maintenance_window: "sat:08:00-sat:09:00",
    #       cache_node_type: "cache.m3.medium"
    #     }
    #   }
    # @example CreateSnapshot-clustered Redis
    #   # Creates a snapshot of a clustered Redis cluster that has 2 shards, each with a primary and 4 read-replicas.
    #   params = {
    #     replication_group_id: "clusteredredis",
    #     snapshot_name: "snapshot-2x5"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       engine: "redis",
    #       cache_parameter_group_name: "default.redis3.2.cluster.on",
    #       vpc_id: "vpc-73c3cd17",
    #       node_snapshots: [
    #         {
    #           cache_size: "",
    #           node_group_id: "0001"
    #         },
    #         {
    #           cache_size: "",
    #           node_group_id: "0002"
    #         }
    #       ],
    #       num_node_groups: 2,
    #       snapshot_name: "snapshot-2x5",
    #       replication_group_id: "clusteredredis",
    #       auto_minor_version_upgrade: true,
    #       snapshot_retention_limit: 1,
    #       automatic_failover: enabled,
    #       snapshot_status: "creating",
    #       snapshot_source: "manual",
    #       snapshot_window: "12:00-13:00",
    #       engine_version: "3.2.4",
    #       cache_subnet_group_name: "default",
    #       replication_group_description: "Redis cluster with 2 shards.",
    #       port: 6379,
    #       preferred_maintenance_window: "mon:09:30-mon:10:30",
    #       cache_node_type: "cache.m3.medium"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String",
    #     cache_cluster_id: "String",
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
    #       snapshot_name: "String",
    #       replication_group_id: "String",
    #       replication_group_description: "String",
    #       cache_cluster_id: "String",
    #       snapshot_status: "String",
    #       snapshot_source: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       topic_arn: "String",
    #       port: 1,
    #       cache_parameter_group_name: "String",
    #       cache_subnet_group_name: "String",
    #       vpc_id: "String",
    #       auto_minor_version_upgrade: false,
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       num_node_groups: 1,
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       node_snapshots: [
    #         {
    #           cache_cluster_id: "String",
    #           node_group_id: "String",
    #           cache_node_id: "String",
    #           node_group_configuration: {
    #             node_group_id: "AllowedNodeGroupId",
    #             slots: "String",
    #             replica_count: 1,
    #             primary_availability_zone: "String",
    #             replica_availability_zones: ["String"],
    #             primary_outpost_arn: "String",
    #             replica_outpost_arns: ["String"]
    #           },
    #           cache_size: "String",
    #           cache_node_create_time: Time.now,
    #           snapshot_create_time: Time.now
    #         }
    #       ],
    #       kms_key_id: "String",
    #       arn: "String",
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"]
    #     }
    #   }
    # @return [Types::CreateSnapshotResult]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1: Creates a user. For more information, see
    #                 <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>.</p>
    # @param [Hash, Types::CreateUserMessage] params
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [String] :user_name
    #   <p>The username of the user.</p>
    # @option params [String] :engine
    #   <p>The options are valkey or redis. </p>
    # @option params [Array<String>] :passwords
    #   <p>Passwords used for this user. You can create up to two passwords for each user.</p>
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    # @option params [Boolean] :no_password_required
    #   <p>Indicates a password is not required for this user.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @option params [Types::AuthenticationMode] :authentication_mode
    #   <p>Specifies how to authenticate the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     user_name: "UserName", # required
    #     engine: "EngineType", # required
    #     passwords: ["String"],
    #     access_string: "AccessString", # required
    #     no_password_required: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     authentication_mode: {
    #       type: "password" # One of: ["password", "no-password-required", "iam"],
    #       passwords: ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "String",
    #     user_name: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     minimum_engine_version: "String",
    #     access_string: "String",
    #     user_group_ids: ["UserGroupId"],
    #     authentication: {
    #       type: "password" # One of: ["password", "no-password", "iam"],
    #       password_count: 1
    #     },
    #     arn: "String"
    #   }
    # @return [Types::CreateUserOutput]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1: Creates a user group. For more
    #             information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>
    #          </p>
    # @param [Hash, Types::CreateUserGroupMessage] params
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    # @option params [String] :engine
    #   <p>Sets the engine listed in a user group. The options are valkey or redis.</p>
    # @option params [Array<String>] :user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted. Available for Valkey and Redis OSS only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_group_id: "String", # required
    #     engine: "EngineType", # required
    #     user_ids: ["UserId"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_user_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_group_id: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     user_ids: ["UserId"],
    #     minimum_engine_version: "String",
    #     pending_changes: {
    #       user_ids_to_remove: ["UserId"],
    #       user_ids_to_add: ["UserId"]
    #     },
    #     replication_groups: ["String"],
    #     serverless_caches: ["String"],
    #     arn: "String"
    #   }
    # @return [Types::CreateUserGroupOutput]
    def create_user_group(params = {}, options = {})
      request = build_request(:create_user_group, params)
      request.send_request(options)
    end

    # <p>Decreases the number of node groups in a Global datastore</p>
    # @param [Hash, Types::DecreaseNodeGroupsInGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Integer] :node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the shard
    #               configuration</p>
    # @option params [Array<String>] :global_node_groups_to_remove
    #   <p>If the value of NodeGroupCount is less than the current number of node groups
    #               (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required.
    #               GlobalNodeGroupsToRemove is a list of NodeGroupIds to remove from the cluster.
    #               ElastiCache will attempt to remove all node groups listed by
    #               GlobalNodeGroupsToRemove from the cluster. </p>
    # @option params [Array<String>] :global_node_groups_to_retain
    #   <p>If the value of NodeGroupCount is less than the current number of node groups
    #               (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required.
    #               GlobalNodeGroupsToRetain is a list of NodeGroupIds to retain from the cluster.
    #               ElastiCache will attempt to retain all node groups listed by
    #               GlobalNodeGroupsToRetain from the cluster. </p>
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately. At present, the
    #               only permitted value for this parameter is true. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     node_group_count: 1, # required
    #     global_node_groups_to_remove: ["String"],
    #     global_node_groups_to_retain: ["String"],
    #     apply_immediately: false, # required
    #   }
    #   options = {}
    #   response = client.decrease_node_groups_in_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DecreaseNodeGroupsInGlobalReplicationGroupResult]
    def decrease_node_groups_in_global_replication_group(params = {}, options = {})
      request = build_request(:decrease_node_groups_in_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Dynamically decreases the number of replicas in a Valkey or Redis OSS (cluster mode disabled)
    #             replication group or the number of replica nodes in one or more node groups (shards) of
    #             a Valkey or Redis OSS (cluster mode enabled) replication group. This operation is performed with no
    #             cluster down time.</p>
    # @param [Hash, Types::DecreaseReplicaCountMessage] params
    # @option params [String] :replication_group_id
    #   <p>The id of the replication group from which you want to remove replica
    #               nodes.</p>
    # @option params [Integer] :new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation. For Valkey or Redis OSS (cluster mode disabled) replication groups, this is the number of replica nodes in
    #               the replication group. For Valkey or Redis OSS (cluster mode enabled) replication groups, this is the
    #               number of replica nodes in each of the replication group's node groups.</p>
    #            <p>The minimum number of replicas in a shard or replication group is:</p>
    #            <ul>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode disabled)</p>
    #                  <ul>
    #                     <li>
    #                        <p>If Multi-AZ is enabled: 1</p>
    #                     </li>
    #                     <li>
    #                        <p>If Multi-AZ is not enabled: 0</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode enabled): 0 (though you will not be able to failover to
    #                       a replica if your primary node fails)</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::ConfigureShard>] :replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each
    #               shard in a Valkey or Redis OSS replication group. The
    #                   <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>,
    #                   <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    # @option params [Array<String>] :replicas_to_remove
    #   <p>A list of the node ids to remove from the replication group or node group
    #               (shard).</p>
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is decreased immediately.
    #                   <code>ApplyImmediately=False</code> is not currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId", # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: ["String"],
    #         preferred_outpost_arns: ["String"]
    #       }
    #     ],
    #     replicas_to_remove: ["String"],
    #     apply_immediately: false, # required
    #   }
    #   options = {}
    #   response = client.decrease_replica_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::DecreaseReplicaCountResult]
    def decrease_replica_count(params = {}, options = {})
      request = build_request(:decrease_replica_count, params)
      request.send_request(options)
    end

    # <p>Deletes a previously provisioned cluster. <code>DeleteCacheCluster</code> deletes all
    #             associated cache nodes, node endpoints and the cluster itself. When you receive a
    #             successful response from this operation, Amazon ElastiCache immediately begins deleting
    #             the cluster; you cannot cancel or revert this operation.</p>
    #          <p>This operation is not valid for:</p>
    #          <ul>
    #             <li>
    #                <p>Valkey or Redis OSS (cluster mode enabled) clusters</p>
    #             </li>
    #             <li>
    #                <p>Valkey or Redis OSS (cluster mode disabled) clusters</p>
    #             </li>
    #             <li>
    #                <p>A cluster that is the last read replica of a replication group</p>
    #             </li>
    #             <li>
    #                <p>A cluster that is the primary node of a replication group</p>
    #             </li>
    #             <li>
    #                <p>A node group (shard) that has Multi-AZ mode enabled</p>
    #             </li>
    #             <li>
    #                <p>A cluster from a Valkey or Redis OSS (cluster mode enabled) replication group</p>
    #             </li>
    #             <li>
    #                <p>A cluster that is not in the <code>available</code> state</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteCacheClusterMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier for the cluster to be deleted. This parameter is not case
    #               sensitive.</p>
    # @option params [String] :final_snapshot_identifier
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that
    #               identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster
    #               immediately afterward.</p>
    # @example DeleteCacheCluster
    #   # Deletes an Amazon ElastiCache cluster.
    #   params = {
    #     cache_cluster_id: "my-memcached"
    #   }
    #   options = {}
    #   response = client.delete_cache_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       engine: "memcached",
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ],
    #         cache_parameter_group_name: "default.memcached1.4",
    #         parameter_apply_status: "in-sync"
    #       },
    #       cache_cluster_id: "my-memcached",
    #       preferred_availability_zone: "Multiple",
    #       configuration_endpoint: {
    #         port: 11211,
    #         address: "my-memcached2.ameaqx.cfg.use1.cache.amazonaws.com"
    #       },
    #       cache_security_groups: [
    #       ],
    #       cache_cluster_create_time: Time.parse("2016-12-22T16:05:17.314Z"),
    #       auto_minor_version_upgrade: true,
    #       cache_cluster_status: "deleting",
    #       num_cache_nodes: 2,
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #       cache_subnet_group_name: "default",
    #       engine_version: "1.4.24",
    #       pending_modified_values: {
    #       },
    #       preferred_maintenance_window: "tue:07:30-tue:08:30",
    #       cache_node_type: "cache.r3.large"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String", # required
    #     final_snapshot_identifier: "String"
    #   }
    #   options = {}
    #   response = client.delete_cache_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       cache_cluster_id: "String",
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       client_download_landing_page: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       cache_cluster_status: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         num_cache_nodes: 1,
    #         cache_node_ids_to_remove: ["String"],
    #         engine_version: "String",
    #         cache_node_type: "String",
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         scale_config: {
    #           scale_percentage: 1,
    #           scale_interval_minutes: 1
    #         }
    #       },
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       cache_security_groups: [
    #         {
    #           cache_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       cache_parameter_group: {
    #         cache_parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         cache_node_ids_to_reboot: ["String"]
    #       },
    #       cache_subnet_group_name: "String",
    #       cache_nodes: [
    #         {
    #           cache_node_id: "String",
    #           cache_node_status: "String",
    #           cache_node_create_time: Time.now,
    #           endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           parameter_group_status: "String",
    #           source_cache_node_id: "String",
    #           customer_availability_zone: "String",
    #           customer_outpost_arn: "String"
    #         }
    #       ],
    #       auto_minor_version_upgrade: false,
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       replication_group_id: "String",
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String",
    #       replication_group_log_delivery_enabled: false,
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"]
    #     }
    #   }
    # @return [Types::DeleteCacheClusterResult]
    def delete_cache_cluster(params = {}, options = {})
      request = build_request(:delete_cache_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified cache parameter group. You cannot delete a cache parameter group
    #             if it is associated with any cache clusters. You cannot delete the default cache
    #             parameter groups in your account.</p>
    # @param [Hash, Types::DeleteCacheParameterGroupMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to delete.</p>
    #            <note>
    #               <p>The specified cache security group must not be associated with any
    #                   clusters.</p>
    #            </note>
    # @example DeleteCacheParameterGroup
    #   # Deletes the Amazon ElastiCache parameter group custom-mem1-4.
    #   params = {
    #     cache_parameter_group_name: "custom-mem1-4"
    #   }
    #   options = {}
    #   response = client.delete_cache_parameter_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cache_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cache_parameter_group(params = {}, options = {})
      request = build_request(:delete_cache_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes a cache security group.</p>
    #          <note>
    #             <p>You cannot delete a cache security group if it is associated with any
    #                 clusters.</p>
    #          </note>
    # @param [Hash, Types::DeleteCacheSecurityGroupMessage] params
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to delete.</p>
    #            <note>
    #               <p>You cannot delete the default security group.</p>
    #            </note>
    # @example DeleteCacheSecurityGroup
    #   # Deletes a cache security group.
    #   params = {
    #     cache_security_group_name: "my-sec-group"
    #   }
    #   options = {}
    #   response = client.delete_cache_security_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_security_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cache_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cache_security_group(params = {}, options = {})
      request = build_request(:delete_cache_security_group, params)
      request.send_request(options)
    end

    # <p>Deletes a cache subnet group.</p>
    #          <note>
    #             <p>You cannot delete a default cache subnet group or one that is associated with any
    #                 clusters.</p>
    #          </note>
    # @param [Hash, Types::DeleteCacheSubnetGroupMessage] params
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to delete.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    # @example DeleteCacheSubnetGroup
    #   # Deletes the Amazon ElastiCache subnet group my-subnet-group.
    #   params = {
    #     cache_subnet_group_name: "my-subnet-group"
    #   }
    #   options = {}
    #   response = client.delete_cache_subnet_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_subnet_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cache_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cache_subnet_group(params = {}, options = {})
      request = build_request(:delete_cache_subnet_group, params)
      request.send_request(options)
    end

    # <p>Deleting a Global datastore is a two-step process: </p>
    #          <ul>
    #             <li>
    #                <p>First, you must <a>DisassociateGlobalReplicationGroup</a> to remove
    #                     the secondary clusters in the Global datastore.</p>
    #             </li>
    #             <li>
    #                <p>Once the Global datastore contains only the primary cluster, you can use the
    #                         <code>DeleteGlobalReplicationGroup</code> API to delete the Global datastore
    #                     while retainining the primary cluster using
    #                         <code>RetainPrimaryReplicationGroup=true</code>.</p>
    #             </li>
    #          </ul>
    #          <p>Since the Global Datastore has only a primary cluster, you can delete the Global
    #             Datastore while retaining the primary by setting
    #                 <code>RetainPrimaryReplicationGroup=true</code>. The primary cluster is never
    #             deleted when deleting a Global Datastore. It can only be deleted when it no longer is
    #             associated with any Global Datastore.</p>
    #          <p>When you receive a successful response from this operation, Amazon ElastiCache
    #             immediately begins deleting the selected resources; you cannot cancel or revert this
    #             operation.</p>
    # @param [Hash, Types::DeleteGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Boolean] :retain_primary_replication_group
    #   <p>The primary replication group is retained as a standalone replication group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     retain_primary_replication_group: false, # required
    #   }
    #   options = {}
    #   response = client.delete_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DeleteGlobalReplicationGroupResult]
    def delete_global_replication_group(params = {}, options = {})
      request = build_request(:delete_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Deletes an existing replication group. By default, this operation deletes the entire
    #             replication group, including the primary/primaries and all of the read replicas. If the
    #             replication group has only one primary, you can optionally delete only the read
    #             replicas, while retaining the primary by setting
    #             <code>RetainPrimaryCluster=true</code>.</p>
    #          <p>When you receive a successful response from this operation, Amazon ElastiCache
    #             immediately begins deleting the selected resources; you cannot cancel or revert this
    #             operation.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>CreateSnapshot</code> permission is required to create a final snapshot. 
    #                     Without this permission, the API call will fail with an <code>Access Denied</code> exception.</p>
    #                </li>
    #                <li>
    #                   <p>This operation is valid for Redis OSS only.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteReplicationGroupMessage] params
    # @option params [String] :replication_group_id
    #   <p>The identifier for the cluster to be deleted. This parameter is not case
    #               sensitive.</p>
    # @option params [Boolean] :retain_primary_cluster
    #   <p>If set to <code>true</code>, all of the read replicas are deleted, but the primary
    #               node is retained.</p>
    # @option params [String] :final_snapshot_identifier
    #   <p>The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from
    #               the primary node in the cluster, rather than one of the replicas; this is to ensure that
    #               it captures the freshest data. After the final snapshot is taken, the replication group
    #               is immediately deleted.</p>
    # @example DeleteReplicationGroup
    #   # Deletes the Amazon ElastiCache replication group my-redis-rg.
    #   params = {
    #     replication_group_id: "my-redis-rg",
    #     retain_primary_cluster: false
    #   }
    #   options = {}
    #   response = client.delete_replication_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       status: "deleting",
    #       automatic_failover: disabled,
    #       description: "simple redis cluster",
    #       replication_group_id: "my-redis-rg",
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     retain_primary_cluster: false,
    #     final_snapshot_identifier: "String"
    #   }
    #   options = {}
    #   response = client.delete_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::DeleteReplicationGroupResult]
    def delete_replication_group(params = {}, options = {})
      request = build_request(:delete_replication_group, params)
      request.send_request(options)
    end

    # <p>Deletes a specified existing serverless cache.</p>
    #          <note>
    #             <p>
    #                <code>CreateServerlessCacheSnapshot</code> permission is required to create a final snapshot. 
    #            Without this permission, the API call will fail with an <code>Access Denied</code> exception.</p>
    #          </note>
    # @param [Hash, Types::DeleteServerlessCacheRequest] params
    # @option params [String] :serverless_cache_name
    #   <p>The identifier of the serverless cache to be deleted.</p>
    # @option params [String] :final_snapshot_name
    #   <p>Name of the final snapshot to be taken before the serverless cache is deleted.  Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Default: NULL, i.e. a final snapshot is not taken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_name: "String", # required
    #     final_snapshot_name: "String"
    #   }
    #   options = {}
    #   response = client.delete_serverless_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache: {
    #       serverless_cache_name: "String",
    #       description: "String",
    #       create_time: Time.now,
    #       status: "String",
    #       engine: "String",
    #       major_engine_version: "String",
    #       full_engine_version: "String",
    #       cache_usage_limits: {
    #         data_storage: {
    #           maximum: 1,
    #           minimum: 1,
    #           unit: "GB" # One of: ["GB"], # required
    #         },
    #         ecpu_per_second: {
    #           maximum: 1,
    #           minimum: 1
    #         }
    #       },
    #       kms_key_id: "String",
    #       security_group_ids: ["String"],
    #       endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       reader_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       arn: "String",
    #       user_group_id: "String",
    #       subnet_ids: ["String"],
    #       snapshot_retention_limit: 1,
    #       daily_snapshot_time: "String"
    #     }
    #   }
    # @return [Types::DeleteServerlessCacheResponse]
    def delete_serverless_cache(params = {}, options = {})
      request = build_request(:delete_serverless_cache, params)
      request.send_request(options)
    end

    # <p>Deletes an existing serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @param [Hash, Types::DeleteServerlessCacheSnapshotRequest] params
    # @option params [String] :serverless_cache_snapshot_name
    #   <p>Idenfitier of the snapshot to be deleted. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_snapshot_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_serverless_cache_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache_snapshot: {
    #       serverless_cache_snapshot_name: "String",
    #       arn: "String",
    #       kms_key_id: "String",
    #       snapshot_type: "String",
    #       status: "String",
    #       create_time: Time.now,
    #       expiry_time: Time.now,
    #       bytes_used_for_cache: "String",
    #       serverless_cache_configuration: {
    #         serverless_cache_name: "String",
    #         engine: "String",
    #         major_engine_version: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteServerlessCacheSnapshotResponse]
    def delete_serverless_cache_snapshot(params = {}, options = {})
      request = build_request(:delete_serverless_cache_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes an existing snapshot. When you receive a successful response from this
    #             operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or
    #             revert this operation.</p>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::DeleteSnapshotMessage] params
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to be deleted.</p>
    # @example DeleteSnapshot
    #   # Deletes the Redis snapshot snapshot-20160822.
    #   params = {
    #     snapshot_name: "snapshot-20161212"
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       engine: "redis",
    #       cache_parameter_group_name: "default.redis3.2",
    #       vpc_id: "vpc-91280df6",
    #       cache_cluster_id: "my-redis5",
    #       snapshot_retention_limit: 7,
    #       num_cache_nodes: 1,
    #       snapshot_name: "snapshot-20161212",
    #       cache_cluster_create_time: Time.parse("2016-12-21T22:27:12.543Z"),
    #       auto_minor_version_upgrade: true,
    #       preferred_availability_zone: "us-east-1c",
    #       snapshot_status: "deleting",
    #       snapshot_source: "manual",
    #       snapshot_window: "10:00-11:00",
    #       engine_version: "3.2.4",
    #       node_snapshots: [
    #         {
    #           cache_size: "3 MB",
    #           snapshot_create_time: Time.parse("2016-12-21T22:30:26Z"),
    #           cache_node_id: "0001",
    #           cache_node_create_time: Time.parse("2016-12-21T22:27:12.543Z")
    #         }
    #       ],
    #       cache_subnet_group_name: "default",
    #       port: 6379,
    #       preferred_maintenance_window: "fri:05:30-fri:06:30",
    #       cache_node_type: "cache.m3.large"
    #     }
    #   }
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
    #       snapshot_name: "String",
    #       replication_group_id: "String",
    #       replication_group_description: "String",
    #       cache_cluster_id: "String",
    #       snapshot_status: "String",
    #       snapshot_source: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       topic_arn: "String",
    #       port: 1,
    #       cache_parameter_group_name: "String",
    #       cache_subnet_group_name: "String",
    #       vpc_id: "String",
    #       auto_minor_version_upgrade: false,
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       num_node_groups: 1,
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       node_snapshots: [
    #         {
    #           cache_cluster_id: "String",
    #           node_group_id: "String",
    #           cache_node_id: "String",
    #           node_group_configuration: {
    #             node_group_id: "AllowedNodeGroupId",
    #             slots: "String",
    #             replica_count: 1,
    #             primary_availability_zone: "String",
    #             replica_availability_zones: ["String"],
    #             primary_outpost_arn: "String",
    #             replica_outpost_arns: ["String"]
    #           },
    #           cache_size: "String",
    #           cache_node_create_time: Time.now,
    #           snapshot_create_time: Time.now
    #         }
    #       ],
    #       kms_key_id: "String",
    #       arn: "String",
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"]
    #     }
    #   }
    # @return [Types::DeleteSnapshotResult]
    def delete_snapshot(params = {}, options = {})
      request = build_request(:delete_snapshot, params)
      request.send_request(options)
    end

    # <p>For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards: Deletes a user. The user will be removed from
    #             all user groups and in turn removed from all replication groups. For more information,
    #             see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>. </p>
    # @param [Hash, Types::DeleteUserMessage] params
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "String",
    #     user_name: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     minimum_engine_version: "String",
    #     access_string: "String",
    #     user_group_ids: ["UserGroupId"],
    #     authentication: {
    #       type: "password" # One of: ["password", "no-password", "iam"],
    #       password_count: 1
    #     },
    #     arn: "String"
    #   }
    # @return [Types::DeleteUserOutput]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards: Deletes a user group. The user group must first
    #             be disassociated from the replication group before it can be deleted. For more
    #             information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html">Using Role Based Access Control (RBAC)</a>. </p>
    # @param [Hash, Types::DeleteUserGroupMessage] params
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_group_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_user_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_group_id: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     user_ids: ["UserId"],
    #     minimum_engine_version: "String",
    #     pending_changes: {
    #       user_ids_to_remove: ["UserId"],
    #       user_ids_to_add: ["UserId"]
    #     },
    #     replication_groups: ["String"],
    #     serverless_caches: ["String"],
    #     arn: "String"
    #   }
    # @return [Types::DeleteUserGroupOutput]
    def delete_user_group(params = {}, options = {})
      request = build_request(:delete_user_group, params)
      request.send_request(options)
    end

    # <p>Returns information about all provisioned clusters if no cluster identifier is
    #             specified, or about a specific cache cluster if a cluster identifier is supplied.</p>
    #          <p>By default, abbreviated information about the clusters is returned. You can use the
    #             optional <i>ShowCacheNodeInfo</i> flag to retrieve detailed information
    #             about the cache nodes associated with the clusters. These details include the DNS
    #             address and port for the cache node endpoint.</p>
    #          <p>If the cluster is in the <i>creating</i> state, only cluster-level
    #             information is displayed until all of the nodes are successfully provisioned.</p>
    #          <p>If the cluster is in the <i>deleting</i> state, only cluster-level
    #             information is displayed.</p>
    #          <p>If cache nodes are currently being added to the cluster, node endpoint information and
    #             creation time for the additional nodes are not displayed until they are completely
    #             provisioned. When the cluster state is <i>available</i>, the cluster is
    #             ready for use.</p>
    #          <p>If cache nodes are currently being removed from the cluster, no endpoint information
    #             for the removed nodes is displayed.</p>
    # @param [Hash, Types::DescribeCacheClustersMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The user-supplied cluster identifier. If this parameter is specified, only information
    #               about that specific cluster is returned. This parameter isn't case sensitive.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @option params [Boolean] :show_cache_node_info
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to retrieve information about the individual cache nodes.</p>
    # @option params [Boolean] :show_cache_clusters_not_in_replication_groups
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to show only nodes (API/CLI: clusters) that are not members of a replication group. In
    #               practice, this means Memcached and single node Valkey or Redis OSS clusters.</p>
    # @example DescribeCacheClusters
    #   # Lists the details for the cache cluster my-mem-cluster.
    #   params = {
    #     cache_cluster_id: "my-mem-cluster",
    #     show_cache_node_info: true
    #   }
    #   options = {}
    #   response = client.describe_cache_clusters(params, options)
    #   response.to_h #=>
    #   {
    #     cache_clusters: [
    #       {
    #         engine: "memcached",
    #         cache_nodes: [
    #           {
    #             cache_node_id: "0001",
    #             endpoint: {
    #               port: 11211,
    #               address: "my-mem-cluster.ameaqx.0001.use1.cache.amazonaws.com"
    #             },
    #             cache_node_status: "available",
    #             parameter_group_status: "in-sync",
    #             cache_node_create_time: Time.parse("2016-12-21T21:59:43.794Z"),
    #             customer_availability_zone: "us-east-1b"
    #           },
    #           {
    #             cache_node_id: "0002",
    #             endpoint: {
    #               port: 11211,
    #               address: "my-mem-cluster.ameaqx.0002.use1.cache.amazonaws.com"
    #             },
    #             cache_node_status: "available",
    #             parameter_group_status: "in-sync",
    #             cache_node_create_time: Time.parse("2016-12-21T21:59:43.794Z"),
    #             customer_availability_zone: "us-east-1a"
    #           }
    #         ],
    #         cache_parameter_group: {
    #           cache_node_ids_to_reboot: [
    #           ],
    #           cache_parameter_group_name: "default.memcached1.4",
    #           parameter_apply_status: "in-sync"
    #         },
    #         cache_cluster_id: "my-mem-cluster",
    #         preferred_availability_zone: "Multiple",
    #         configuration_endpoint: {
    #           port: 11211,
    #           address: "my-mem-cluster.ameaqx.cfg.use1.cache.amazonaws.com"
    #         },
    #         cache_security_groups: [
    #         ],
    #         cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"),
    #         auto_minor_version_upgrade: true,
    #         cache_cluster_status: "available",
    #         num_cache_nodes: 2,
    #         client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #         cache_subnet_group_name: "default",
    #         engine_version: "1.4.24",
    #         pending_modified_values: {
    #         },
    #         preferred_maintenance_window: "wed:06:00-wed:07:00",
    #         cache_node_type: "cache.t2.medium"
    #       }
    #     ]
    #   }
    # @example DescribeCacheClusters
    #   # Lists the details for up to 50 cache clusters.
    #   params = {
    #     cache_cluster_id: "my-mem-cluster"
    #   }
    #   options = {}
    #   response = client.describe_cache_clusters(params, options)
    #   response.to_h #=>
    #   {
    #     cache_clusters: [
    #       {
    #         engine: "memcached",
    #         cache_parameter_group: {
    #           cache_node_ids_to_reboot: [
    #           ],
    #           cache_parameter_group_name: "default.memcached1.4",
    #           parameter_apply_status: "in-sync"
    #         },
    #         cache_cluster_id: "my-mem-cluster",
    #         preferred_availability_zone: "Multiple",
    #         configuration_endpoint: {
    #           port: 11211,
    #           address: "my-mem-cluster.abcdef.cfg.use1.cache.amazonaws.com"
    #         },
    #         cache_security_groups: [
    #         ],
    #         cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"),
    #         auto_minor_version_upgrade: true,
    #         cache_cluster_status: "available",
    #         num_cache_nodes: 2,
    #         client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #         cache_subnet_group_name: "default",
    #         engine_version: "1.4.24",
    #         pending_modified_values: {
    #         },
    #         preferred_maintenance_window: "wed:06:00-wed:07:00",
    #         cache_node_type: "cache.t2.medium"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #     show_cache_node_info: false,
    #     show_cache_clusters_not_in_replication_groups: false
    #   }
    #   options = {}
    #   response = client.describe_cache_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cache_clusters: [
    #       {
    #         cache_cluster_id: "String",
    #         configuration_endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         client_download_landing_page: "String",
    #         cache_node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         cache_cluster_status: "String",
    #         num_cache_nodes: 1,
    #         preferred_availability_zone: "String",
    #         preferred_outpost_arn: "String",
    #         cache_cluster_create_time: Time.now,
    #         preferred_maintenance_window: "String",
    #         pending_modified_values: {
    #           num_cache_nodes: 1,
    #           cache_node_ids_to_remove: ["String"],
    #           engine_version: "String",
    #           cache_node_type: "String",
    #           auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #           log_delivery_configurations: [
    #             {
    #               log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #               destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #               destination_details: {
    #                 cloud_watch_logs_details: {
    #                   log_group: "String"
    #                 },
    #                 kinesis_firehose_details: {
    #                   delivery_stream: "String"
    #                 }
    #               },
    #               log_format: "text" # One of: ["text", "json"]
    #             }
    #           ],
    #           transit_encryption_enabled: false,
    #           transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #           scale_config: {
    #             scale_percentage: 1,
    #             scale_interval_minutes: 1
    #           }
    #         },
    #         notification_configuration: {
    #           topic_arn: "String",
    #           topic_status: "String"
    #         },
    #         cache_security_groups: [
    #           {
    #             cache_security_group_name: "String",
    #             status: "String"
    #           }
    #         ],
    #         cache_parameter_group: {
    #           cache_parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cache_node_ids_to_reboot: ["String"]
    #         },
    #         cache_subnet_group_name: "String",
    #         cache_nodes: [
    #           {
    #             cache_node_id: "String",
    #             cache_node_status: "String",
    #             cache_node_create_time: Time.now,
    #             endpoint: {
    #               address: "String",
    #               port: 1
    #             },
    #             parameter_group_status: "String",
    #             source_cache_node_id: "String",
    #             customer_availability_zone: "String",
    #             customer_outpost_arn: "String"
    #           }
    #         ],
    #         auto_minor_version_upgrade: false,
    #         security_groups: [
    #           {
    #             security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         replication_group_id: "String",
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         auth_token_enabled: false,
    #         auth_token_last_modified_date: Time.now,
    #         transit_encryption_enabled: false,
    #         at_rest_encryption_enabled: false,
    #         arn: "String",
    #         replication_group_log_delivery_enabled: false,
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"],
    #             status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #             message: "String"
    #           }
    #         ],
    #         network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #         ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"]
    #       }
    #     ]
    #   }
    # @return [Types::CacheClusterMessage]
    def describe_cache_clusters(params = {}, options = {})
      request = build_request(:describe_cache_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available cache engines and their versions.</p>
    # @param [Hash, Types::DescribeCacheEngineVersionsMessage] params
    # @option params [String] :engine
    #   <p>The cache engine to return. Valid values: <code>memcached</code> |
    #               <code>redis</code>
    #            </p>
    # @option params [String] :engine_version
    #   <p>The cache engine version to return.</p>
    #            <p>Example: <code>1.4.14</code>
    #            </p>
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of a specific cache parameter group family to return details for.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis6.2</code> | <code>redis7</code> | <code>valkey7</code>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @option params [Boolean] :default_only
    #   <p>If <code>true</code>, specifies that only the default version of the specified engine
    #               or engine and major version combination is to be returned.</p>
    # @example DescribeCacheEngineVersions
    #   # Lists the details for up to 25 Memcached and Redis cache engine versions.
    #   params = {}
    #   options = {}
    #   response = client.describe_cache_engine_versions(params, options)
    #   response.to_h #=>
    #   {
    #     cache_engine_versions: [
    #       {
    #         engine: "memcached",
    #         cache_engine_description: "memcached",
    #         cache_engine_version_description: "memcached version 1.4.14",
    #         cache_parameter_group_family: "memcached1.4",
    #         engine_version: "1.4.14"
    #       },
    #       {
    #         engine: "memcached",
    #         cache_engine_description: "memcached",
    #         cache_engine_version_description: "memcached version 1.4.24",
    #         cache_parameter_group_family: "memcached1.4",
    #         engine_version: "1.4.24"
    #       },
    #       {
    #         engine: "memcached",
    #         cache_engine_description: "memcached",
    #         cache_engine_version_description: "memcached version 1.4.33",
    #         cache_parameter_group_family: "memcached1.4",
    #         engine_version: "1.4.33"
    #       },
    #       {
    #         engine: "memcached",
    #         cache_engine_description: "memcached",
    #         cache_engine_version_description: "memcached version 1.4.5",
    #         cache_parameter_group_family: "memcached1.4",
    #         engine_version: "1.4.5"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.6.13",
    #         cache_parameter_group_family: "redis2.6",
    #         engine_version: "2.6.13"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.19",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.19"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.21",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.21"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.22 R5",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.22"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.23 R4",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.23"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.24 R3",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.24"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.6",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.6"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 3.2.4",
    #         cache_parameter_group_family: "redis3.2",
    #         engine_version: "3.2.4"
    #       }
    #     ]
    #   }
    # @example DescribeCacheEngineVersions
    #   # Lists the details for up to 50 Redis cache engine versions.
    #   params = {
    #     engine: "redis",
    #     max_records: 50,
    #     default_only: false
    #   }
    #   options = {}
    #   response = client.describe_cache_engine_versions(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     cache_engine_versions: [
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.6.13",
    #         cache_parameter_group_family: "redis2.6",
    #         engine_version: "2.6.13"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.19",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.19"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.21",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.21"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.22 R5",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.22"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.23 R4",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.23"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.24 R3",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.24"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 2.8.6",
    #         cache_parameter_group_family: "redis2.8",
    #         engine_version: "2.8.6"
    #       },
    #       {
    #         engine: "redis",
    #         cache_engine_description: "Redis",
    #         cache_engine_version_description: "redis version 3.2.4",
    #         cache_parameter_group_family: "redis3.2",
    #         engine_version: "3.2.4"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_family: "String",
    #     max_records: 1,
    #     marker: "String",
    #     default_only: false
    #   }
    #   options = {}
    #   response = client.describe_cache_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cache_engine_versions: [
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         cache_parameter_group_family: "String",
    #         cache_engine_description: "String",
    #         cache_engine_version_description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CacheEngineVersionMessage]
    def describe_cache_engine_versions(params = {}, options = {})
      request = build_request(:describe_cache_engine_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of cache parameter group descriptions. If a cache parameter group name
    #             is specified, the list contains only the descriptions for that group.</p>
    # @param [Hash, Types::DescribeCacheParameterGroupsMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeCacheParameterGroups
    #   # Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
    #   params = {
    #     cache_parameter_group_name: "custom-mem1-4"
    #   }
    #   options = {}
    #   response = client.describe_cache_parameter_groups(params, options)
    #   response.to_h #=>
    #   {
    #     cache_parameter_groups: [
    #       {
    #         cache_parameter_group_name: "custom-mem1-4",
    #         cache_parameter_group_family: "memcached1.4",
    #         description: "Custom memcache param group"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cache_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cache_parameter_groups: [
    #       {
    #         cache_parameter_group_name: "String",
    #         cache_parameter_group_family: "String",
    #         description: "String",
    #         is_global: false,
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CacheParameterGroupsMessage]
    def describe_cache_parameter_groups(params = {}, options = {})
      request = build_request(:describe_cache_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns the detailed parameter list for a particular cache parameter group.</p>
    # @param [Hash, Types::DescribeCacheParametersMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    # @option params [String] :source
    #   <p>The parameter types to return.</p>
    #            <p>Valid values: <code>user</code> | <code>system</code> |
    #               <code>engine-default</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeCacheParameters
    #   # Lists up to 100 user parameter values for the parameter group custom.redis2.8.
    #   params = {
    #     cache_parameter_group_name: "custom-redis2-8",
    #     source: "user",
    #     max_records: 100
    #   }
    #   options = {}
    #   response = client.describe_cache_parameters(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     parameters: [
    #       {
    #         description: "Apply rehashing or not.",
    #         data_type: "string",
    #         change_type: requires-reboot,
    #         is_modifiable: true,
    #         allowed_values: "yes,no",
    #         source: "system",
    #         parameter_value: "yes",
    #         parameter_name: "activerehashing",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "fsync policy for AOF persistence",
    #         data_type: "string",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "always,everysec,no",
    #         source: "system",
    #         parameter_value: "everysec",
    #         parameter_name: "appendfsync",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Enable Redis persistence.",
    #         data_type: "string",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "yes,no",
    #         source: "system",
    #         parameter_value: "no",
    #         parameter_name: "appendonly",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Normal client output buffer hard limit in bytes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "client-output-buffer-limit-normal-hard-limit",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Normal client output buffer soft limit in bytes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "client-output-buffer-limit-normal-soft-limit",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Normal client output buffer soft limit in seconds.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "client-output-buffer-limit-normal-soft-seconds",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Pubsub client output buffer hard limit in bytes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "33554432",
    #         parameter_name: "client-output-buffer-limit-pubsub-hard-limit",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Pubsub client output buffer soft limit in bytes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "8388608",
    #         parameter_name: "client-output-buffer-limit-pubsub-soft-limit",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Pubsub client output buffer soft limit in seconds.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "60",
    #         parameter_name: "client-output-buffer-limit-pubsub-soft-seconds",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Slave client output buffer soft limit in seconds.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: false,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "60",
    #         parameter_name: "client-output-buffer-limit-slave-soft-seconds",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "If enabled, clients who attempt to write to a read-only slave will be disconnected. Applicable to 2.8.23 and higher.",
    #         data_type: "string",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "yes,no",
    #         source: "system",
    #         parameter_value: "yes",
    #         parameter_name: "close-on-slave-write",
    #         minimum_engine_version: "2.8.23"
    #       },
    #       {
    #         description: "Set the number of databases.",
    #         data_type: "integer",
    #         change_type: requires-reboot,
    #         is_modifiable: true,
    #         allowed_values: "1-1200000",
    #         source: "system",
    #         parameter_value: "16",
    #         parameter_name: "databases",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The maximum number of hash entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "512",
    #         parameter_name: "hash-max-ziplist-entries",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The threshold of biggest hash entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "64",
    #         parameter_name: "hash-max-ziplist-value",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The maximum number of list entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "512",
    #         parameter_name: "list-max-ziplist-entries",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The threshold of biggest list entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "64",
    #         parameter_name: "list-max-ziplist-value",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Max execution time of a Lua script in milliseconds. 0 for unlimited execution without warnings.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: false,
    #         allowed_values: "5000",
    #         source: "system",
    #         parameter_value: "5000",
    #         parameter_name: "lua-time-limit",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The maximum number of Redis clients.",
    #         data_type: "integer",
    #         change_type: requires-reboot,
    #         is_modifiable: false,
    #         allowed_values: "1-65000",
    #         source: "system",
    #         parameter_value: "65000",
    #         parameter_name: "maxclients",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Max memory policy.",
    #         data_type: "string",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "volatile-lru,allkeys-lru,volatile-random,allkeys-random,volatile-ttl,noeviction",
    #         source: "system",
    #         parameter_value: "volatile-lru",
    #         parameter_name: "maxmemory-policy",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Max memory samples.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "1-",
    #         source: "system",
    #         parameter_value: "3",
    #         parameter_name: "maxmemory-samples",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Maximum number of seconds within which the master must receive a ping from a slave to take writes. Use this parameter together with min-slaves-to-write to regulate when the master stops accepting writes. Setting this value to 0 means the master always takes writes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "10",
    #         parameter_name: "min-slaves-max-lag",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Number of slaves that must be connected in order for master to take writes. Use this parameter together with min-slaves-max-lag to regulate when the master stops accepting writes. Setting this to 0 means the master always takes writes.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "min-slaves-to-write",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The keyspace events for Redis to notify Pub/Sub clients about. By default all notifications are disabled",
    #         data_type: "string",
    #         change_type: immediate,
    #         source: "system",
    #         is_modifiable: true,
    #         parameter_name: "notify-keyspace-events",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The replication backlog size in bytes for PSYNC. This is the size of the buffer which accumulates slave data when slave is disconnected for some time, so that when slave reconnects again, only transfer the portion of data which the slave missed. Minimum value is 16K.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "16384-",
    #         source: "system",
    #         parameter_value: "1048576",
    #         parameter_name: "repl-backlog-size",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The amount of time in seconds after the master no longer have any slaves connected for the master to free the replication backlog. A value of 0 means to never release the backlog.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "3600",
    #         parameter_name: "repl-backlog-ttl",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The timeout in seconds for bulk transfer I/O during sync and master timeout from the perspective of the slave, and slave timeout from the perspective of the master.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "11-",
    #         source: "system",
    #         parameter_value: "60",
    #         parameter_name: "repl-timeout",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The amount of memory reserved for non-cache memory usage, in bytes. You may want to increase this parameter for nodes with read replicas, AOF enabled, etc, to reduce swap usage.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "reserved-memory",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The limit in the size of the set in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "512",
    #         parameter_name: "set-max-intset-entries",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Configures if chaining of slaves is allowed",
    #         data_type: "string",
    #         change_type: immediate,
    #         is_modifiable: false,
    #         allowed_values: "yes,no",
    #         source: "system",
    #         parameter_value: "no",
    #         parameter_name: "slave-allow-chaining",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The execution time, in microseconds, to exceed in order for the command to get logged. Note that a negative number disables the slow log, while a value of zero forces the logging of every command.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "-",
    #         source: "system",
    #         parameter_value: "10000",
    #         parameter_name: "slowlog-log-slower-than",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The length of the slow log. There is no limit to this length. Just be aware that it will consume memory. You can reclaim memory used by the slow log with SLOWLOG RESET.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "128",
    #         parameter_name: "slowlog-max-len",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "If non-zero, send ACKs every given number of seconds.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "tcp-keepalive",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "Close connection if client is idle for a given number of seconds, or never if 0.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0,20-",
    #         source: "system",
    #         parameter_value: "0",
    #         parameter_name: "timeout",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The maximum number of sorted set entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "128",
    #         parameter_name: "zset-max-ziplist-entries",
    #         minimum_engine_version: "2.8.6"
    #       },
    #       {
    #         description: "The threshold of biggest sorted set entries in order for the dataset to be compressed.",
    #         data_type: "integer",
    #         change_type: immediate,
    #         is_modifiable: true,
    #         allowed_values: "0-",
    #         source: "system",
    #         parameter_value: "64",
    #         parameter_name: "zset-max-ziplist-value",
    #         minimum_engine_version: "2.8.6"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String", # required
    #     source: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cache_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         change_type: "immediate" # One of: ["immediate", "requires-reboot"]
    #       }
    #     ],
    #     cache_node_type_specific_parameters: [
    #       {
    #         parameter_name: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         cache_node_type_specific_values: [
    #           {
    #             cache_node_type: "String",
    #             value: "String"
    #           }
    #         ],
    #         change_type: "immediate" # One of: ["immediate", "requires-reboot"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCacheParametersOutput]
    def describe_cache_parameters(params = {}, options = {})
      request = build_request(:describe_cache_parameters, params)
      request.send_request(options)
    end

    # <p>Returns a list of cache security group descriptions. If a cache security group name is
    #             specified, the list contains only the description of that group. This applicable only
    #             when you have ElastiCache in Classic setup </p>
    # @param [Hash, Types::DescribeCacheSecurityGroupsMessage] params
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to return details for.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeCacheSecurityGroups
    #   # Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.
    #   params = {
    #     cache_security_group_name: "my-sec-group"
    #   }
    #   options = {}
    #   response = client.describe_cache_security_groups(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_security_group_name: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cache_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cache_security_groups: [
    #       {
    #         owner_id: "String",
    #         cache_security_group_name: "String",
    #         description: "String",
    #         ec2_security_groups: [
    #           {
    #             status: "String",
    #             ec2_security_group_name: "String",
    #             ec2_security_group_owner_id: "String"
    #           }
    #         ],
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CacheSecurityGroupMessage]
    def describe_cache_security_groups(params = {}, options = {})
      request = build_request(:describe_cache_security_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of cache subnet group descriptions. If a subnet group name is
    #             specified, the list contains only the description of that group. This is applicable only
    #             when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by
    #             default. </p>
    # @param [Hash, Types::DescribeCacheSubnetGroupsMessage] params
    # @option params [String] :cache_subnet_group_name
    #   <p>The name of the cache subnet group to return details for.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeCacheSubnetGroups
    #   # Describes up to 25 cache subnet groups.
    #   params = {
    #     max_records: 25
    #   }
    #   options = {}
    #   response = client.describe_cache_subnet_groups(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     cache_subnet_groups: [
    #       {
    #         vpc_id: "vpc-91280df6",
    #         cache_subnet_group_description: "Default CacheSubnetGroup",
    #         subnets: [
    #           {
    #             subnet_identifier: "subnet-1a2b3c4d",
    #             subnet_availability_zone: {
    #               name: "us-east-1a"
    #             }
    #           },
    #           {
    #             subnet_identifier: "subnet-a1b2c3d4",
    #             subnet_availability_zone: {
    #               name: "us-east-1c"
    #             }
    #           },
    #           {
    #             subnet_identifier: "subnet-abcd1234",
    #             subnet_availability_zone: {
    #               name: "us-east-1e"
    #             }
    #           },
    #           {
    #             subnet_identifier: "subnet-1234abcd",
    #             subnet_availability_zone: {
    #               name: "us-east-1b"
    #             }
    #           }
    #         ],
    #         cache_subnet_group_name: "default"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_subnet_group_name: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cache_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cache_subnet_groups: [
    #       {
    #         cache_subnet_group_name: "String",
    #         cache_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_outpost: {
    #               subnet_outpost_arn: "String"
    #             },
    #             supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #           }
    #         ],
    #         arn: "String",
    #         supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #       }
    #     ]
    #   }
    # @return [Types::CacheSubnetGroupMessage]
    def describe_cache_subnet_groups(params = {}, options = {})
      request = build_request(:describe_cache_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Returns the default engine and system parameter information for the specified cache
    #             engine.</p>
    # @param [Hash, Types::DescribeEngineDefaultParametersMessage] params
    # @option params [String] :cache_parameter_group_family
    #   <p>The name of the cache parameter group family.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis6.2</code> | <code>redis7</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeEngineDefaultParameters
    #   # Returns the default engine and system parameter information for the specified cache engine.
    #   params = {
    #     cache_parameter_group_family: "redis2.8",
    #     max_records: 25
    #   }
    #   options = {}
    #   response = client.describe_engine_default_parameters(params, options)
    #   response.to_h #=>
    #   {
    #     engine_defaults: {
    #       marker: "bWluLXNsYXZlcy10by13cml0ZQ==",
    #       cache_parameter_group_family: "redis2.8",
    #       parameters: [
    #         {
    #           description: "Apply rehashing or not.",
    #           data_type: "string",
    #           change_type: requires-reboot,
    #           is_modifiable: true,
    #           allowed_values: "yes,no",
    #           source: "system",
    #           parameter_value: "yes",
    #           parameter_name: "activerehashing",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "fsync policy for AOF persistence",
    #           data_type: "string",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "always,everysec,no",
    #           source: "system",
    #           parameter_value: "everysec",
    #           parameter_name: "appendfsync",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Enable Redis persistence.",
    #           data_type: "string",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "yes,no",
    #           source: "system",
    #           parameter_value: "no",
    #           parameter_name: "appendonly",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Normal client output buffer hard limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "0",
    #           parameter_name: "client-output-buffer-limit-normal-hard-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Normal client output buffer soft limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "0",
    #           parameter_name: "client-output-buffer-limit-normal-soft-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Normal client output buffer soft limit in seconds.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "0",
    #           parameter_name: "client-output-buffer-limit-normal-soft-seconds",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Pubsub client output buffer hard limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "33554432",
    #           parameter_name: "client-output-buffer-limit-pubsub-hard-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Pubsub client output buffer soft limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "8388608",
    #           parameter_name: "client-output-buffer-limit-pubsub-soft-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Pubsub client output buffer soft limit in seconds.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "60",
    #           parameter_name: "client-output-buffer-limit-pubsub-soft-seconds",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Slave client output buffer soft limit in seconds.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: false,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "60",
    #           parameter_name: "client-output-buffer-limit-slave-soft-seconds",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "If enabled, clients who attempt to write to a read-only slave will be disconnected. Applicable to 2.8.23 and higher.",
    #           data_type: "string",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "yes,no",
    #           source: "system",
    #           parameter_value: "yes",
    #           parameter_name: "close-on-slave-write",
    #           minimum_engine_version: "2.8.23"
    #         },
    #         {
    #           description: "Set the number of databases.",
    #           data_type: "integer",
    #           change_type: requires-reboot,
    #           is_modifiable: true,
    #           allowed_values: "1-1200000",
    #           source: "system",
    #           parameter_value: "16",
    #           parameter_name: "databases",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The maximum number of hash entries in order for the dataset to be compressed.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "512",
    #           parameter_name: "hash-max-ziplist-entries",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The threshold of biggest hash entries in order for the dataset to be compressed.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "64",
    #           parameter_name: "hash-max-ziplist-value",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The maximum number of list entries in order for the dataset to be compressed.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "512",
    #           parameter_name: "list-max-ziplist-entries",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The threshold of biggest list entries in order for the dataset to be compressed.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "64",
    #           parameter_name: "list-max-ziplist-value",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Max execution time of a Lua script in milliseconds. 0 for unlimited execution without warnings.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: false,
    #           allowed_values: "5000",
    #           source: "system",
    #           parameter_value: "5000",
    #           parameter_name: "lua-time-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The maximum number of Redis clients.",
    #           data_type: "integer",
    #           change_type: requires-reboot,
    #           is_modifiable: false,
    #           allowed_values: "1-65000",
    #           source: "system",
    #           parameter_value: "65000",
    #           parameter_name: "maxclients",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Max memory policy.",
    #           data_type: "string",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "volatile-lru,allkeys-lru,volatile-random,allkeys-random,volatile-ttl,noeviction",
    #           source: "system",
    #           parameter_value: "volatile-lru",
    #           parameter_name: "maxmemory-policy",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Max memory samples.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "1-",
    #           source: "system",
    #           parameter_value: "3",
    #           parameter_name: "maxmemory-samples",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Maximum number of seconds within which the master must receive a ping from a slave to take writes. Use this parameter together with min-slaves-to-write to regulate when the master stops accepting writes. Setting this value to 0 means the master always takes writes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "10",
    #           parameter_name: "min-slaves-max-lag",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Number of slaves that must be connected in order for master to take writes. Use this parameter together with min-slaves-max-lag to regulate when the master stops accepting writes. Setting this to 0 means the master always takes writes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           is_modifiable: true,
    #           allowed_values: "0-",
    #           source: "system",
    #           parameter_value: "0",
    #           parameter_name: "min-slaves-to-write",
    #           minimum_engine_version: "2.8.6"
    #         }
    #       ],
    #       cache_node_type_specific_parameters: [
    #         {
    #           description: "Slave client output buffer hard limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           allowed_values: "0-",
    #           source: "system",
    #           is_modifiable: false,
    #           cache_node_type_specific_values: [
    #             {
    #               value: "650117120",
    #               cache_node_type: "cache.c1.xlarge"
    #             },
    #             {
    #               value: "702545920",
    #               cache_node_type: "cache.m1.large"
    #             },
    #             {
    #               value: "309329920",
    #               cache_node_type: "cache.m1.medium"
    #             },
    #             {
    #               value: "94371840",
    #               cache_node_type: "cache.m1.small"
    #             },
    #             {
    #               value: "1488977920",
    #               cache_node_type: "cache.m1.xlarge"
    #             },
    #             {
    #               value: "3502243840",
    #               cache_node_type: "cache.m2.2xlarge"
    #             },
    #             {
    #               value: "7088373760",
    #               cache_node_type: "cache.m2.4xlarge"
    #             },
    #             {
    #               value: "1709178880",
    #               cache_node_type: "cache.m2.xlarge"
    #             },
    #             {
    #               value: "2998927360",
    #               cache_node_type: "cache.m3.2xlarge"
    #             },
    #             {
    #               value: "650117120",
    #               cache_node_type: "cache.m3.large"
    #             },
    #             {
    #               value: "309329920",
    #               cache_node_type: "cache.m3.medium"
    #             },
    #             {
    #               value: "1426063360",
    #               cache_node_type: "cache.m3.xlarge"
    #             },
    #             {
    #               value: "16604761424",
    #               cache_node_type: "cache.m4.10xlarge"
    #             },
    #             {
    #               value: "3188912636",
    #               cache_node_type: "cache.m4.2xlarge"
    #             },
    #             {
    #               value: "6525729063",
    #               cache_node_type: "cache.m4.4xlarge"
    #             },
    #             {
    #               value: "689259315",
    #               cache_node_type: "cache.m4.large"
    #             },
    #             {
    #               value: "1532850176",
    #               cache_node_type: "cache.m4.xlarge"
    #             },
    #             {
    #               value: "6081740800",
    #               cache_node_type: "cache.r3.2xlarge"
    #             },
    #             {
    #               value: "12268339200",
    #               cache_node_type: "cache.r3.4xlarge"
    #             },
    #             {
    #               value: "24536678400",
    #               cache_node_type: "cache.r3.8xlarge"
    #             },
    #             {
    #               value: "1468006400",
    #               cache_node_type: "cache.r3.large"
    #             },
    #             {
    #               value: "3040870400",
    #               cache_node_type: "cache.r3.xlarge"
    #             },
    #             {
    #               value: "14260633",
    #               cache_node_type: "cache.t1.micro"
    #             },
    #             {
    #               value: "346134937",
    #               cache_node_type: "cache.t2.medium"
    #             },
    #             {
    #               value: "58195968",
    #               cache_node_type: "cache.t2.micro"
    #             },
    #             {
    #               value: "166513868",
    #               cache_node_type: "cache.t2.small"
    #             }
    #           ],
    #           parameter_name: "client-output-buffer-limit-slave-hard-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "Slave client output buffer soft limit in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           allowed_values: "0-",
    #           source: "system",
    #           is_modifiable: false,
    #           cache_node_type_specific_values: [
    #             {
    #               value: "650117120",
    #               cache_node_type: "cache.c1.xlarge"
    #             },
    #             {
    #               value: "702545920",
    #               cache_node_type: "cache.m1.large"
    #             },
    #             {
    #               value: "309329920",
    #               cache_node_type: "cache.m1.medium"
    #             },
    #             {
    #               value: "94371840",
    #               cache_node_type: "cache.m1.small"
    #             },
    #             {
    #               value: "1488977920",
    #               cache_node_type: "cache.m1.xlarge"
    #             },
    #             {
    #               value: "3502243840",
    #               cache_node_type: "cache.m2.2xlarge"
    #             },
    #             {
    #               value: "7088373760",
    #               cache_node_type: "cache.m2.4xlarge"
    #             },
    #             {
    #               value: "1709178880",
    #               cache_node_type: "cache.m2.xlarge"
    #             },
    #             {
    #               value: "2998927360",
    #               cache_node_type: "cache.m3.2xlarge"
    #             },
    #             {
    #               value: "650117120",
    #               cache_node_type: "cache.m3.large"
    #             },
    #             {
    #               value: "309329920",
    #               cache_node_type: "cache.m3.medium"
    #             },
    #             {
    #               value: "1426063360",
    #               cache_node_type: "cache.m3.xlarge"
    #             },
    #             {
    #               value: "16604761424",
    #               cache_node_type: "cache.m4.10xlarge"
    #             },
    #             {
    #               value: "3188912636",
    #               cache_node_type: "cache.m4.2xlarge"
    #             },
    #             {
    #               value: "6525729063",
    #               cache_node_type: "cache.m4.4xlarge"
    #             },
    #             {
    #               value: "689259315",
    #               cache_node_type: "cache.m4.large"
    #             },
    #             {
    #               value: "1532850176",
    #               cache_node_type: "cache.m4.xlarge"
    #             },
    #             {
    #               value: "6081740800",
    #               cache_node_type: "cache.r3.2xlarge"
    #             },
    #             {
    #               value: "12268339200",
    #               cache_node_type: "cache.r3.4xlarge"
    #             },
    #             {
    #               value: "24536678400",
    #               cache_node_type: "cache.r3.8xlarge"
    #             },
    #             {
    #               value: "1468006400",
    #               cache_node_type: "cache.r3.large"
    #             },
    #             {
    #               value: "3040870400",
    #               cache_node_type: "cache.r3.xlarge"
    #             },
    #             {
    #               value: "14260633",
    #               cache_node_type: "cache.t1.micro"
    #             },
    #             {
    #               value: "346134937",
    #               cache_node_type: "cache.t2.medium"
    #             },
    #             {
    #               value: "58195968",
    #               cache_node_type: "cache.t2.micro"
    #             },
    #             {
    #               value: "166513868",
    #               cache_node_type: "cache.t2.small"
    #             }
    #           ],
    #           parameter_name: "client-output-buffer-limit-slave-soft-limit",
    #           minimum_engine_version: "2.8.6"
    #         },
    #         {
    #           description: "The maximum configurable amount of memory to use to store items, in bytes.",
    #           data_type: "integer",
    #           change_type: immediate,
    #           allowed_values: "0-",
    #           source: "system",
    #           is_modifiable: false,
    #           cache_node_type_specific_values: [
    #             {
    #               value: "6501171200",
    #               cache_node_type: "cache.c1.xlarge"
    #             },
    #             {
    #               value: "7025459200",
    #               cache_node_type: "cache.m1.large"
    #             },
    #             {
    #               value: "3093299200",
    #               cache_node_type: "cache.m1.medium"
    #             },
    #             {
    #               value: "943718400",
    #               cache_node_type: "cache.m1.small"
    #             },
    #             {
    #               value: "14889779200",
    #               cache_node_type: "cache.m1.xlarge"
    #             },
    #             {
    #               value: "35022438400",
    #               cache_node_type: "cache.m2.2xlarge"
    #             },
    #             {
    #               value: "70883737600",
    #               cache_node_type: "cache.m2.4xlarge"
    #             },
    #             {
    #               value: "17091788800",
    #               cache_node_type: "cache.m2.xlarge"
    #             },
    #             {
    #               value: "29989273600",
    #               cache_node_type: "cache.m3.2xlarge"
    #             },
    #             {
    #               value: "6501171200",
    #               cache_node_type: "cache.m3.large"
    #             },
    #             {
    #               value: "2988441600",
    #               cache_node_type: "cache.m3.medium"
    #             },
    #             {
    #               value: "14260633600",
    #               cache_node_type: "cache.m3.xlarge"
    #             },
    #             {
    #               value: "166047614239",
    #               cache_node_type: "cache.m4.10xlarge"
    #             },
    #             {
    #               value: "31889126359",
    #               cache_node_type: "cache.m4.2xlarge"
    #             },
    #             {
    #               value: "65257290629",
    #               cache_node_type: "cache.m4.4xlarge"
    #             },
    #             {
    #               value: "6892593152",
    #               cache_node_type: "cache.m4.large"
    #             },
    #             {
    #               value: "15328501760",
    #               cache_node_type: "cache.m4.xlarge"
    #             },
    #             {
    #               value: "62495129600",
    #               cache_node_type: "cache.r3.2xlarge"
    #             },
    #             {
    #               value: "126458265600",
    #               cache_node_type: "cache.r3.4xlarge"
    #             },
    #             {
    #               value: "254384537600",
    #               cache_node_type: "cache.r3.8xlarge"
    #             },
    #             {
    #               value: "14470348800",
    #               cache_node_type: "cache.r3.large"
    #             },
    #             {
    #               value: "30513561600",
    #               cache_node_type: "cache.r3.xlarge"
    #             },
    #             {
    #               value: "142606336",
    #               cache_node_type: "cache.t1.micro"
    #             },
    #             {
    #               value: "3461349376",
    #               cache_node_type: "cache.t2.medium"
    #             },
    #             {
    #               value: "581959680",
    #               cache_node_type: "cache.t2.micro"
    #             },
    #             {
    #               value: "1665138688",
    #               cache_node_type: "cache.t2.small"
    #             }
    #           ],
    #           parameter_name: "maxmemory",
    #           minimum_engine_version: "2.8.6"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_family: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_engine_default_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_defaults: {
    #       cache_parameter_group_family: "String",
    #       marker: "String",
    #       parameters: [
    #         {
    #           parameter_name: "String",
    #           parameter_value: "String",
    #           description: "String",
    #           source: "String",
    #           data_type: "String",
    #           allowed_values: "String",
    #           is_modifiable: false,
    #           minimum_engine_version: "String",
    #           change_type: "immediate" # One of: ["immediate", "requires-reboot"]
    #         }
    #       ],
    #       cache_node_type_specific_parameters: [
    #         {
    #           parameter_name: "String",
    #           description: "String",
    #           source: "String",
    #           data_type: "String",
    #           allowed_values: "String",
    #           is_modifiable: false,
    #           minimum_engine_version: "String",
    #           cache_node_type_specific_values: [
    #             {
    #               cache_node_type: "String",
    #               value: "String"
    #             }
    #           ],
    #           change_type: "immediate" # One of: ["immediate", "requires-reboot"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeEngineDefaultParametersResult]
    def describe_engine_default_parameters(params = {}, options = {})
      request = build_request(:describe_engine_default_parameters, params)
      request.send_request(options)
    end

    # <p>Returns events related to clusters, cache security groups, and cache parameter groups.
    #             You can obtain events specific to a particular cluster, cache security group, or cache
    #             parameter group by providing the name as a parameter.</p>
    #          <p>By default, only the events occurring within the last hour are returned; however, you
    #             can retrieve up to 14 days' worth of events if necessary.</p>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified,
    #               all sources are included in the response.</p>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format.</p>
    #            <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format.</p>
    #            <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    # @option params [Integer] :duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeEvents
    #   # Describes all the cache-cluster events for the past 120 minutes.
    #   params = {
    #     source_type: cache-cluster,
    #     duration: 360
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     events: [
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.088Z"),
    #         message: "Added cache node 0001 in availability zone us-east-1e",
    #         source_identifier: "redis-cluster",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.078Z"),
    #         message: "Cache cluster created",
    #         source_identifier: "redis-cluster",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.326Z"),
    #         message: "Added cache node 0002 in availability zone us-east-1c",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.323Z"),
    #         message: "Added cache node 0001 in availability zone us-east-1e",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.314Z"),
    #         message: "Cache cluster created",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       }
    #     ]
    #   }
    # @example DescribeEvents
    #   # Describes all the replication-group events from 3:00P to 5:00P on November 11, 2016.
    #   params = {
    #     start_time: Time.parse("2016-12-22T15:00:00.000Z")
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     events: [
    #       {
    #         date: Time.parse("2016-12-22T21:35:46.674Z"),
    #         message: "Snapshot succeeded for snapshot with ID 'cr-bkup' of replication group with ID 'clustered-redis'",
    #         source_identifier: "clustered-redis-0001-001",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.088Z"),
    #         message: "Added cache node 0001 in availability zone us-east-1e",
    #         source_identifier: "redis-cluster",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.078Z"),
    #         message: "Cache cluster created",
    #         source_identifier: "redis-cluster",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.326Z"),
    #         message: "Added cache node 0002 in availability zone us-east-1c",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.323Z"),
    #         message: "Added cache node 0001 in availability zone us-east-1e",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       },
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.314Z"),
    #         message: "Cache cluster created",
    #         source_identifier: "my-memcached2",
    #         source_type: cache-cluster
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_identifier: "String",
    #     source_type: "cache-cluster" # One of: ["cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group", "serverless-cache", "serverless-cache-snapshot", "user", "user-group"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     events: [
    #       {
    #         source_identifier: "String",
    #         source_type: "cache-cluster" # One of: ["cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group", "serverless-cache", "serverless-cache-snapshot", "user", "user-group"],
    #         message: "String",
    #         date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::EventsMessage]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns information about a particular global replication group. If no identifier is
    #             specified, returns information about all Global datastores. </p>
    # @param [Hash, Types::DescribeGlobalReplicationGroupsMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
    # @option params [Boolean] :show_member_info
    #   <p>Returns the list of members that comprise the Global datastore.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #     show_member_info: false
    #   }
    #   options = {}
    #   response = client.describe_global_replication_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     global_replication_groups: [
    #       {
    #         global_replication_group_id: "String",
    #         global_replication_group_description: "String",
    #         status: "String",
    #         cache_node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         members: [
    #           {
    #             replication_group_id: "String",
    #             replication_group_region: "String",
    #             role: "String",
    #             automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #             status: "String"
    #           }
    #         ],
    #         cluster_enabled: false,
    #         global_node_groups: [
    #           {
    #             global_node_group_id: "String",
    #             slots: "String"
    #           }
    #         ],
    #         auth_token_enabled: false,
    #         transit_encryption_enabled: false,
    #         at_rest_encryption_enabled: false,
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeGlobalReplicationGroupsResult]
    def describe_global_replication_groups(params = {}, options = {})
      request = build_request(:describe_global_replication_groups, params)
      request.send_request(options)
    end

    # <p>Returns information about a particular replication group. If no identifier is
    #             specified, <code>DescribeReplicationGroups</code> returns information about all
    #             replication groups.</p>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::DescribeReplicationGroupsMessage] params
    # @option params [String] :replication_group_id
    #   <p>The identifier for the replication group to be described. This parameter is not case
    #               sensitive.</p>
    #            <p>If you do not specify this parameter, information about all replication groups is
    #               returned.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeReplicationGroups
    #   # Returns information about the replication group myreplgroup.
    #   params = {}
    #   options = {}
    #   response = client.describe_replication_groups(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     replication_groups: [
    #       {
    #         status: "available",
    #         description: "Test cluster",
    #         node_groups: [
    #           {
    #             status: "available",
    #             node_group_id: "0001",
    #             node_group_members: [
    #               {
    #                 preferred_availability_zone: "us-east-1e",
    #                 cache_node_id: "0001",
    #                 cache_cluster_id: "clustered-redis-0001-001"
    #               },
    #               {
    #                 preferred_availability_zone: "us-east-1c",
    #                 cache_node_id: "0001",
    #                 cache_cluster_id: "clustered-redis-0001-002"
    #               }
    #             ]
    #           },
    #           {
    #             status: "available",
    #             node_group_id: "0002",
    #             node_group_members: [
    #               {
    #                 preferred_availability_zone: "us-east-1c",
    #                 cache_node_id: "0001",
    #                 cache_cluster_id: "clustered-redis-0002-001"
    #               },
    #               {
    #                 preferred_availability_zone: "us-east-1b",
    #                 cache_node_id: "0001",
    #                 cache_cluster_id: "clustered-redis-0002-002"
    #               }
    #             ]
    #           }
    #         ],
    #         replication_group_id: "clustered-redis",
    #         automatic_failover: enabled,
    #         member_clusters: [
    #           "clustered-redis-0001-001",
    #           "clustered-redis-0001-002",
    #           "clustered-redis-0002-001",
    #           "clustered-redis-0002-002"
    #         ],
    #         pending_modified_values: {
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_groups: [
    #       {
    #         replication_group_id: "String",
    #         description: "String",
    #         global_replication_group_info: {
    #           global_replication_group_id: "String",
    #           global_replication_group_member_role: "String"
    #         },
    #         status: "String",
    #         pending_modified_values: {
    #           primary_cluster_id: "String",
    #           automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #           resharding: {
    #             slot_migration: {
    #               progress_percentage: 1.0
    #             }
    #           },
    #           auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #           user_groups: {
    #             user_group_ids_to_add: ["UserGroupId"],
    #             user_group_ids_to_remove: ["UserGroupId"]
    #           },
    #           log_delivery_configurations: [
    #             {
    #               log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #               destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #               destination_details: {
    #                 cloud_watch_logs_details: {
    #                   log_group: "String"
    #                 },
    #                 kinesis_firehose_details: {
    #                   delivery_stream: "String"
    #                 }
    #               },
    #               log_format: "text" # One of: ["text", "json"]
    #             }
    #           ],
    #           transit_encryption_enabled: false,
    #           transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #           cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #         },
    #         member_clusters: ["String"],
    #         node_groups: [
    #           {
    #             node_group_id: "String",
    #             status: "String",
    #             primary_endpoint: {
    #               address: "String",
    #               port: 1
    #             },
    #             reader_endpoint: {
    #               address: "String",
    #               port: 1
    #             },
    #             slots: "String",
    #             node_group_members: [
    #               {
    #                 cache_cluster_id: "String",
    #                 cache_node_id: "String",
    #                 read_endpoint: {
    #                   address: "String",
    #                   port: 1
    #                 },
    #                 preferred_availability_zone: "String",
    #                 preferred_outpost_arn: "String",
    #                 current_role: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         snapshotting_cluster_id: "String",
    #         automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #         multi_az: "enabled" # One of: ["enabled", "disabled"],
    #         configuration_endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         cluster_enabled: false,
    #         cache_node_type: "String",
    #         auth_token_enabled: false,
    #         auth_token_last_modified_date: Time.now,
    #         transit_encryption_enabled: false,
    #         at_rest_encryption_enabled: false,
    #         member_clusters_outpost_arns: ["String"],
    #         kms_key_id: "String",
    #         arn: "String",
    #         user_group_ids: ["UserGroupId"],
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"],
    #             status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #             message: "String"
    #           }
    #         ],
    #         replication_group_create_time: Time.now,
    #         data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #         auto_minor_version_upgrade: false,
    #         network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #         ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #         engine: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ReplicationGroupMessage]
    def describe_replication_groups(params = {}, options = {})
      request = build_request(:describe_replication_groups, params)
      request.send_request(options)
    end

    # <p>Returns information about reserved cache nodes for this account, or about a specified
    #             reserved cache node.</p>
    # @param [Hash, Types::DescribeReservedCacheNodesMessage] params
    # @option params [String] :reserved_cache_node_id
    #   <p>The reserved cache node identifier filter value. Use this parameter to show only the
    #               reservation that matches the specified reservation ID.</p>
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only purchased
    #               reservations matching the specified offering identifier.</p>
    # @option params [String] :cache_node_type
    #   <p>The cache node type filter value. Use this parameter to show only those reservations
    #               matching the specified cache node type.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    # @option params [String] :duration
    #   <p>The duration filter value, specified in years or seconds. Use this parameter to show
    #               only reservations for this duration.</p>
    #            <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    # @option params [String] :product_description
    #   <p>The product description filter value. Use this parameter to show only those
    #               reservations matching the specified product description.</p>
    # @option params [String] :offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available
    #               offerings matching the specified offering type.</p>
    #            <p>Valid values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"|"All
    #                   Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeReservedCacheNodes
    #   # Returns information about reserved cache nodes for this account, or about a specified reserved cache node. If the account has no reserved cache nodes, the operation returns an empty list, as shown here.
    #   params = {
    #     max_records: 25
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_cache_node_id: "String",
    #     reserved_cache_nodes_offering_id: "String",
    #     cache_node_type: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_cache_nodes: [
    #       {
    #         reserved_cache_node_id: "String",
    #         reserved_cache_nodes_offering_id: "String",
    #         cache_node_type: "String",
    #         start_time: Time.now,
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         cache_node_count: 1,
    #         product_description: "String",
    #         offering_type: "String",
    #         state: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ],
    #         reservation_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ReservedCacheNodeMessage]
    def describe_reserved_cache_nodes(params = {}, options = {})
      request = build_request(:describe_reserved_cache_nodes, params)
      request.send_request(options)
    end

    # <p>Lists available reserved cache node offerings.</p>
    # @param [Hash, Types::DescribeReservedCacheNodesOfferingsMessage] params
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available
    #               offering that matches the specified reservation identifier.</p>
    #            <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    # @option params [String] :cache_node_type
    #   <p>The cache node type filter value. Use this parameter to show only the available
    #               offerings matching the specified cache node type.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    # @option params [String] :duration
    #   <p>Duration filter value, specified in years or seconds. Use this parameter to show only
    #               reservations for a given duration.</p>
    #            <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    # @option params [String] :product_description
    #   <p>The product description filter value. Use this parameter to show only the available
    #               offerings matching the specified product description.</p>
    # @option params [String] :offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available
    #               offerings matching the specified offering type.</p>
    #            <p>Valid Values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization" |"All
    #                   Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example DescribeReseredCacheNodeOfferings
    #   # Lists available reserved cache node offerings for cache.r3.large nodes with a 3 year commitment.
    #   params = {
    #     reserved_cache_nodes_offering_id: "",
    #     cache_node_type: "cache.r3.large",
    #     duration: "3",
    #     offering_type: "Light Utilization",
    #     max_records: 25
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes_offerings(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     reserved_cache_nodes_offerings: [
    #     ]
    #   }
    # @example DescribeReseredCacheNodeOfferings
    #   # Lists available reserved cache node offerings.
    #   params = {
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes_offerings(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "1ef01f5b-433f-94ff-a530-61a56bfc8e7a",
    #     reserved_cache_nodes_offerings: [
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 157.0,
    #         reserved_cache_nodes_offering_id: "0167633d-37f6-4222-b872-b1f22eb79ba4",
    #         usage_price: 0.017,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.m1.small"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 1248.0,
    #         reserved_cache_nodes_offering_id: "02c04e13-baca-4e71-9ceb-620eed94827d",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.077,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.m4.xlarge"
    #       },
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 2381.0,
    #         reserved_cache_nodes_offering_id: "02e1755e-76e8-48e3-8d82-820a5726a458",
    #         usage_price: 0.276,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.m2.4xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 188.0,
    #         reserved_cache_nodes_offering_id: "03315215-7b87-421a-a3dd-785021e4113f",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.013,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.m1.small"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 6158.0,
    #         reserved_cache_nodes_offering_id: "05ffbb44-2ace-4476-a2a5-8ec99f866fb3",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.125,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 31536000,
    #         cache_node_type: "cache.m4.10xlarge"
    #       },
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 101.0,
    #         reserved_cache_nodes_offering_id: "065c71ae-4a4e-4f1e-bebf-37525f4c6cb2",
    #         usage_price: 0.023,
    #         recurring_charges: [
    #         ],
    #         product_description: "redis",
    #         duration: 31536000,
    #         cache_node_type: "cache.m1.small"
    #       },
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 314.0,
    #         reserved_cache_nodes_offering_id: "06774b12-7f5e-48c1-907a-f286c63f327d",
    #         usage_price: 0.034,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.m1.medium"
    #       },
    #       {
    #         offering_type: "Light Utilization",
    #         fixed_price: 163.0,
    #         reserved_cache_nodes_offering_id: "0924ac6b-847f-4761-ba6b-4290b2adf719",
    #         usage_price: 0.137,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 31536000,
    #         cache_node_type: "cache.m2.xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 719.0,
    #         reserved_cache_nodes_offering_id: "09eeb126-69b6-4d3f-8f94-ca3510629f53",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.049,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.m2.xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 4132.0,
    #         reserved_cache_nodes_offering_id: "0a516ad8-557f-4310-9dd0-2448c2ff4d62",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.182,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.r3.2xlarge"
    #       },
    #       {
    #         offering_type: "Light Utilization",
    #         fixed_price: 875.0,
    #         reserved_cache_nodes_offering_id: "0b0c1cc5-2177-4150-95d7-c67ec34dcb19",
    #         usage_price: 0.363,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.c1.xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 12483.0,
    #         reserved_cache_nodes_offering_id: "0c2b139b-1cff-43d0-8fba-0c753f9b1950",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.76,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.m4.10xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 1620.0,
    #         reserved_cache_nodes_offering_id: "0c52115b-38cb-47a2-8dbc-e02e40b6a13f",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.207,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "memcached",
    #         duration: 31536000,
    #         cache_node_type: "cache.c1.xlarge"
    #       },
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 2381.0,
    #         reserved_cache_nodes_offering_id: "12fcb19c-5416-4e1d-934f-28f1e2cb8599",
    #         usage_price: 0.276,
    #         recurring_charges: [
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.m2.4xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 616.0,
    #         reserved_cache_nodes_offering_id: "13af20ad-914d-4d8b-9763-fa2e565f3549",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.112,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "memcached",
    #         duration: 31536000,
    #         cache_node_type: "cache.m4.xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 16528.0,
    #         reserved_cache_nodes_offering_id: "14da3d3f-b526-4dbf-b09b-355578b2a576",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.729,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.r3.8xlarge"
    #       },
    #       {
    #         offering_type: "Light Utilization",
    #         fixed_price: 140.0,
    #         reserved_cache_nodes_offering_id: "15d7018c-71fb-4717-8409-4bdcdca18da7",
    #         usage_price: 0.052,
    #         recurring_charges: [
    #         ],
    #         product_description: "redis",
    #         duration: 94608000,
    #         cache_node_type: "cache.m1.medium"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 4993.0,
    #         reserved_cache_nodes_offering_id: "1ae7ec5f-a76e-49b6-822b-629b1768a13a",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.304,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "memcached",
    #         duration: 94608000,
    #         cache_node_type: "cache.m4.4xlarge"
    #       },
    #       {
    #         offering_type: "Heavy Utilization",
    #         fixed_price: 1772.0,
    #         reserved_cache_nodes_offering_id: "1d31242b-3925-48d1-b882-ce03204e6013",
    #         usage_price: 0.0,
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.25,
    #             recurring_charge_frequency: "Hourly"
    #           }
    #         ],
    #         product_description: "redis",
    #         duration: 31536000,
    #         cache_node_type: "cache.m3.2xlarge"
    #       },
    #       {
    #         offering_type: "Medium Utilization",
    #         fixed_price: 54.0,
    #         reserved_cache_nodes_offering_id: "1ef01f5b-94ff-433f-a530-61a56bfc8e7a",
    #         usage_price: 0.008,
    #         recurring_charges: [
    #         ],
    #         product_description: "memcached",
    #         duration: 31536000,
    #         cache_node_type: "cache.t1.micro"
    #       }
    #     ]
    #   }
    # @example DescribeReseredCacheNodeOfferings
    #   # Lists available reserved cache node offerings.
    #   params = {
    #     reserved_cache_nodes_offering_id: "438012d3-4052-4cc7-b2e3-8d3372e0e706",
    #     cache_node_type: "",
    #     duration: "",
    #     product_description: "",
    #     offering_type: "",
    #     max_records: 25,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes_offerings(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     reserved_cache_nodes_offerings: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_cache_nodes_offering_id: "String",
    #     cache_node_type: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_cache_nodes_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_cache_nodes_offerings: [
    #       {
    #         reserved_cache_nodes_offering_id: "String",
    #         cache_node_type: "String",
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         product_description: "String",
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
    # @return [Types::ReservedCacheNodesOfferingMessage]
    def describe_reserved_cache_nodes_offerings(params = {}, options = {})
      request = build_request(:describe_reserved_cache_nodes_offerings, params)
      request.send_request(options)
    end

    # <p>Returns information about serverless cache snapshots. 
    #            By default, this API lists all of the customer’s serverless cache snapshots. 
    #            It can also describe a single serverless cache snapshot, or the snapshots associated with 
    #            a particular serverless cache. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @param [Hash, Types::DescribeServerlessCacheSnapshotsRequest] params
    # @option params [String] :serverless_cache_name
    #   <p>The identifier of serverless cache. If this parameter is specified, 
    #              only snapshots associated with that specific serverless cache are described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :serverless_cache_snapshot_name
    #   <p>The identifier of the serverless cache’s snapshot.
    #              If this parameter is specified, only this snapshot is described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :snapshot_type
    #   <p>The type of snapshot that is being described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [String] :next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by max-results. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #              the specified max-results value, a market is included in the response so that remaining results 
    #              can be retrieved. Available for Valkey, Redis OSS and Serverless Memcached only.The default is 50. The Validation Constraints are a maximum of 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_name: "String",
    #     serverless_cache_snapshot_name: "String",
    #     snapshot_type: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_serverless_cache_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     serverless_cache_snapshots: [
    #       {
    #         serverless_cache_snapshot_name: "String",
    #         arn: "String",
    #         kms_key_id: "String",
    #         snapshot_type: "String",
    #         status: "String",
    #         create_time: Time.now,
    #         expiry_time: Time.now,
    #         bytes_used_for_cache: "String",
    #         serverless_cache_configuration: {
    #           serverless_cache_name: "String",
    #           engine: "String",
    #           major_engine_version: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServerlessCacheSnapshotsResponse]
    def describe_serverless_cache_snapshots(params = {}, options = {})
      request = build_request(:describe_serverless_cache_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific serverless cache. 
    #            If no identifier is specified, then the API returns information on all the serverless caches belonging to 
    #            this Amazon Web Services account.</p>
    # @param [Hash, Types::DescribeServerlessCachesRequest] params
    # @option params [String] :serverless_cache_name
    #   <p>The identifier for the serverless cache. If this parameter is specified, 
    #              only information about that specific serverless cache is returned. Default: NULL</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records in the response. If more records exist than the specified max-records value, 
    #              the next token is included in the response so that remaining results can be retrieved. 
    #              The default is 50.</p>
    # @option params [String] :next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by MaxResults.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_name: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_serverless_caches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     serverless_caches: [
    #       {
    #         serverless_cache_name: "String",
    #         description: "String",
    #         create_time: Time.now,
    #         status: "String",
    #         engine: "String",
    #         major_engine_version: "String",
    #         full_engine_version: "String",
    #         cache_usage_limits: {
    #           data_storage: {
    #             maximum: 1,
    #             minimum: 1,
    #             unit: "GB" # One of: ["GB"], # required
    #           },
    #           ecpu_per_second: {
    #             maximum: 1,
    #             minimum: 1
    #           }
    #         },
    #         kms_key_id: "String",
    #         security_group_ids: ["String"],
    #         endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         reader_endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         arn: "String",
    #         user_group_id: "String",
    #         subnet_ids: ["String"],
    #         snapshot_retention_limit: 1,
    #         daily_snapshot_time: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServerlessCachesResponse]
    def describe_serverless_caches(params = {}, options = {})
      request = build_request(:describe_serverless_caches, params)
      request.send_request(options)
    end

    # <p>Returns details of the service updates</p>
    # @param [Hash, Types::DescribeServiceUpdatesMessage] params
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    # @option params [Array<String>] :service_update_status
    #   <p>The status of the service update</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_update_name: "String",
    #     service_update_status: ["available" # One of: ["available", "cancelled", "expired"]],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_service_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     service_updates: [
    #       {
    #         service_update_name: "String",
    #         service_update_release_date: Time.now,
    #         service_update_end_date: Time.now,
    #         service_update_severity: "critical" # One of: ["critical", "important", "medium", "low"],
    #         service_update_recommended_apply_by_date: Time.now,
    #         service_update_status: "available" # One of: ["available", "cancelled", "expired"],
    #         service_update_description: "String",
    #         service_update_type: "security-update" # One of: ["security-update"],
    #         engine: "String",
    #         engine_version: "String",
    #         auto_update_after_recommended_apply_by_date: false,
    #         estimated_update_time: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ServiceUpdatesMessage]
    def describe_service_updates(params = {}, options = {})
      request = build_request(:describe_service_updates, params)
      request.send_request(options)
    end

    # <p>Returns information about cluster or replication group snapshots. By default,
    #                 <code>DescribeSnapshots</code> lists all of your snapshots; it can optionally
    #             describe a single snapshot, or just the snapshots associated with a particular cache
    #             cluster.</p>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::DescribeSnapshotsMessage] params
    # @option params [String] :replication_group_id
    #   <p>A user-supplied replication group identifier. If this parameter is specified, only
    #               snapshots associated with that specific replication group are described.</p>
    # @option params [String] :cache_cluster_id
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots
    #               associated with that specific cluster are described.</p>
    # @option params [String] :snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this
    #               snapshot are described.</p>
    # @option params [String] :snapshot_source
    #   <p>If set to <code>system</code>, the output shows snapshots that were automatically
    #               created by ElastiCache. If set to <code>user</code> the output shows snapshots that were
    #               manually created. If omitted, the output shows both automatically and manually created
    #               snapshots.</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 50</p>
    #            <p>Constraints: minimum 20; maximum 50.</p>
    # @option params [Boolean] :show_node_group_config
    #   <p>A Boolean value which if true, the node group (shard) configuration is included in the
    #               snapshot description.</p>
    # @example DescribeSnapshots
    #   # Returns information about the snapshot mysnapshot. By default.
    #   params = {
    #     snapshot_name: "snapshot-20161212"
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     snapshots: [
    #       {
    #         engine: "redis",
    #         cache_parameter_group_name: "default.redis3.2",
    #         vpc_id: "vpc-91280df6",
    #         cache_cluster_id: "my-redis5",
    #         snapshot_retention_limit: 7,
    #         num_cache_nodes: 1,
    #         snapshot_name: "snapshot-20161212",
    #         cache_cluster_create_time: Time.parse("2016-12-21T22:27:12.543Z"),
    #         auto_minor_version_upgrade: true,
    #         preferred_availability_zone: "us-east-1c",
    #         snapshot_status: "available",
    #         snapshot_source: "manual",
    #         snapshot_window: "10:00-11:00",
    #         engine_version: "3.2.4",
    #         node_snapshots: [
    #           {
    #             cache_size: "3 MB",
    #             snapshot_create_time: Time.parse("2016-12-21T22:30:26Z"),
    #             cache_node_id: "0001",
    #             cache_node_create_time: Time.parse("2016-12-21T22:27:12.543Z")
    #           }
    #         ],
    #         cache_subnet_group_name: "default",
    #         port: 6379,
    #         preferred_maintenance_window: "fri:05:30-fri:06:30",
    #         cache_node_type: "cache.m3.large"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String",
    #     cache_cluster_id: "String",
    #     snapshot_name: "String",
    #     snapshot_source: "String",
    #     marker: "String",
    #     max_records: 1,
    #     show_node_group_config: false
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     snapshots: [
    #       {
    #         snapshot_name: "String",
    #         replication_group_id: "String",
    #         replication_group_description: "String",
    #         cache_cluster_id: "String",
    #         snapshot_status: "String",
    #         snapshot_source: "String",
    #         cache_node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         num_cache_nodes: 1,
    #         preferred_availability_zone: "String",
    #         preferred_outpost_arn: "String",
    #         cache_cluster_create_time: Time.now,
    #         preferred_maintenance_window: "String",
    #         topic_arn: "String",
    #         port: 1,
    #         cache_parameter_group_name: "String",
    #         cache_subnet_group_name: "String",
    #         vpc_id: "String",
    #         auto_minor_version_upgrade: false,
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         num_node_groups: 1,
    #         automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #         node_snapshots: [
    #           {
    #             cache_cluster_id: "String",
    #             node_group_id: "String",
    #             cache_node_id: "String",
    #             node_group_configuration: {
    #               node_group_id: "AllowedNodeGroupId",
    #               slots: "String",
    #               replica_count: 1,
    #               primary_availability_zone: "String",
    #               replica_availability_zones: ["String"],
    #               primary_outpost_arn: "String",
    #               replica_outpost_arns: ["String"]
    #             },
    #             cache_size: "String",
    #             cache_node_create_time: Time.now,
    #             snapshot_create_time: Time.now
    #           }
    #         ],
    #         kms_key_id: "String",
    #         arn: "String",
    #         data_tiering: "enabled" # One of: ["enabled", "disabled"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSnapshotsListMessage]
    def describe_snapshots(params = {}, options = {})
      request = build_request(:describe_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns details of the update actions </p>
    # @param [Hash, Types::DescribeUpdateActionsMessage] params
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update</p>
    # @option params [Array<String>] :replication_group_ids
    #   <p>The replication group IDs</p>
    # @option params [Array<String>] :cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    # @option params [String] :engine
    #   <p>The Elasticache engine to which the update applies. Either Valkey, Redis OSS or Memcached.</p>
    # @option params [Array<String>] :service_update_status
    #   <p>The status of the service update</p>
    # @option params [Types::TimeRangeFilter] :service_update_time_range
    #   <p>The range of time specified to search for service updates that are in available
    #               status</p>
    # @option params [Array<String>] :update_action_status
    #   <p>The status of the update action.</p>
    # @option params [Boolean] :show_node_level_update_status
    #   <p>Dictates whether to include node level update status in the response </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response</p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_update_name: "String",
    #     replication_group_ids: ["String"],
    #     cache_cluster_ids: ["String"],
    #     engine: "String",
    #     service_update_status: ["available" # One of: ["available", "cancelled", "expired"]],
    #     service_update_time_range: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     update_action_status: ["not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"]],
    #     show_node_level_update_status: false,
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_update_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     update_actions: [
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         service_update_name: "String",
    #         service_update_release_date: Time.now,
    #         service_update_severity: "critical" # One of: ["critical", "important", "medium", "low"],
    #         service_update_status: "available" # One of: ["available", "cancelled", "expired"],
    #         service_update_recommended_apply_by_date: Time.now,
    #         service_update_type: "security-update" # One of: ["security-update"],
    #         update_action_available_date: Time.now,
    #         update_action_status: "not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete", "scheduling", "scheduled", "not-applicable"],
    #         nodes_updated: "String",
    #         update_action_status_modified_date: Time.now,
    #         sla_met: "yes" # One of: ["yes", "no", "n/a"],
    #         node_group_update_status: [
    #           {
    #             node_group_id: "String",
    #             node_group_member_update_status: [
    #               {
    #                 cache_cluster_id: "String",
    #                 cache_node_id: "String",
    #                 node_update_status: "not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete"],
    #                 node_deletion_date: Time.now,
    #                 node_update_start_date: Time.now,
    #                 node_update_end_date: Time.now,
    #                 node_update_initiated_by: "system" # One of: ["system", "customer"],
    #                 node_update_initiated_date: Time.now,
    #                 node_update_status_modified_date: Time.now
    #               }
    #             ]
    #           }
    #         ],
    #         cache_node_update_status: [
    #           {
    #             cache_node_id: "String",
    #             node_update_status: "not-applied" # One of: ["not-applied", "waiting-to-start", "in-progress", "stopping", "stopped", "complete"],
    #             node_deletion_date: Time.now,
    #             node_update_start_date: Time.now,
    #             node_update_end_date: Time.now,
    #             node_update_initiated_by: "system" # One of: ["system", "customer"],
    #             node_update_initiated_date: Time.now,
    #             node_update_status_modified_date: Time.now
    #           }
    #         ],
    #         estimated_update_time: "String",
    #         engine: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateActionsMessage]
    def describe_update_actions(params = {}, options = {})
      request = build_request(:describe_update_actions, params)
      request.send_request(options)
    end

    # <p>Returns a list of user groups.</p>
    # @param [Hash, Types::DescribeUserGroupsMessage] params
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_group_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_user_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_groups: [
    #       {
    #         user_group_id: "String",
    #         status: "String",
    #         engine: "EngineType",
    #         user_ids: ["UserId"],
    #         minimum_engine_version: "String",
    #         pending_changes: {
    #           user_ids_to_remove: ["UserId"],
    #           user_ids_to_add: ["UserId"]
    #         },
    #         replication_groups: ["String"],
    #         serverless_caches: ["String"],
    #         arn: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeUserGroupsResult]
    def describe_user_groups(params = {}, options = {})
      request = build_request(:describe_user_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of users.</p>
    # @param [Hash, Types::DescribeUsersMessage] params
    # @option params [String] :engine
    #   <p>The engine. </p>
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filter to determine the list of User IDs to return.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "EngineType",
    #     user_id: "UserId",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "String",
    #         user_name: "String",
    #         status: "String",
    #         engine: "EngineType",
    #         minimum_engine_version: "String",
    #         access_string: "String",
    #         user_group_ids: ["UserGroupId"],
    #         authentication: {
    #           type: "password" # One of: ["password", "no-password", "iam"],
    #           password_count: 1
    #         },
    #         arn: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeUsersResult]
    def describe_users(params = {}, options = {})
      request = build_request(:describe_users, params)
      request.send_request(options)
    end

    # <p>Remove a secondary cluster from the Global datastore using the Global datastore name.
    #             The secondary cluster will no longer receive updates from the primary cluster, but will
    #             remain as a standalone cluster in that Amazon region.</p>
    # @param [Hash, Types::DisassociateGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [String] :replication_group_id
    #   <p>The name of the secondary cluster you wish to remove from the Global datastore</p>
    # @option params [String] :replication_group_region
    #   <p>The Amazon region of secondary cluster you wish to remove from the Global
    #               datastore</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     replication_group_id: "String", # required
    #     replication_group_region: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DisassociateGlobalReplicationGroupResult]
    def disassociate_global_replication_group(params = {}, options = {})
      request = build_request(:disassociate_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Provides the functionality to export the serverless cache snapshot data to Amazon S3. Available for Valkey and Redis OSS only.</p>
    # @param [Hash, Types::ExportServerlessCacheSnapshotRequest] params
    # @option params [String] :serverless_cache_snapshot_name
    #   <p>The identifier of the serverless cache snapshot to be exported to S3. Available for Valkey and Redis OSS only.</p>
    # @option params [String] :s3_bucket_name
    #   <p>Name of the Amazon S3 bucket to export the snapshot to. The Amazon S3 bucket must also be in same region 
    #              as the snapshot. Available for Valkey and Redis OSS only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_snapshot_name: "String", # required
    #     s3_bucket_name: "String", # required
    #   }
    #   options = {}
    #   response = client.export_serverless_cache_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache_snapshot: {
    #       serverless_cache_snapshot_name: "String",
    #       arn: "String",
    #       kms_key_id: "String",
    #       snapshot_type: "String",
    #       status: "String",
    #       create_time: Time.now,
    #       expiry_time: Time.now,
    #       bytes_used_for_cache: "String",
    #       serverless_cache_configuration: {
    #         serverless_cache_name: "String",
    #         engine: "String",
    #         major_engine_version: "String"
    #       }
    #     }
    #   }
    # @return [Types::ExportServerlessCacheSnapshotResponse]
    def export_serverless_cache_snapshot(params = {}, options = {})
      request = build_request(:export_serverless_cache_snapshot, params)
      request.send_request(options)
    end

    # <p>Used to failover the primary region to a secondary region. The secondary region will
    #             become primary, and all other clusters will become secondary.</p>
    # @param [Hash, Types::FailoverGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [String] :primary_region
    #   <p>The Amazon region of the primary cluster of the Global datastore</p>
    # @option params [String] :primary_replication_group_id
    #   <p>The name of the primary replication group</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     primary_region: "String", # required
    #     primary_replication_group_id: "String", # required
    #   }
    #   options = {}
    #   response = client.failover_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::FailoverGlobalReplicationGroupResult]
    def failover_global_replication_group(params = {}, options = {})
      request = build_request(:failover_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Increase the number of node groups in the Global datastore</p>
    # @param [Hash, Types::IncreaseNodeGroupsInGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Integer] :node_group_count
    #   <p>Total number of node groups you want</p>
    # @option params [Array<Types::RegionalConfiguration>] :regional_configurations
    #   <p>Describes the replication group IDs, the Amazon regions where they are stored and the
    #               shard configuration for each that comprise the Global datastore</p>
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the process begins immediately. At present, the only permitted value
    #               for this parameter is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     node_group_count: 1, # required
    #     regional_configurations: [
    #       {
    #         replication_group_id: "String", # required
    #         replication_group_region: "String", # required
    #         resharding_configuration: [ # required
    #           {
    #             node_group_id: "AllowedNodeGroupId",
    #             preferred_availability_zones: ["String"]
    #           }
    #         ]
    #       }
    #     ],
    #     apply_immediately: false, # required
    #   }
    #   options = {}
    #   response = client.increase_node_groups_in_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::IncreaseNodeGroupsInGlobalReplicationGroupResult]
    def increase_node_groups_in_global_replication_group(params = {}, options = {})
      request = build_request(:increase_node_groups_in_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Dynamically increases the number of replicas in a Valkey or Redis OSS (cluster mode disabled)
    #             replication group or the number of replica nodes in one or more node groups (shards) of
    #             a Valkey or Redis OSS (cluster mode enabled) replication group. This operation is performed with no
    #             cluster down time.</p>
    # @param [Hash, Types::IncreaseReplicaCountMessage] params
    # @option params [String] :replication_group_id
    #   <p>The id of the replication group to which you want to add replica nodes.</p>
    # @option params [Integer] :new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation. For Valkey or Redis OSS (cluster mode disabled) replication groups, this is the number of replica nodes in
    #               the replication group. For Valkey or Redis OSS (cluster mode enabled) replication groups, this is the
    #               number of replica nodes in each of the replication group's node groups.</p>
    # @option params [Array<Types::ConfigureShard>] :replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each
    #               shard in a Valkey or Redis OSS (cluster mode enabled) replication group. The
    #                   <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>,
    #                   <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is increased immediately.
    #                   <code>ApplyImmediately=False</code> is not currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId", # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: ["String"],
    #         preferred_outpost_arns: ["String"]
    #       }
    #     ],
    #     apply_immediately: false, # required
    #   }
    #   options = {}
    #   response = client.increase_replica_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::IncreaseReplicaCountResult]
    def increase_replica_count(params = {}, options = {})
      request = build_request(:increase_replica_count, params)
      request.send_request(options)
    end

    # <p>Lists all available node types that you can scale with your cluster's replication
    #             group's current node type.</p>
    #          <p>When you use the <code>ModifyCacheCluster</code> or
    #                 <code>ModifyReplicationGroup</code> operations to scale your cluster or replication
    #             group, the value of the <code>CacheNodeType</code> parameter must be one of the node
    #             types returned by this operation.</p>
    # @param [Hash, Types::ListAllowedNodeTypeModificationsMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The name of the cluster you want to scale up to a larger node instanced type.
    #               ElastiCache uses the cluster id to identify the current node type of this cluster and
    #               from that to create a list of node types you can scale up to.</p>
    #            <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #                       <code>ReplicationGroupId</code>.</p>
    #            </important>
    # @option params [String] :replication_group_id
    #   <p>The name of the replication group want to scale up to a larger node type. ElastiCache
    #               uses the replication group id to identify the current node type being used by this
    #               replication group, and from that to create a list of node types you can scale up
    #               to.</p>
    #            <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #                       <code>ReplicationGroupId</code>.</p>
    #            </important>
    # @example ListAllowedNodeTypeModifications
    #   # Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.
    #   params = {
    #     cache_cluster_id: "mycluster"
    #   }
    #   options = {}
    #   response = client.list_allowed_node_type_modifications(params, options)
    #   response.to_h #=>
    #   {
    #     scale_up_modifications: [
    #     ]
    #   }
    # @example ListAllowedNodeTypeModifications
    #   # Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.
    #   params = {
    #     replication_group_id: "myreplgroup"
    #   }
    #   options = {}
    #   response = client.list_allowed_node_type_modifications(params, options)
    #   response.to_h #=>
    #   {
    #     scale_up_modifications: [
    #       "cache.m4.10xlarge",
    #       "cache.m4.2xlarge",
    #       "cache.m4.4xlarge",
    #       "cache.m4.xlarge",
    #       "cache.r3.2xlarge",
    #       "cache.r3.4xlarge",
    #       "cache.r3.8xlarge",
    #       "cache.r3.xlarge"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String",
    #     replication_group_id: "String"
    #   }
    #   options = {}
    #   response = client.list_allowed_node_type_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scale_up_modifications: ["String"],
    #     scale_down_modifications: ["String"]
    #   }
    # @return [Types::AllowedNodeTypeModificationsMessage]
    def list_allowed_node_type_modifications(params = {}, options = {})
      request = build_request(:list_allowed_node_type_modifications, params)
      request.send_request(options)
    end

    # <p>Lists all tags currently on a named resource.</p>
    #          <p> A tag is a key-value pair where the key and value are case-sensitive. You can use
    #             tags to categorize and track all your ElastiCache resources, with the exception of
    #             global replication group. When you add or remove tags on replication groups, those
    #             actions will be replicated to all nodes in the replication group. For more information,
    #             see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    #          <p>If the cluster is not in the <i>available</i> state,
    #                 <code>ListTagsForResource</code> returns an error.</p>
    # @param [Hash, Types::ListTagsForResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Web
    #                       Services Service Namespaces</a>.</p>
    # @example ListTagsForResource
    #   # Lists all cost allocation tags currently on the named resource. A cost allocation tag is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs.
    #   params = {
    #     resource_name: "arn:aws:elasticache:us-west-2:<my-account-id>:cluster:mycluster"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         value: "20150202",
    #         key: "APIVersion"
    #       },
    #       {
    #         value: "ElastiCache",
    #         key: "Service"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a cluster. You can use this operation to change one or more
    #             cluster configuration parameters by specifying the parameters and the new values.</p>
    # @param [Hash, Types::ModifyCacheClusterMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier. This value is stored as a lowercase string.</p>
    # @option params [Integer] :num_cache_nodes
    #   <p>The number of cache nodes that the cluster should have. If the value for
    #                   <code>NumCacheNodes</code> is greater than the sum of the number of current cache
    #               nodes and the number of cache nodes pending creation (which may be zero), more nodes are
    #               added. If the value is less than the number of existing cache nodes, nodes are removed.
    #               If the value is equal to the number of current cache nodes, any pending add or remove
    #               requests are canceled.</p>
    #            <p>If you are removing cache nodes, you must use the <code>CacheNodeIdsToRemove</code>
    #               parameter to provide the IDs of the specific cache nodes to remove.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #            <note>
    #               <p>Adding or removing Memcached cache nodes can be applied immediately or as a
    #                   pending operation (see <code>ApplyImmediately</code>).</p>
    #               <p>A pending operation to modify the number of cache nodes in a cluster during its
    #                   maintenance window, whether by adding or removing nodes in accordance with the scale
    #                   out architecture, is not queued. The customer's latest request to add or remove
    #                   nodes to the cluster overrides any previous pending operations to modify the number
    #                   of cache nodes in the cluster. For example, a request to remove 2 nodes would
    #                   override a previous pending operation to remove 3 nodes. Similarly, a request to add
    #                   2 nodes would override a previous pending operation to remove 3 nodes and vice
    #                   versa. As Memcached cache nodes may now be provisioned in different Availability
    #                   Zones with flexible cache node placement, a request to add nodes does not
    #                   automatically override a previous pending operation to add nodes. The customer can
    #                   modify the previous pending operation to add more nodes or explicitly cancel the
    #                   pending request and retry the new request. To cancel pending operations to modify
    #                   the number of cache nodes in a cluster, use the <code>ModifyCacheCluster</code>
    #                   request and set <code>NumCacheNodes</code> equal to the number of cache nodes
    #                   currently in the cluster.</p>
    #            </note>
    # @option params [Array<String>] :cache_node_ids_to_remove
    #   <p>A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002,
    #               etc.). This parameter is only valid when <code>NumCacheNodes</code> is less than the
    #               existing number of cache nodes. The number of cache node IDs supplied in this parameter
    #               must match the difference between the existing number of cache nodes in the cluster or
    #               pending cache nodes, whichever is greater, and the value of <code>NumCacheNodes</code>
    #               in the request.</p>
    #            <p>For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number
    #               of cache nodes in this <code>ModifyCacheCluster</code> call is 5, you must list 2 (7 -
    #               5) cache node IDs to remove.</p>
    # @option params [String] :az_mode
    #   <p>Specifies whether the new nodes in this Memcached cluster are all created in a single
    #               Availability Zone or created across multiple Availability Zones.</p>
    #            <p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p>
    #            <p>This option is only supported for Memcached clusters.</p>
    #            <note>
    #               <p>You cannot specify <code>single-az</code> if the Memcached cluster already has
    #                   cache nodes in different Availability Zones. If <code>cross-az</code> is specified,
    #                   existing Memcached nodes remain in their current Availability Zone.</p>
    #               <p>Only newly created nodes are located in different Availability Zones. </p>
    #            </note>
    # @option params [Array<String>] :new_availability_zones
    #   <note>
    #               <p>This option is only supported on Memcached clusters.</p>
    #            </note>
    #            <p>The list of Availability Zones where the new Memcached cache nodes are created.</p>
    #            <p>This parameter is only valid when <code>NumCacheNodes</code> in the request is greater
    #               than the sum of the number of active cache nodes and the number of cache nodes pending
    #               creation (which may be zero). The number of Availability Zones supplied in this list
    #               must match the cache nodes being added in this request.</p>
    #            <p>Scenarios:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Scenario 1:</b> You have 3 active nodes and wish
    #                       to add 2 nodes. Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally
    #                       specify two Availability Zones for the two new nodes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Scenario 2:</b> You have 3 active nodes and 2
    #                       nodes pending creation (from the scenario 1 call) and want to add 1 more node.
    #                       Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and optionally specify an
    #                       Availability Zone for the new node.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Scenario 3:</b> You want to cancel all pending
    #                       operations. Specify <code>NumCacheNodes=3</code> to cancel all pending
    #                       operations.</p>
    #               </li>
    #            </ul>
    #            <p>The Availability Zone placement of nodes pending creation cannot be modified. If you
    #               wish to cancel any nodes pending creation, add 0 nodes by setting
    #                   <code>NumCacheNodes</code> to the number of current nodes.</p>
    #            <p>If <code>cross-az</code> is specified, existing Memcached nodes remain in their
    #               current Availability Zone. Only newly created nodes can be located in different
    #               Availability Zones. For guidance on how to move existing Memcached nodes to different
    #               Availability Zones, see the <b>Availability Zone
    #                   Considerations</b> section of <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html">Cache Node
    #                   Considerations for Memcached</a>.</p>
    #            <p>
    #               <b>Impact of new add/remove requests upon pending requests</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Scenario-1</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending
    #                               delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-2</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create, pending or immediate, replaces the pending
    #                               delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-3</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending
    #                               create.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-4</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create is added to the pending create.</p>
    #                        <important>
    #                           <p>
    #                              <b>Important:</b> If the new create
    #                                   request is <b>Apply Immediately - Yes</b>,
    #                                   all creates are performed immediately. If the new create request is
    #                                       <b>Apply Immediately - No</b>, all
    #                                   creates are pending.</p>
    #                        </important>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to authorize on this cluster. This change is
    #               asynchronously applied as soon as possible.</p>
    #            <p>You can use this parameter only with clusters that are created outside of an Amazon
    #               Virtual Private Cloud (Amazon VPC).</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be
    #               "Default".</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the cluster.</p>
    #            <p>This parameter can be used only with clusters that are created in an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are
    #               sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be same as the cluster owner.</p>
    #            </note>
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to this cluster. This change is
    #               asynchronously applied as soon as possible for parameters when the
    #                   <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this
    #               request.</p>
    # @option params [String] :notification_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the
    #               status is <code>active</code>.</p>
    #            <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the cluster.</p>
    #            <p>If <code>false</code>, changes to the cluster are applied on the next maintenance
    #               reboot, or the next failure reboot, whichever occurs first.</p>
    #            <important>
    #               <p>If you perform a <code>ModifyCacheCluster</code> before a pending modification is
    #                   applied, the pending modification is replaced by the newer modification.</p>
    #            </important>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :engine
    #   <p>The engine type used by the cache cluster. The options are valkey, memcached or redis.</p>
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the cache nodes.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               cluster and create it anew with the earlier engine version. </p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 or Redis OSS engine version 6.0 or later, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic cluster snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #            <note>
    #               <p>If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups
    #                   are turned off.</p>
    #            </note>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your cluster. </p>
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this cluster up to.</p>
    # @option params [String] :auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This
    #               parameter must be specified with the <code>auth-token-update</code> parameter. Password
    #               constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    # @option params [String] :auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be
    #               specified with the <code>auth-token</code> parameter. Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>ROTATE - default, if no update strategy is provided</p>
    #               </li>
    #               <li>
    #                  <p>SET - allowed only after ROTATE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE - allowed only when transitioning to RBAC</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html">Authenticating Users with AUTH</a>
    #            </p>
    # @option params [Array<Types::LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    # @option params [String] :ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    # @option params [Types::ScaleConfig] :scale_config
    #   <p>Configures horizontal or vertical scaling for Memcached clusters, specifying the scaling percentage and interval.</p>
    # @example ModifyCacheCluster
    #   # Copies a snapshot to a specified name.
    #   params = {
    #     cache_cluster_id: "redis-cluster",
    #     apply_immediately: true,
    #     snapshot_retention_limit: 14
    #   }
    #   options = {}
    #   response = client.modify_cache_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       engine: "redis",
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ],
    #         cache_parameter_group_name: "default.redis3.2",
    #         parameter_apply_status: "in-sync"
    #       },
    #       snapshot_retention_limit: 14,
    #       cache_cluster_id: "redis-cluster",
    #       cache_security_groups: [
    #       ],
    #       num_cache_nodes: 1,
    #       snapshot_window: "07:00-08:00",
    #       cache_cluster_create_time: Time.parse("2016-12-22T16:27:56.078Z"),
    #       auto_minor_version_upgrade: true,
    #       cache_cluster_status: "available",
    #       preferred_availability_zone: "us-east-1e",
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #       cache_subnet_group_name: "default",
    #       engine_version: "3.2.4",
    #       pending_modified_values: {
    #       },
    #       preferred_maintenance_window: "fri:09:00-fri:10:00",
    #       cache_node_type: "cache.r3.large"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String", # required
    #     num_cache_nodes: 1,
    #     cache_node_ids_to_remove: ["String"],
    #     az_mode: "single-az" # One of: ["single-az", "cross-az"],
    #     new_availability_zones: ["String"],
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     cache_parameter_group_name: "String",
    #     notification_topic_status: "String",
    #     apply_immediately: false,
    #     engine: "String",
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     cache_node_type: "String",
    #     auth_token: "String",
    #     auth_token_update_strategy: "SET" # One of: ["SET", "ROTATE", "DELETE"],
    #     log_delivery_configurations: [
    #       {
    #         log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #         destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: "String"
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: "String"
    #           }
    #         },
    #         log_format: "text" # One of: ["text", "json"],
    #         enabled: false
    #       }
    #     ],
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #     scale_config: {
    #       scale_percentage: 1,
    #       scale_interval_minutes: 1
    #     }
    #   }
    #   options = {}
    #   response = client.modify_cache_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       cache_cluster_id: "String",
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       client_download_landing_page: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       cache_cluster_status: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         num_cache_nodes: 1,
    #         cache_node_ids_to_remove: ["String"],
    #         engine_version: "String",
    #         cache_node_type: "String",
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         scale_config: {
    #           scale_percentage: 1,
    #           scale_interval_minutes: 1
    #         }
    #       },
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       cache_security_groups: [
    #         {
    #           cache_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       cache_parameter_group: {
    #         cache_parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         cache_node_ids_to_reboot: ["String"]
    #       },
    #       cache_subnet_group_name: "String",
    #       cache_nodes: [
    #         {
    #           cache_node_id: "String",
    #           cache_node_status: "String",
    #           cache_node_create_time: Time.now,
    #           endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           parameter_group_status: "String",
    #           source_cache_node_id: "String",
    #           customer_availability_zone: "String",
    #           customer_outpost_arn: "String"
    #         }
    #       ],
    #       auto_minor_version_upgrade: false,
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       replication_group_id: "String",
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String",
    #       replication_group_log_delivery_enabled: false,
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"]
    #     }
    #   }
    # @return [Types::ModifyCacheClusterResult]
    def modify_cache_cluster(params = {}, options = {})
      request = build_request(:modify_cache_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a cache parameter group. You can modify up to 20 parameters
    #             in a single request by submitting a list parameter name and value pairs.</p>
    # @param [Hash, Types::ModifyCacheParameterGroupMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to modify.</p>
    # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at
    #               least one parameter name and value; subsequent arguments are optional. A maximum of 20
    #               parameters may be modified per request.</p>
    # @example ModifyCacheParameterGroup
    #   # Modifies one or more parameter values in the specified parameter group. You cannot modify any default parameter group.
    #   params = {
    #     cache_parameter_group_name: "custom-mem1-4",
    #     parameter_name_values: [
    #       {
    #         parameter_name: "binding_protocol",
    #         parameter_value: "ascii"
    #       },
    #       {
    #         parameter_name: "chunk_size",
    #         parameter_value: "96"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_cache_parameter_group(params, options)
    #   response.to_h #=>
    #   {
    #     cache_parameter_group_name: "custom-mem1-4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_cache_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_parameter_group_name: "String"
    #   }
    # @return [Types::ModifyCacheParameterGroupOutput]
    def modify_cache_parameter_group(params = {}, options = {})
      request = build_request(:modify_cache_parameter_group, params)
      request.send_request(options)
    end

    # <p>Modifies an existing cache subnet group.</p>
    # @param [Hash, Types::ModifyCacheSubnetGroupMessage] params
    # @option params [String] :cache_subnet_group_name
    #   <p>The name for the cache subnet group. This value is stored as a lowercase
    #               string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #            <p>Example: <code>mysubnetgroup</code>
    #            </p>
    # @option params [String] :cache_subnet_group_description
    #   <p>A description of the cache subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the cache subnet group.</p>
    # @example ModifyCacheSubnetGroup
    #   # Modifies an existing ElastiCache subnet group.
    #   params = {
    #     cache_subnet_group_name: "my-sn-grp",
    #     subnet_ids: [
    #       "subnet-bcde2345"
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_cache_subnet_group(params, options)
    #   response.to_h #=>
    #   {
    #     cache_subnet_group: {
    #       vpc_id: "vpc-91280df6",
    #       cache_subnet_group_description: "My subnet group.",
    #       subnets: [
    #         {
    #           subnet_identifier: "subnet-a1b2c3d4",
    #           subnet_availability_zone: {
    #             name: "us-east-1c"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-1a2b3c4d",
    #           subnet_availability_zone: {
    #             name: "us-east-1e"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-bcde2345",
    #           subnet_availability_zone: {
    #             name: "us-east-1e"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-1234abcd",
    #           subnet_availability_zone: {
    #             name: "us-east-1c"
    #           }
    #         },
    #         {
    #           subnet_identifier: "subnet-abcd1234",
    #           subnet_availability_zone: {
    #             name: "us-east-1b"
    #           }
    #         }
    #       ],
    #       cache_subnet_group_name: "my-sn-grp"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_subnet_group_name: "String", # required
    #     cache_subnet_group_description: "String",
    #     subnet_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.modify_cache_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_subnet_group: {
    #       cache_subnet_group_name: "String",
    #       cache_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_outpost: {
    #             subnet_outpost_arn: "String"
    #           },
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       arn: "String",
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::ModifyCacheSubnetGroupResult]
    def modify_cache_subnet_group(params = {}, options = {})
      request = build_request(:modify_cache_subnet_group, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a Global datastore.</p>
    # @param [Hash, Types::ModifyGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Boolean] :apply_immediately
    #   <p>This parameter causes the modifications in this request and any pending modifications
    #               to be applied, asynchronously and as soon as possible. Modifications to Global
    #               Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
    #           </p>
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this Global datastore to.</p>
    # @option params [String] :engine
    #   <p>Modifies the engine listed in a global replication group message. The options are redis, memcached or valkey.</p>
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the Global
    #               datastore. </p>
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to use with the Global datastore. It must be
    #               compatible with the major engine version used by the Global datastore.</p>
    # @option params [String] :global_replication_group_description
    #   <p>A description of the Global datastore</p>
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if
    #               the existing primary encounters a failure. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     apply_immediately: false, # required
    #     cache_node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_name: "String",
    #     global_replication_group_description: "String",
    #     automatic_failover_enabled: false
    #   }
    #   options = {}
    #   response = client.modify_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::ModifyGlobalReplicationGroupResult]
    def modify_global_replication_group(params = {}, options = {})
      request = build_request(:modify_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a replication group. This is limited to Valkey and Redis OSS 7 and above.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/scaling-redis-cluster-mode-enabled.html">Scaling for Valkey or Redis OSS (cluster mode enabled)</a> in
    #                     the ElastiCache User Guide</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html">ModifyReplicationGroupShardConfiguration</a> in the ElastiCache API
    #                     Reference</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>This operation is valid for Valkey or Redis OSS only.</p>
    #          </note>
    # @param [Hash, Types::ModifyReplicationGroupMessage] params
    # @option params [String] :replication_group_id
    #   <p>The identifier of the replication group to modify.</p>
    # @option params [String] :replication_group_description
    #   <p>A description for the replication group. Maximum length is 255 characters.</p>
    # @option params [String] :primary_cluster_id
    #   <p>For replication groups with a single primary, if this parameter is specified,
    #               ElastiCache promotes the specified cluster in the specified replication group to the
    #               primary role. The nodes of all other clusters in the replication group are read
    #               replicas.</p>
    # @option params [String] :snapshotting_cluster_id
    #   <p>The cluster ID that is used as the daily snapshot source for the replication group.
    #               This parameter cannot be set for Valkey or Redis OSS (cluster mode enabled) replication groups.</p>
    # @option params [Boolean] :automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if
    #               the existing primary encounters a failure.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :multi_az_enabled
    #   <p>A flag to indicate MultiAZ is enabled.</p>
    # @option params [String] :node_group_id
    #   <p>Deprecated. This parameter is not used.</p>
    # @option params [Array<String>] :cache_security_group_names
    #   <p>A list of cache security group names to authorize for the clusters in this replication
    #               group. This change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter can be used only with replication group containing clusters running
    #               outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be
    #                   <code>Default</code>.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the clusters in the replication
    #               group.</p>
    #            <p>This parameter can be used only with replication group containing clusters running in
    #               an Amazon Virtual Private Cloud (Amazon VPC).</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are
    #               sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be same as the replication group owner. </p>
    #            </note>
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to all of the clusters in this
    #               replication group. This change is asynchronously applied as soon as possible for
    #               parameters when the <code>ApplyImmediately</code> parameter is specified as
    #                   <code>true</code> for this request.</p>
    # @option params [String] :notification_topic_status
    #   <p>The status of the Amazon SNS notification topic for the replication group.
    #               Notifications are sent only if the status is <code>active</code>.</p>
    #            <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the replication group.</p>
    #            <p>If <code>false</code>, changes to the nodes in the replication group are applied on
    #               the next maintenance reboot, or the next failure reboot, whichever occurs first.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :engine
    #   <p>Modifies the engine listed in a replication group message. The options are redis, memcached or valkey.</p>
    # @option params [String] :engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the replication
    #               group.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               replication group and create it anew with the earlier engine version. </p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> If you are running Valkey or Redis OSS engine version 6.0 or later, set this parameter to yes if
    #               you want to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic node group (shard)
    #               snapshots before deleting them. For example, if you set
    #                   <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is
    #               retained for 5 days before being deleted.</p>
    #            <p>
    #               <b>Important</b> If the value of SnapshotRetentionLimit is
    #               set to zero (0), backups are turned off.</p>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of the node group (shard) specified by <code>SnapshottingClusterId</code>.</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    # @option params [String] :cache_node_type
    #   <p>A valid cache node type that you want to scale this replication group to.</p>
    # @option params [String] :auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This
    #               parameter must be specified with the <code>auth-token-update-strategy </code> parameter.
    #               Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    # @option params [String] :auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be
    #               specified with the <code>auth-token</code> parameter. Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>ROTATE - default, if no update strategy is provided</p>
    #               </li>
    #               <li>
    #                  <p>SET - allowed only after ROTATE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE - allowed only when transitioning to RBAC</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html">Authenticating Users with AUTH</a>
    #            </p>
    # @option params [Array<String>] :user_group_ids_to_add
    #   <p>The ID of the user group you are associating with the replication group.</p>
    # @option params [Array<String>] :user_group_ids_to_remove
    #   <p>The ID of the user group to disassociate from the replication group, meaning the users
    #               in the group no longer can access the replication group.</p>
    # @option params [Boolean] :remove_user_groups
    #   <p>Removes the user group associated with this replication group.</p>
    # @option params [Array<Types::LogDeliveryConfigurationRequest>] :log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    # @option params [String] :ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true. If you are enabling
    #               in-transit encryption for an existing cluster, you must also set
    #                   <code>TransitEncryptionMode</code> to <code>preferred</code>.</p>
    # @option params [String] :transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #            <p>You must set <code>TransitEncryptionEnabled</code> to <code>true</code>, for your
    #               existing cluster, and set <code>TransitEncryptionMode</code> to <code>preferred</code>
    #               in the same request to allow both encrypted and unencrypted connections at the same
    #               time. Once you migrate all your Valkey or Redis OSS clients to use encrypted connections you can set
    #               the value to <code>required</code> to allow encrypted connections only.</p>
    #            <p>Setting <code>TransitEncryptionMode</code> to <code>required</code> is a two-step
    #               process that requires you to first set the <code>TransitEncryptionMode</code> to
    #                   <code>preferred</code>, after that you can set <code>TransitEncryptionMode</code> to
    #                   <code>required</code>. </p>
    # @option params [String] :cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    # @example ModifyReplicationGroup
    #   
    #   params = {
    #     replication_group_id: "my-redis-rg",
    #     replication_group_description: "Modified replication group",
    #     snapshotting_cluster_id: "my-redis-rg-001",
    #     apply_immediately: true,
    #     snapshot_retention_limit: 30
    #   }
    #   options = {}
    #   response = client.modify_replication_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       status: "available",
    #       description: "Modified replication group",
    #       node_groups: [
    #         {
    #           status: "available",
    #           node_group_members: [
    #             {
    #               current_role: "primary",
    #               preferred_availability_zone: "us-east-1b",
    #               cache_node_id: "0001",
    #               read_endpoint: {
    #                 port: 6379,
    #                 address: "my-redis-rg-001.abcdef.0001.use1.cache.amazonaws.com"
    #               },
    #               cache_cluster_id: "my-redis-rg-001"
    #             },
    #             {
    #               current_role: "replica",
    #               preferred_availability_zone: "us-east-1a",
    #               cache_node_id: "0001",
    #               read_endpoint: {
    #                 port: 6379,
    #                 address: "my-redis-rg-002.abcdef.0001.use1.cache.amazonaws.com"
    #               },
    #               cache_cluster_id: "my-redis-rg-002"
    #             },
    #             {
    #               current_role: "replica",
    #               preferred_availability_zone: "us-east-1c",
    #               cache_node_id: "0001",
    #               read_endpoint: {
    #                 port: 6379,
    #                 address: "my-redis-rg-003.abcdef.0001.use1.cache.amazonaws.com"
    #               },
    #               cache_cluster_id: "my-redis-rg-003"
    #             }
    #           ],
    #           node_group_id: "0001",
    #           primary_endpoint: {
    #             port: 6379,
    #             address: "my-redis-rg.abcdef.ng.0001.use1.cache.amazonaws.com"
    #           }
    #         }
    #       ],
    #       replication_group_id: "my-redis-rg",
    #       automatic_failover: enabled,
    #       snapshotting_cluster_id: "my-redis-rg-002",
    #       member_clusters: [
    #         "my-redis-rg-001",
    #         "my-redis-rg-002",
    #         "my-redis-rg-003"
    #       ],
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     replication_group_description: "String",
    #     primary_cluster_id: "String",
    #     snapshotting_cluster_id: "String",
    #     automatic_failover_enabled: false,
    #     multi_az_enabled: false,
    #     node_group_id: "String",
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     cache_parameter_group_name: "String",
    #     notification_topic_status: "String",
    #     apply_immediately: false,
    #     engine: "String",
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     cache_node_type: "String",
    #     auth_token: "String",
    #     auth_token_update_strategy: "SET" # One of: ["SET", "ROTATE", "DELETE"],
    #     user_group_ids_to_add: ["UserGroupId"],
    #     user_group_ids_to_remove: ["UserGroupId"],
    #     remove_user_groups: false,
    #     log_delivery_configurations: [
    #       {
    #         log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #         destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #         destination_details: {
    #           cloud_watch_logs_details: {
    #             log_group: "String"
    #           },
    #           kinesis_firehose_details: {
    #             delivery_stream: "String"
    #           }
    #         },
    #         log_format: "text" # One of: ["text", "json"],
    #         enabled: false
    #       }
    #     ],
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #     transit_encryption_enabled: false,
    #     transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #     cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #   }
    #   options = {}
    #   response = client.modify_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::ModifyReplicationGroupResult]
    def modify_replication_group(params = {}, options = {})
      request = build_request(:modify_replication_group, params)
      request.send_request(options)
    end

    # <p>Modifies a replication group's shards (node groups) by allowing you to add shards,
    #             remove shards, or rebalance the keyspaces among existing shards.</p>
    # @param [Hash, Types::ModifyReplicationGroupShardConfigurationMessage] params
    # @option params [String] :replication_group_id
    #   <p>The name of the Valkey or Redis OSS (cluster mode enabled) cluster (replication group) on which the
    #               shards are to be configured.</p>
    # @option params [Integer] :node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the shard
    #               configuration.</p>
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately. At present, the
    #               only permitted value for this parameter is <code>true</code>.</p>
    #            <p>Value: true</p>
    # @option params [Array<Types::ReshardingConfiguration>] :resharding_configuration
    #   <p>Specifies the preferred availability zones for each node group in the cluster. If the
    #               value of <code>NodeGroupCount</code> is greater than the current number of node groups
    #               (shards), you can use this parameter to specify the preferred availability zones of the
    #               cluster's shards. If you omit this parameter ElastiCache selects availability zones for
    #               you.</p>
    #            <p>You can specify this parameter only if the value of <code>NodeGroupCount</code> is
    #               greater than the current number of node groups (shards).</p>
    # @option params [Array<String>] :node_groups_to_remove
    #   <p>If the value of <code>NodeGroupCount</code> is less than the current number of node
    #               groups (shards), then either <code>NodeGroupsToRemove</code> or
    #                   <code>NodeGroupsToRetain</code> is required. <code>NodeGroupsToRemove</code> is a
    #               list of <code>NodeGroupId</code>s to remove from the cluster.</p>
    #            <p>ElastiCache will attempt to remove all node groups listed by
    #                   <code>NodeGroupsToRemove</code> from the cluster.</p>
    # @option params [Array<String>] :node_groups_to_retain
    #   <p>If the value of <code>NodeGroupCount</code> is less than the current number of node
    #               groups (shards), then either <code>NodeGroupsToRemove</code> or
    #                   <code>NodeGroupsToRetain</code> is required. <code>NodeGroupsToRetain</code> is a
    #               list of <code>NodeGroupId</code>s to retain in the cluster.</p>
    #            <p>ElastiCache will attempt to remove all node groups except those listed by
    #                   <code>NodeGroupsToRetain</code> from the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     node_group_count: 1, # required
    #     apply_immediately: false, # required
    #     resharding_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         preferred_availability_zones: ["String"]
    #       }
    #     ],
    #     node_groups_to_remove: ["AllowedNodeGroupId"],
    #     node_groups_to_retain: ["AllowedNodeGroupId"]
    #   }
    #   options = {}
    #   response = client.modify_replication_group_shard_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::ModifyReplicationGroupShardConfigurationResult]
    def modify_replication_group_shard_configuration(params = {}, options = {})
      request = build_request(:modify_replication_group_shard_configuration, params)
      request.send_request(options)
    end

    # <p>This API modifies the attributes of a serverless cache.</p>
    # @param [Hash, Types::ModifyServerlessCacheRequest] params
    # @option params [String] :serverless_cache_name
    #   <p>User-provided identifier for the serverless cache to be modified.</p>
    # @option params [String] :description
    #   <p>User provided description for the serverless cache. 
    #              Default = NULL, i.e. the existing description is not removed/modified. 
    #              The description has a maximum length of 255 characters.</p>
    # @option params [Types::CacheUsageLimits] :cache_usage_limits
    #   <p>Modify the cache usage limit for the serverless cache.</p>
    # @option params [Boolean] :remove_user_group
    #   <p>The identifier of the UserGroup to be removed from association with the Valkey and Redis OSS serverless cache.  Available for Valkey and Redis OSS only. Default is NULL.</p>
    # @option params [String] :user_group_id
    #   <p>The identifier of the UserGroup to be associated with the serverless cache. Available for Valkey and Redis OSS only. 
    #              Default is NULL -  the existing UserGroup is not removed.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The new list of VPC security groups to be associated with the serverless cache. 
    #              Populating this list means the current VPC security groups will be removed. 
    #              This security group is used to authorize traffic access for the VPC end-point (private-link). 
    #              Default = NULL -  the existing list of VPC security groups is not removed.</p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which Elasticache retains automatic snapshots before deleting them. 
    #              Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Default = NULL, i.e. the existing snapshot-retention-limit will not be removed or modified. 
    #              The maximum value allowed is 35 days.</p>
    # @option params [String] :daily_snapshot_time
    #   <p>The daily time during which Elasticache begins taking a daily snapshot of the serverless cache.  Available for Valkey, Redis OSS and Serverless Memcached only.
    #              The default is NULL, i.e. the existing snapshot time configured for the cluster is not removed.</p>
    # @option params [String] :engine
    #   <p>Modifies the engine listed in a serverless cache request. The options are redis, memcached or valkey.</p>
    # @option params [String] :major_engine_version
    #   <p>Modifies the engine vesion listed in a serverless cache request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serverless_cache_name: "String", # required
    #     description: "String",
    #     cache_usage_limits: {
    #       data_storage: {
    #         maximum: 1,
    #         minimum: 1,
    #         unit: "GB" # One of: ["GB"], # required
    #       },
    #       ecpu_per_second: {
    #         maximum: 1,
    #         minimum: 1
    #       }
    #     },
    #     remove_user_group: false,
    #     user_group_id: "String",
    #     security_group_ids: ["String"],
    #     snapshot_retention_limit: 1,
    #     daily_snapshot_time: "String",
    #     engine: "String",
    #     major_engine_version: "String"
    #   }
    #   options = {}
    #   response = client.modify_serverless_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     serverless_cache: {
    #       serverless_cache_name: "String",
    #       description: "String",
    #       create_time: Time.now,
    #       status: "String",
    #       engine: "String",
    #       major_engine_version: "String",
    #       full_engine_version: "String",
    #       cache_usage_limits: {
    #         data_storage: {
    #           maximum: 1,
    #           minimum: 1,
    #           unit: "GB" # One of: ["GB"], # required
    #         },
    #         ecpu_per_second: {
    #           maximum: 1,
    #           minimum: 1
    #         }
    #       },
    #       kms_key_id: "String",
    #       security_group_ids: ["String"],
    #       endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       reader_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       arn: "String",
    #       user_group_id: "String",
    #       subnet_ids: ["String"],
    #       snapshot_retention_limit: 1,
    #       daily_snapshot_time: "String"
    #     }
    #   }
    # @return [Types::ModifyServerlessCacheResponse]
    def modify_serverless_cache(params = {}, options = {})
      request = build_request(:modify_serverless_cache, params)
      request.send_request(options)
    end

    # <p>Changes user password(s) and/or access string.</p>
    # @param [Hash, Types::ModifyUserMessage] params
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    # @option params [String] :append_access_string
    #   <p>Adds additional user permissions to the access string.</p>
    # @option params [Array<String>] :passwords
    #   <p>The passwords belonging to the user. You are allowed up to two.</p>
    # @option params [Boolean] :no_password_required
    #   <p>Indicates no password is required for the user.</p>
    # @option params [Types::AuthenticationMode] :authentication_mode
    #   <p>Specifies how to authenticate the user.</p>
    # @option params [String] :engine
    #   <p>Modifies the engine listed for a user. The options are valkey or redis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     access_string: "AccessString",
    #     append_access_string: "AccessString",
    #     passwords: ["String"],
    #     no_password_required: false,
    #     authentication_mode: {
    #       type: "password" # One of: ["password", "no-password-required", "iam"],
    #       passwords: ["String"]
    #     },
    #     engine: "EngineType"
    #   }
    #   options = {}
    #   response = client.modify_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "String",
    #     user_name: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     minimum_engine_version: "String",
    #     access_string: "String",
    #     user_group_ids: ["UserGroupId"],
    #     authentication: {
    #       type: "password" # One of: ["password", "no-password", "iam"],
    #       password_count: 1
    #     },
    #     arn: "String"
    #   }
    # @return [Types::ModifyUserOutput]
    def modify_user(params = {}, options = {})
      request = build_request(:modify_user, params)
      request.send_request(options)
    end

    # <p>Changes the list of users that belong to the user group.</p>
    # @param [Hash, Types::ModifyUserGroupMessage] params
    # @option params [String] :user_group_id
    #   <p>The ID of the user group.</p>
    # @option params [Array<String>] :user_ids_to_add
    #   <p>The list of user IDs to add to the user group.</p>
    # @option params [Array<String>] :user_ids_to_remove
    #   <p>The list of user IDs to remove from the user group.</p>
    # @option params [String] :engine
    #   <p>Modifies the engine listed in a user group. The options are valkey or redis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_group_id: "String", # required
    #     user_ids_to_add: ["UserId"],
    #     user_ids_to_remove: ["UserId"],
    #     engine: "EngineType"
    #   }
    #   options = {}
    #   response = client.modify_user_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_group_id: "String",
    #     status: "String",
    #     engine: "EngineType",
    #     user_ids: ["UserId"],
    #     minimum_engine_version: "String",
    #     pending_changes: {
    #       user_ids_to_remove: ["UserId"],
    #       user_ids_to_add: ["UserId"]
    #     },
    #     replication_groups: ["String"],
    #     serverless_caches: ["String"],
    #     arn: "String"
    #   }
    # @return [Types::ModifyUserGroupOutput]
    def modify_user_group(params = {}, options = {})
      request = build_request(:modify_user_group, params)
      request.send_request(options)
    end

    # <p>Allows you to purchase a reserved cache node offering. Reserved nodes are not eligible
    #             for cancellation and are non-refundable. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/reserved-nodes.html">Managing Costs with Reserved Nodes</a>.</p>
    # @param [Hash, Types::PurchaseReservedCacheNodesOfferingMessage] params
    # @option params [String] :reserved_cache_nodes_offering_id
    #   <p>The ID of the reserved cache node offering to purchase.</p>
    #            <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    # @option params [String] :reserved_cache_node_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    #            <note>
    #               <p>The Reserved Cache Node ID is an unique customer-specified identifier to track
    #                   this reservation. If this parameter is not specified, ElastiCache automatically
    #                   generates an identifier for the reservation.</p>
    #            </note>
    #            <p>Example: myreservationID</p>
    # @option params [Integer] :cache_node_count
    #   <p>The number of cache node instances to reserve.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    # @example PurchaseReservedCacheNodesOfferings
    #   # Allows you to purchase a reserved cache node offering.
    #   params = {
    #     reserved_cache_nodes_offering_id: "1ef01f5b-94ff-433f-a530-61a56bfc8e7a"
    #   }
    #   options = {}
    #   response = client.purchase_reserved_cache_nodes_offering(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_cache_nodes_offering_id: "String", # required
    #     reserved_cache_node_id: "String",
    #     cache_node_count: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.purchase_reserved_cache_nodes_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_cache_node: {
    #       reserved_cache_node_id: "String",
    #       reserved_cache_nodes_offering_id: "String",
    #       cache_node_type: "String",
    #       start_time: Time.now,
    #       duration: 1,
    #       fixed_price: 1.0,
    #       usage_price: 1.0,
    #       cache_node_count: 1,
    #       product_description: "String",
    #       offering_type: "String",
    #       state: "String",
    #       recurring_charges: [
    #         {
    #           recurring_charge_amount: 1.0,
    #           recurring_charge_frequency: "String"
    #         }
    #       ],
    #       reservation_arn: "String"
    #     }
    #   }
    # @return [Types::PurchaseReservedCacheNodesOfferingResult]
    def purchase_reserved_cache_nodes_offering(params = {}, options = {})
      request = build_request(:purchase_reserved_cache_nodes_offering, params)
      request.send_request(options)
    end

    # <p>Redistribute slots to ensure uniform distribution across existing shards in the
    #             cluster.</p>
    # @param [Hash, Types::RebalanceSlotsInGlobalReplicationGroupMessage] params
    # @option params [String] :global_replication_group_id
    #   <p>The name of the Global datastore</p>
    # @option params [Boolean] :apply_immediately
    #   <p>If <code>True</code>, redistribution is applied immediately.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_replication_group_id: "String", # required
    #     apply_immediately: false, # required
    #   }
    #   options = {}
    #   response = client.rebalance_slots_in_global_replication_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_replication_group: {
    #       global_replication_group_id: "String",
    #       global_replication_group_description: "String",
    #       status: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       members: [
    #         {
    #           replication_group_id: "String",
    #           replication_group_region: "String",
    #           role: "String",
    #           automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #           status: "String"
    #         }
    #       ],
    #       cluster_enabled: false,
    #       global_node_groups: [
    #         {
    #           global_node_group_id: "String",
    #           slots: "String"
    #         }
    #       ],
    #       auth_token_enabled: false,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::RebalanceSlotsInGlobalReplicationGroupResult]
    def rebalance_slots_in_global_replication_group(params = {}, options = {})
      request = build_request(:rebalance_slots_in_global_replication_group, params)
      request.send_request(options)
    end

    # <p>Reboots some, or all, of the cache nodes within a provisioned cluster. This operation
    #             applies any modified cache parameter groups to the cluster. The reboot operation takes
    #             place as soon as possible, and results in a momentary outage to the cluster. During the
    #             reboot, the cluster status is set to REBOOTING.</p>
    #          <p>The reboot causes the contents of the cache (for each cache node being rebooted) to be
    #             lost.</p>
    #          <p>When the reboot is complete, a cluster event is created.</p>
    #          <p>Rebooting a cluster is currently supported on Memcached, Valkey and Redis OSS (cluster mode
    #             disabled) clusters. Rebooting is not supported on Valkey or Redis OSS (cluster mode enabled)
    #             clusters.</p>
    #          <p>If you make changes to parameters that require a Valkey or Redis OSS (cluster mode enabled) cluster
    #             reboot for the changes to be applied, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/nodes.rebooting.html">Rebooting a Cluster</a> for an alternate process.</p>
    # @param [Hash, Types::RebootCacheClusterMessage] params
    # @option params [String] :cache_cluster_id
    #   <p>The cluster identifier. This parameter is stored as a lowercase string.</p>
    # @option params [Array<String>] :cache_node_ids_to_reboot
    #   <p>A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002,
    #               etc.). To reboot an entire cluster, specify all of the cache node IDs.</p>
    # @example RebootCacheCluster
    #   # Reboots the specified nodes in the names cluster.
    #   params = {
    #     cache_cluster_id: "custom-mem1-4  ",
    #     cache_node_ids_to_reboot: [
    #       "0001",
    #       "0002"
    #     ]
    #   }
    #   options = {}
    #   response = client.reboot_cache_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       engine: "memcached",
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ],
    #         cache_parameter_group_name: "default.memcached1.4",
    #         parameter_apply_status: "in-sync"
    #       },
    #       cache_cluster_id: "my-mem-cluster",
    #       preferred_availability_zone: "Multiple",
    #       configuration_endpoint: {
    #         port: 11211,
    #         address: "my-mem-cluster.abcdef.cfg.use1.cache.amazonaws.com"
    #       },
    #       cache_security_groups: [
    #       ],
    #       cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"),
    #       auto_minor_version_upgrade: true,
    #       cache_cluster_status: "rebooting cache cluster nodes",
    #       num_cache_nodes: 2,
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:",
    #       cache_subnet_group_name: "default",
    #       engine_version: "1.4.24",
    #       pending_modified_values: {
    #       },
    #       preferred_maintenance_window: "wed:06:00-wed:07:00",
    #       cache_node_type: "cache.t2.medium"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_cluster_id: "String", # required
    #     cache_node_ids_to_reboot: ["String"], # required
    #   }
    #   options = {}
    #   response = client.reboot_cache_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_cluster: {
    #       cache_cluster_id: "String",
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       client_download_landing_page: "String",
    #       cache_node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       cache_cluster_status: "String",
    #       num_cache_nodes: 1,
    #       preferred_availability_zone: "String",
    #       preferred_outpost_arn: "String",
    #       cache_cluster_create_time: Time.now,
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         num_cache_nodes: 1,
    #         cache_node_ids_to_remove: ["String"],
    #         engine_version: "String",
    #         cache_node_type: "String",
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         scale_config: {
    #           scale_percentage: 1,
    #           scale_interval_minutes: 1
    #         }
    #       },
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       cache_security_groups: [
    #         {
    #           cache_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       cache_parameter_group: {
    #         cache_parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         cache_node_ids_to_reboot: ["String"]
    #       },
    #       cache_subnet_group_name: "String",
    #       cache_nodes: [
    #         {
    #           cache_node_id: "String",
    #           cache_node_status: "String",
    #           cache_node_create_time: Time.now,
    #           endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           parameter_group_status: "String",
    #           source_cache_node_id: "String",
    #           customer_availability_zone: "String",
    #           customer_outpost_arn: "String"
    #         }
    #       ],
    #       auto_minor_version_upgrade: false,
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       replication_group_id: "String",
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       arn: "String",
    #       replication_group_log_delivery_enabled: false,
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"]
    #     }
    #   }
    # @return [Types::RebootCacheClusterResult]
    def reboot_cache_cluster(params = {}, options = {})
      request = build_request(:reboot_cache_cluster, params)
      request.send_request(options)
    end

    # <p>Removes the tags identified by the <code>TagKeys</code> list from the named resource.
    #             A tag is a key-value pair where the key and value are case-sensitive. You can use tags
    #             to categorize and track all your ElastiCache resources, with the exception of global
    #             replication group. When you add or remove tags on replication groups, those actions will
    #             be replicated to all nodes in the replication group. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html">Resource-level permissions</a>.</p>
    # @param [Hash, Types::RemoveTagsFromResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want the tags removed,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Service Namespaces</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of <code>TagKeys</code> identifying the tags you want removed from the named
    #               resource.</p>
    # @example RemoveTagsFromResource
    #   # Removes tags identified by a list of tag keys from the list of tags on the specified resource.
    #   params = {
    #     resource_name: "arn:aws:elasticache:us-east-1:1234567890:cluster:my-mem-cluster",
    #     tag_keys: [
    #       "A",
    #       "C",
    #       "E"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         value: "Banana",
    #         key: "B"
    #       },
    #       {
    #         value: "Dog",
    #         key: "D"
    #       },
    #       {
    #         value: "Fox",
    #         key: "F"
    #       },
    #       {
    #         value: "",
    #         key: "I"
    #       },
    #       {
    #         value: "Kite",
    #         key: "K"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
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
    # @return [Types::RemoveTagsFromResourceOutput]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a cache parameter group to the engine or system default
    #             value. You can reset specific parameters by submitting a list of parameter names. To
    #             reset the entire cache parameter group, specify the <code>ResetAllParameters</code> and
    #                 <code>CacheParameterGroupName</code> parameters.</p>
    # @param [Hash, Types::ResetCacheParameterGroupMessage] params
    # @option params [String] :cache_parameter_group_name
    #   <p>The name of the cache parameter group to reset.</p>
    # @option params [Boolean] :reset_all_parameters
    #   <p>If <code>true</code>, all parameters in the cache parameter group are reset to their
    #               default values. If <code>false</code>, only the parameters listed by
    #                   <code>ParameterNameValues</code> are reset to their default values.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names to reset to their default values. If
    #                   <code>ResetAllParameters</code> is <code>true</code>, do not use
    #                   <code>ParameterNameValues</code>. If <code>ResetAllParameters</code> is
    #                   <code>false</code>, you must specify the name of at least one parameter to
    #               reset.</p>
    # @example ResetCacheParameterGroup
    #   # Modifies the parameters of a cache parameter group to the engine or system default value.
    #   params = {
    #     cache_parameter_group_name: "custom-mem1-4",
    #     reset_all_parameters: true
    #   }
    #   options = {}
    #   response = client.reset_cache_parameter_group(params, options)
    #   response.to_h #=>
    #   {
    #     cache_parameter_group_name: "custom-mem1-4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameter_name_values: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reset_cache_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_parameter_group_name: "String"
    #   }
    # @return [Types::ResetCacheParameterGroupOutput]
    def reset_cache_parameter_group(params = {}, options = {})
      request = build_request(:reset_cache_parameter_group, params)
      request.send_request(options)
    end

    # <p>Revokes ingress from a cache security group. Use this operation to disallow access
    #             from an Amazon EC2 security group that had been previously authorized.</p>
    # @param [Hash, Types::RevokeCacheSecurityGroupIngressMessage] params
    # @option params [String] :cache_security_group_name
    #   <p>The name of the cache security group to revoke ingress from.</p>
    # @option params [String] :ec2_security_group_name
    #   <p>The name of the Amazon EC2 security group to revoke access from.</p>
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner. Note that this is
    #               not the same thing as an Amazon access key ID - you must provide a valid Amazon account
    #               number for this parameter.</p>
    # @example DescribeCacheSecurityGroups
    #   # Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.
    #   params = {
    #     cache_security_group_name: "my-sec-grp",
    #     ec2_security_group_name: "my-ec2-sec-grp",
    #     ec2_security_group_owner_id: "1234567890"
    #   }
    #   options = {}
    #   response = client.revoke_cache_security_group_ingress(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_security_group_name: "String", # required
    #     ec2_security_group_name: "String", # required
    #     ec2_security_group_owner_id: "String", # required
    #   }
    #   options = {}
    #   response = client.revoke_cache_security_group_ingress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_security_group: {
    #       owner_id: "String",
    #       cache_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String"
    #         }
    #       ],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::RevokeCacheSecurityGroupIngressResult]
    def revoke_cache_security_group_ingress(params = {}, options = {})
      request = build_request(:revoke_cache_security_group_ingress, params)
      request.send_request(options)
    end

    # <p>Start the migration of data.</p>
    # @param [Hash, Types::StartMigrationMessage] params
    # @option params [String] :replication_group_id
    #   <p>The ID of the replication group to which data should be migrated.</p>
    # @option params [Array<Types::CustomerNodeEndpoint>] :customer_node_endpoint_list
    #   <p>List of endpoints from which data should be migrated. For Valkey or Redis OSS (cluster mode
    #               disabled), the list should have only one element.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     customer_node_endpoint_list: [ # required
    #       {
    #         address: "String",
    #         port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::StartMigrationResponse]
    def start_migration(params = {}, options = {})
      request = build_request(:start_migration, params)
      request.send_request(options)
    end

    # <p>Represents the input of a <code>TestFailover</code> operation which tests automatic
    #             failover on a specified node group (called shard in the console) in a replication group
    #             (called cluster in the console).</p>
    #          <p>This API is designed for testing the behavior of your application in case of
    #             ElastiCache failover. It is not designed to be an operational tool for initiating a
    #             failover to overcome a problem you may have with the cluster. Moreover, in certain
    #             conditions such as large-scale operational events, Amazon may block this API. </p>
    #          <p class="title">
    #             <b>Note the following</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>A customer can use this operation to test automatic failover on up to 15 shards
    #                     (called node groups in the ElastiCache API and Amazon CLI) in any rolling
    #                     24-hour period.</p>
    #             </li>
    #             <li>
    #                <p>If calling this operation on shards in different clusters (called replication
    #                     groups in the API and CLI), the calls can be made concurrently.</p>
    #                <p> </p>
    #             </li>
    #             <li>
    #                <p>If calling this operation multiple times on different shards in the same Valkey or Redis OSS (cluster mode enabled) replication group, the first node replacement must
    #                     complete before a subsequent call can be made.</p>
    #             </li>
    #             <li>
    #                <p>To determine whether the node replacement is complete you can check Events
    #                     using the Amazon ElastiCache console, the Amazon CLI, or the ElastiCache API.
    #                     Look for the following automatic failover related events, listed here in order
    #                     of occurrance:</p>
    #                <ol>
    #                   <li>
    #                      <p>Replication group message: <code>Test Failover API called for node
    #                                 group <node-group-id></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Cache cluster message: <code>Failover from primary node
    #                                 <primary-node-id> to replica node <node-id>
    #                                 completed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Replication group message: <code>Failover from primary node
    #                                 <primary-node-id> to replica node <node-id>
    #                                 completed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Cache cluster message: <code>Recovering cache nodes
    #                                 <node-id></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Cache cluster message: <code>Finished recovery for cache nodes
    #                                 <node-id></code>
    #                      </p>
    #                   </li>
    #                </ol>
    #                <p>For more information see:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ECEvents.Viewing.html">Viewing
    #                                 ElastiCache Events</a> in the <i>ElastiCache User
    #                                 Guide</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a> in the ElastiCache API Reference</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>Also see, <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html#auto-failover-test">Testing
    #                 Multi-AZ </a> in the <i>ElastiCache User Guide</i>.</p>
    # @param [Hash, Types::TestFailoverMessage] params
    # @option params [String] :replication_group_id
    #   <p>The name of the replication group (console: cluster) whose automatic failover is being
    #               tested by this operation.</p>
    # @option params [String] :node_group_id
    #   <p>The name of the node group (called shard in the console) in this replication group on
    #               which automatic failover is to be tested. You may test automatic failover on up to 15
    #               node groups in any rolling 24-hour period.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     node_group_id: "AllowedNodeGroupId", # required
    #   }
    #   options = {}
    #   response = client.test_failover(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::TestFailoverResult]
    def test_failover(params = {}, options = {})
      request = build_request(:test_failover, params)
      request.send_request(options)
    end

    # <p> Async API to test connection between source and target replication group. </p>
    # @param [Hash, Types::TestMigrationMessage] params
    # @option params [String] :replication_group_id
    #   <p> The ID of the replication group to which data is to be migrated. </p>
    # @option params [Array<Types::CustomerNodeEndpoint>] :customer_node_endpoint_list
    #   <p> List of endpoints from which data should be migrated. List should have only one
    #               element. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_group_id: "String", # required
    #     customer_node_endpoint_list: [ # required
    #       {
    #         address: "String",
    #         port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.test_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_group: {
    #       replication_group_id: "String",
    #       description: "String",
    #       global_replication_group_info: {
    #         global_replication_group_id: "String",
    #         global_replication_group_member_role: "String"
    #       },
    #       status: "String",
    #       pending_modified_values: {
    #         primary_cluster_id: "String",
    #         automatic_failover_status: "enabled" # One of: ["enabled", "disabled"],
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         auth_token_status: "SETTING" # One of: ["SETTING", "ROTATING"],
    #         user_groups: {
    #           user_group_ids_to_add: ["UserGroupId"],
    #           user_group_ids_to_remove: ["UserGroupId"]
    #         },
    #         log_delivery_configurations: [
    #           {
    #             log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #             destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #             destination_details: {
    #               cloud_watch_logs_details: {
    #                 log_group: "String"
    #               },
    #               kinesis_firehose_details: {
    #                 delivery_stream: "String"
    #               }
    #             },
    #             log_format: "text" # One of: ["text", "json"]
    #           }
    #         ],
    #         transit_encryption_enabled: false,
    #         transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #         cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"]
    #       },
    #       member_clusters: ["String"],
    #       node_groups: [
    #         {
    #           node_group_id: "String",
    #           status: "String",
    #           primary_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           reader_endpoint: {
    #             address: "String",
    #             port: 1
    #           },
    #           slots: "String",
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "String",
    #               cache_node_id: "String",
    #               read_endpoint: {
    #                 address: "String",
    #                 port: 1
    #               },
    #               preferred_availability_zone: "String",
    #               preferred_outpost_arn: "String",
    #               current_role: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       snapshotting_cluster_id: "String",
    #       automatic_failover: "enabled" # One of: ["enabled", "disabled", "enabling", "disabling"],
    #       multi_az: "enabled" # One of: ["enabled", "disabled"],
    #       configuration_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       snapshot_retention_limit: 1,
    #       snapshot_window: "String",
    #       cluster_enabled: false,
    #       cache_node_type: "String",
    #       auth_token_enabled: false,
    #       auth_token_last_modified_date: Time.now,
    #       transit_encryption_enabled: false,
    #       at_rest_encryption_enabled: false,
    #       member_clusters_outpost_arns: ["String"],
    #       kms_key_id: "String",
    #       arn: "String",
    #       user_group_ids: ["UserGroupId"],
    #       log_delivery_configurations: [
    #         {
    #           log_type: "slow-log" # One of: ["slow-log", "engine-log"],
    #           destination_type: "cloudwatch-logs" # One of: ["cloudwatch-logs", "kinesis-firehose"],
    #           destination_details: {
    #             cloud_watch_logs_details: {
    #               log_group: "String"
    #             },
    #             kinesis_firehose_details: {
    #               delivery_stream: "String"
    #             }
    #           },
    #           log_format: "text" # One of: ["text", "json"],
    #           status: "active" # One of: ["active", "enabling", "modifying", "disabling", "error"],
    #           message: "String"
    #         }
    #       ],
    #       replication_group_create_time: Time.now,
    #       data_tiering: "enabled" # One of: ["enabled", "disabled"],
    #       auto_minor_version_upgrade: false,
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"],
    #       transit_encryption_mode: "preferred" # One of: ["preferred", "required"],
    #       cluster_mode: "enabled" # One of: ["enabled", "disabled", "compatible"],
    #       engine: "String"
    #     }
    #   }
    # @return [Types::TestMigrationResponse]
    def test_migration(params = {}, options = {})
      request = build_request(:test_migration, params)
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
      context[:gem_name] = 'aws-sdk-elasticache'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        cache_cluster_available: Waiters::CacheClusterAvailable,
        cache_cluster_deleted: Waiters::CacheClusterDeleted,
        replication_group_available: Waiters::ReplicationGroupAvailable,
        replication_group_deleted: Waiters::ReplicationGroupDeleted
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
