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
require 'aws-sdk-docdb/plugins/cross_region_copying'

module Aws::DocDB
  # An API client for Aws::DocDB.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonRDSv19
    @identifier = :docdb

    add_plugin(::Aws::DocDB::Plugins::Endpoint)
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
    add_plugin(Aws::DocDB::Plugins::CrossRegionCopying)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DocDB::EndpointProvider)
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

    # <p>Adds a source identifier to an existing event notification
    #             subscription.</p>
    # @param [Hash, Types::AddSourceIdentifierToSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you
    #               want to add a source identifier to.</p>
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source to be added:</p>
    #            <ul>
    #               <li>
    #                  <p>If the source type is an instance, a
    #                       <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a security group, a
    #                       <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a parameter group, a
    #                       <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a snapshot, a
    #                       <code>DBSnapshotIdentifier</code> must be provided.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.add_source_identifier_to_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false,
    #       event_subscription_arn: "String"
    #     }
    #   }
    # @return [Types::AddSourceIdentifierToSubscriptionResult]
    def add_source_identifier_to_subscription(params = {}, options = {})
      request = build_request(:add_source_identifier_to_subscription, params)
      request.send_request(options)
    end

    # <p>Adds metadata tags to an Amazon DocumentDB resource. You can use these tags
    #             with cost allocation reporting to track costs that are associated
    #             with Amazon DocumentDB resources or in a <code>Condition</code> statement in
    #             an Identity and Access Management (IAM) policy for Amazon DocumentDB.</p>
    # @param [Hash, Types::AddTagsToResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource that the tags are added to. This value is an
    #               Amazon Resource Name .</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Amazon DocumentDB resource.</p>
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
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Applies a pending maintenance action to a resource (for example,
    #             to an Amazon DocumentDB instance).</p>
    # @param [Hash, Types::ApplyPendingMaintenanceActionMessage] params
    # @option params [String] :resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending
    #               maintenance action applies to.</p>
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request or undoes an
    #               opt-in request. An opt-in request of type <code>immediate</code>
    #               can't be undone.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action
    #                       immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance
    #                       action during the next maintenance window for the resource.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing
    #                       <code>next-maintenance</code> opt-in requests.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "String", # required
    #     apply_action: "String", # required
    #     opt_in_type: "String", # required
    #   }
    #   options = {}
    #   response = client.apply_pending_maintenance_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_pending_maintenance_actions: {
    #       resource_identifier: "String",
    #       pending_maintenance_action_details: [
    #         {
    #           action: "String",
    #           auto_applied_after_date: Time.now,
    #           forced_apply_date: Time.now,
    #           opt_in_status: "String",
    #           current_apply_date: Time.now,
    #           description: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ApplyPendingMaintenanceActionResult]
    def apply_pending_maintenance_action(params = {}, options = {})
      request = build_request(:apply_pending_maintenance_action, params)
      request.send_request(options)
    end

    # <p>Copies the specified cluster parameter group.</p>
    # @param [Hash, Types::CopyDBClusterParameterGroupMessage] params
    # @option params [String] :source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>If the source cluster parameter group is in the same Amazon Web Services Region as the copy, specify a valid parameter group identifier; for example, <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                  <p>If the source parameter group is in a different Amazon Web Services Region than the copy, specify a valid cluster parameter group ARN; for example, <code>arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-param-group1</code>
    #            </p>
    # @option params [String] :target_db_cluster_parameter_group_description
    #   <p>A description for the copied cluster parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that are to be assigned to the parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_db_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_parameter_group: {
    #       db_cluster_parameter_group_name: "String",
    #       db_parameter_group_family: "String",
    #       description: "String",
    #       db_cluster_parameter_group_arn: "String"
    #     }
    #   }
    # @return [Types::CopyDBClusterParameterGroupResult]
    def copy_db_cluster_parameter_group(params = {}, options = {})
      request = build_request(:copy_db_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Copies a snapshot of a cluster.</p>
    #          <p>To copy a cluster snapshot from a shared manual cluster snapshot,
    #             <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon
    #             Resource Name (ARN) of the shared cluster snapshot. You can only
    #             copy a shared DB cluster snapshot, whether encrypted or not, in the
    #             same Amazon Web Services Region.</p>
    #          <p>To cancel the copy operation after it is in progress, delete the
    #             target cluster snapshot identified by
    #             <code>TargetDBClusterSnapshotIdentifier</code> while that cluster
    #             snapshot is in the <i>copying</i> status.</p>
    # @param [Hash, Types::CopyDBClusterSnapshotMessage] params
    # @option params [String] :source_db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to copy. This parameter is
    #               not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid system snapshot in the
    #                       <i>available</i> state.</p>
    #               </li>
    #               <li>
    #                  <p>If the source snapshot is in the same Amazon Web Services Region as the copy, specify a valid snapshot identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If the source snapshot is in a different Amazon Web Services Region than the copy, specify a valid cluster snapshot ARN.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    # @option params [String] :target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new cluster snapshot to create from the
    #               source cluster snapshot. This parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key ID for an encrypted cluster snapshot. The KMS
    #               key ID is the Amazon Resource Name (ARN), KMS key identifier, or
    #               the KMS key alias for the KMS encryption key. </p>
    #            <p>If you copy an encrypted cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the cluster snapshot is encrypted with the same KMS key as the source cluster snapshot.</p>
    #            <p>If you copy an encrypted cluster snapshot that is shared from another Amazon Web Services account, then you must specify a value for <code>KmsKeyId</code>.</p>
    #            <p>To copy an encrypted cluster snapshot to another Amazon Web Services Region, set <code>KmsKeyId</code> to the KMS key ID that you want to use to encrypt the copy of the cluster snapshot in the destination Region. KMS encryption keys are specific to the Amazon Web Services Region that they are created in, and you can't use encryption keys from one Amazon Web Services Region in another Amazon Web Services Region.</p>
    #            <p>If you copy an unencrypted cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>
    # @option params [String] :pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the<code>CopyDBClusterSnapshot</code> API action in the Amazon Web Services Region that contains the source cluster snapshot to copy. You must use the <code>PreSignedUrl</code> parameter when copying a cluster snapshot from another Amazon Web Services Region.</p>
    #            <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify
    #               <code>SourceRegion</code> (or <code>--source-region</code> for the
    #               CLI) instead of specifying <code>PreSignedUrl</code> manually.
    #               Specifying <code>SourceRegion</code> autogenerates a pre-signed URL
    #               that is a valid request for the operation that can be executed in
    #               the source Amazon Web Services Region.</p>
    #            <p>The presigned URL must be a valid request for the
    #               <code>CopyDBClusterSnapshot</code> API action that can be executed
    #               in the source Amazon Web Services Region that contains the cluster snapshot to be
    #               copied. The presigned URL request must contain the following
    #               parameter values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SourceRegion</code> - The ID of the region that
    #                       contains the snapshot to be copied.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SourceDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the the encrypted cluster snapshot to be
    #                       copied. This identifier must be in the Amazon Resource Name
    #                       (ARN) format for the source Amazon Web Services Region. For example, if you
    #                       are copying an encrypted cluster snapshot from the us-east-1
    #                       Amazon Web Services Region, then your
    #                       <code>SourceDBClusterSnapshotIdentifier</code> looks
    #                       something like the following:
    #                       <code>arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the new cluster snapshot to be created. This
    #                       parameter isn't case sensitive.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :copy_tags
    #   <p>Set to <code>true</code> to copy all tags from the source cluster
    #               snapshot to the target cluster snapshot, and otherwise
    #               <code>false</code>. The default is <code>false</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
    # @option params [String] :source_region
    #   <p>The source region of the snapshot. This is only needed when the shapshot is encrypted and in a different region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_db_cluster_snapshot_identifier: "String", # required
    #     target_db_cluster_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     copy_tags: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     source_region: "String"
    #   }
    #   options = {}
    #   response = client.copy_db_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_snapshot: {
    #       availability_zones: ["String"],
    #       db_cluster_snapshot_identifier: "String",
    #       db_cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       engine: "String",
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::CopyDBClusterSnapshotResult]
    def copy_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:copy_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon DocumentDB cluster.</p>
    # @param [Hash, Types::CreateDBClusterMessage] params
    # @option params [Array<String>] :availability_zones
    #   <p>A list of Amazon EC2 Availability Zones that instances in the
    #               cluster can be created in.</p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You
    #               must specify a minimum value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster</code>
    #            </p>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to associate with this
    #               cluster.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this cluster.
    #               </p>
    # @option params [String] :db_subnet_group_name
    #   <p>A subnet group to associate with this cluster.</p>
    #            <p>Constraints: Must match the name of an existing
    #               <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    #            <p>Valid values: <code>docdb</code>
    #            </p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use. The <code>--engine-version</code> will default to the latest major engine version. For production workloads, we recommend explicitly declaring this parameter with the intended major engine version.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the instances in the cluster accept
    #               connections.</p>
    # @option params [String] :master_username
    #   <p>The name of the master user for the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word for the chosen database engine.
    #                       </p>
    #               </li>
    #            </ul>
    # @option params [String] :master_user_password
    #   <p>The password for the master database user. This password can
    #               contain any printable ASCII character except forward slash (/),
    #               double quote ("), or the "at" symbol (@).</p>
    #            <p>Constraints: Must contain from 8 to 100 characters.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if
    #               automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur,
    #               in Universal Coordinated Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the cluster.</p>
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the cluster is encrypted.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier for an encrypted cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a cluster using the same Amazon Web Services account that owns the KMS encryption key that is used to encrypt the new cluster, you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>If an encryption key is not specified in <code>KmsKeyId</code>:
    #               </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>StorageEncrypted</code> parameter is
    #                       <code>true</code>, Amazon DocumentDB uses your default encryption key.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Regions.</p>
    # @option params [String] :pre_signed_url
    #   <p>Not currently supported.
    #               </p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that need to be enabled for exporting to Amazon
    #               CloudWatch Logs. You can enable audit logs or profiler logs. For more
    #               information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html">
    #                   Auditing Amazon DocumentDB Events</a>
    #               and <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html">
    #                   Profiling Amazon DocumentDB Operations</a>.
    #           </p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If
    #               <code>DeletionProtection</code> is enabled, the cluster cannot be
    #               deleted unless it is modified and <code>DeletionProtection</code> is
    #               disabled. <code>DeletionProtection</code> protects clusters from
    #               being accidentally deleted.</p>
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
    # @option params [String] :storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #            <note>
    #               <p>When you create a DocumentDB DB cluster with the storage type set to <code>iopt1</code>, the storage type is returned
    #                       in the response. The storage type isn't returned when you set it to <code>standard</code>.</p>
    #            </note>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    # @option params [Boolean] :manage_master_user_password
    #   <p>Specifies whether to manage the master user password with Amazon Web Services Secrets Manager.</p>
    #            <p>Constraint: You can't manage the master user password with Amazon Web Services Secrets Manager if <code>MasterUserPassword</code> is specified.</p>
    # @option params [String] :master_user_secret_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to encrypt a secret that is automatically generated and managed in Amazon Web Services Secrets Manager.
    #               This setting is valid only if the master user password is managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the DB cluster.</p>
    #            <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. 
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #            <p>If you don't specify <code>MasterUserSecretKmsKeyId</code>, then the <code>aws/secretsmanager</code> KMS key is used to encrypt the secret. 
    #               If the secret is in a different Amazon Web Services account, then you can't use the <code>aws/secretsmanager</code> KMS key to encrypt the secret, and you must use a customer managed KMS key.</p>
    #            <p>There is a default KMS key for your Amazon Web Services account. 
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    # @option params [String] :source_region
    #   <p>The source region of the snapshot. This is only needed when the shapshot is encrypted and in a different region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     db_cluster_identifier: "String", # required
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     db_subnet_group_name: "String",
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     master_username: "String",
    #     master_user_password: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     global_cluster_identifier: "GlobalClusterIdentifier",
    #     storage_type: "String",
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     source_region: "String"
    #   }
    #   options = {}
    #   response = client.create_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateDBClusterResult]
    def create_db_cluster(params = {}, options = {})
      request = build_request(:create_db_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new cluster parameter group.</p>
    #          <p>Parameters in a cluster parameter group apply to all of the
    #             instances in a cluster.</p>
    #          <p>A cluster parameter group is initially created with the default
    #             parameters for the database engine used by instances in the cluster.
    #             In Amazon DocumentDB, you cannot make modifications directly to the
    #             <code>default.docdb3.6</code> cluster parameter group. If your
    #             Amazon DocumentDB cluster is using the default cluster parameter group and you
    #             want to modify a value in it, you must first <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html">
    #                 create a new parameter group</a>
    #             or <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html">
    #                 copy an existing parameter group</a>,
    #             modify it, and then apply the modified parameter group to your
    #             cluster. For the new cluster parameter group and associated settings
    #             to take effect, you must then reboot the instances in the cluster
    #             without failover. For more information,
    #             see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html">
    #                 Modifying Amazon DocumentDB Cluster Parameter Groups</a>.
    #             </p>
    # @param [Hash, Types::CreateDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must not match the name of an existing
    #                       <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    # @option params [String] :db_parameter_group_family
    #   <p>The cluster parameter group family name.</p>
    # @option params [String] :description
    #   <p>The description for the cluster parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the cluster parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_db_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_parameter_group: {
    #       db_cluster_parameter_group_name: "String",
    #       db_parameter_group_family: "String",
    #       description: "String",
    #       db_cluster_parameter_group_arn: "String"
    #     }
    #   }
    # @return [Types::CreateDBClusterParameterGroupResult]
    def create_db_cluster_parameter_group(params = {}, options = {})
      request = build_request(:create_db_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of a cluster. </p>
    # @param [Hash, Types::CreateDBClusterSnapshotMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot. This parameter is stored
    #               as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to create a snapshot for. This
    #               parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_snapshot_identifier: "String", # required
    #     db_cluster_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_db_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_snapshot: {
    #       availability_zones: ["String"],
    #       db_cluster_snapshot_identifier: "String",
    #       db_cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       engine: "String",
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::CreateDBClusterSnapshotResult]
    def create_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:create_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new instance.</p>
    # @param [Hash, Types::CreateDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    # @option params [String] :db_instance_class
    #   <p>The compute and memory capacity of the instance; for example,
    #                   <code>db.r5.large</code>. </p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #            <p>Valid value: <code>docdb</code>
    #            </p>
    # @option params [String] :availability_zone
    #   <p>The Amazon EC2 Availability Zone that the instance is created in. </p>
    #            <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #            <p>Example: <code>us-east-1d</code>
    #            </p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the instance. You can assign up to
    #              10 tags to an instance.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster that the instance will belong to.</p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    #               primary instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid values: 0-15</p>
    # @option params [Boolean] :enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    # @option params [String] :performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #            <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #            <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    # @option params [String] :ca_certificate_identifier
    #   <p>The CA certificate identifier to use for the DB instance's server certificate.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #               Certificates</a> and 
    #               <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                   Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                       Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     availability_zone: "String",
    #     preferred_maintenance_window: "String",
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     db_cluster_identifier: "String", # required
    #     copy_tags_to_snapshot: false,
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     ca_certificate_identifier: "String"
    #   }
    #   options = {}
    #   response = client.create_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_instance: {
    #       db_instance_identifier: "String",
    #       db_instance_class: "String",
    #       engine: "String",
    #       db_instance_status: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       db_subnet_group: {
    #         db_subnet_group_name: "String",
    #         db_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         db_subnet_group_arn: "String"
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         db_instance_class: "String",
    #         allocated_storage: 1,
    #         master_user_password: "String",
    #         port: 1,
    #         backup_retention_period: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         license_model: "String",
    #         iops: 1,
    #         db_instance_identifier: "String",
    #         storage_type: "String",
    #         ca_certificate_identifier: "String",
    #         db_subnet_group_name: "String",
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         }
    #       },
    #       latest_restorable_time: Time.now,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       copy_tags_to_snapshot: false,
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       certificate_details: {
    #         ca_identifier: "String",
    #         valid_till: Time.now
    #       },
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String"
    #     }
    #   }
    # @return [Types::CreateDBInstanceResult]
    def create_db_instance(params = {}, options = {})
      request = build_request(:create_db_instance, params)
      request.send_request(options)
    end

    # <p>Creates a new subnet group. subnet groups must contain at least one subnet in at
    #             least two Availability Zones in the Amazon Web Services Region.</p>
    # @param [Hash, Types::CreateDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores,
    #               spaces, or hyphens. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the subnet group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_db_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_subnet_group: {
    #       db_subnet_group_name: "String",
    #       db_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       db_subnet_group_arn: "String"
    #     }
    #   }
    # @return [Types::CreateDBSubnetGroupResult]
    def create_db_subnet_group(params = {}, options = {})
      request = build_request(:create_db_subnet_group, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DocumentDB event notification subscription. This action requires a topic Amazon Resource Name (ARN) created by using the Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the Amazon SNS console.</p>
    #          <p>You can specify the type of source (<code>SourceType</code>) that you want to be notified of. You can also provide a list of Amazon DocumentDB sources (<code>SourceIds</code>) that trigger the events, and you can provide a list of event categories (<code>EventCategories</code>) for events that you want to be notified of. For example, you can specify <code>SourceType = db-instance</code>, <code>SourceIds = mydbinstance1, mydbinstance2</code> and <code>EventCategories = Availability, Backup</code>.</p>
    #          <p>If you specify both the <code>SourceType</code> and <code>SourceIds</code> (such as <code>SourceType = db-instance</code> and <code>SourceIdentifier = myDBInstance1</code>), you are notified of all the <code>db-instance</code> events for the specified source. If you specify a <code>SourceType</code> but do not specify a <code>SourceIdentifier</code>, you receive notice of the events for that source type for all your Amazon DocumentDB sources. If you do not specify either the <code>SourceType</code> or the <code>SourceIdentifier</code>, you are notified of events generated from all Amazon DocumentDB sources belonging to your customer account.</p>
    # @param [Hash, Types::CreateEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the subscription.</p>
    #            <p>Constraints: The name must be fewer than 255 characters.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. Amazon SNS creates the ARN when you create a topic and subscribe to it.</p>
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, you would set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-cluster</code>,
    #                   <code>db-parameter-group</code>, <code>db-security-group</code>,
    #                   <code>db-cluster-snapshot</code>
    #            </p>
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe to. </p>
    # @option params [Array<String>] :source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a
    #               hyphen or contain two consecutive hyphens.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>SourceIds</code> are provided, <code>SourceType</code> must also be
    #                       provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is an instance, a <code>DBInstanceIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a security group, a <code>DBSecurityGroupName</code>
    #                       must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a parameter group, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a snapshot, a <code>DBSnapshotIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, set to <code>false</code> to create the subscription but not active it. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the event subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false,
    #       event_subscription_arn: "String"
    #     }
    #   }
    # @return [Types::CreateEventSubscriptionResult]
    def create_event_subscription(params = {}, options = {})
      request = build_request(:create_event_subscription, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DocumentDB global cluster that can span multiple multiple Amazon Web Services Regions. The global cluster contains one primary cluster with read-write capability, and up-to give read-only secondary clusters. Global clusters uses storage-based fast replication across regions with latencies less than one second, using dedicated infrastructure with no impact to your workload’s performance.</p>
    #          <p></p>
    #          <p>You can create a global cluster that is initially empty, and then add a primary and a secondary to it. Or you can specify an existing cluster during the create operation, and this cluster becomes the primary of the global cluster. </p>
    #          <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #          </note>
    # @param [Hash, Types::CreateGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
    # @option params [String] :source_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) to use as the primary cluster of the global cluster. This parameter is optional.</p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    # @option params [String] :engine_version
    #   <p>The engine version of the global cluster.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>The deletion protection setting for the new global cluster. The global cluster can't be deleted when deletion protection is enabled. </p>
    # @option params [String] :database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon DocumentDB will not create a database in the global cluster you are creating.</p>
    # @option params [Boolean] :storage_encrypted
    #   <p>The storage encryption setting for the new global cluster. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     source_db_cluster_identifier: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     deletion_protection: false,
    #     database_name: "String",
    #     storage_encrypted: false
    #   }
    #   options = {}
    #   response = client.create_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateGlobalClusterResult]
    def create_global_cluster(params = {}, options = {})
      request = build_request(:create_global_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a previously provisioned cluster. When you delete a cluster, all automated backups for that cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified cluster are not deleted.</p>
    #          <p></p>
    # @param [Hash, Types::DeleteDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier for the cluster to be deleted. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final cluster snapshot is created before the cluster is deleted. If <code>true</code> is specified, no cluster snapshot is created. If <code>false</code> is specified, a cluster snapshot is created before the DB cluster is deleted. </p>
    #            <note>
    #               <p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must specify a <code>FinalDBSnapshotIdentifier</code> parameter.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The cluster snapshot identifier of the new cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p>
    #            <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to <code>true</code> results in an error. </p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String"
    #   }
    #   options = {}
    #   response = client.delete_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteDBClusterResult]
    def delete_db_cluster(params = {}, options = {})
      request = build_request(:delete_db_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a specified cluster parameter group. The cluster parameter group to be deleted can't be associated with any clusters.</p>
    # @param [Hash, Types::DeleteDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any clusters.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_db_cluster_parameter_group(params = {}, options = {})
      request = build_request(:delete_db_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes a cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p>
    #          <note>
    #             <p>The cluster snapshot must be in the <code>available</code> state to be deleted.</p>
    #          </note>
    # @param [Hash, Types::DeleteDBClusterSnapshotMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to delete.</p>
    #            <p>Constraints: Must be the name of an existing cluster snapshot in the <code>available</code> state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_snapshot_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_snapshot: {
    #       availability_zones: ["String"],
    #       db_cluster_snapshot_identifier: "String",
    #       db_cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       engine: "String",
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::DeleteDBClusterSnapshotResult]
    def delete_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:delete_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes a previously provisioned instance.</p>
    # @param [Hash, Types::DeleteDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier for the instance to be deleted. This parameter isn't
    #               case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing instance.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_instance: {
    #       db_instance_identifier: "String",
    #       db_instance_class: "String",
    #       engine: "String",
    #       db_instance_status: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       db_subnet_group: {
    #         db_subnet_group_name: "String",
    #         db_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         db_subnet_group_arn: "String"
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         db_instance_class: "String",
    #         allocated_storage: 1,
    #         master_user_password: "String",
    #         port: 1,
    #         backup_retention_period: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         license_model: "String",
    #         iops: 1,
    #         db_instance_identifier: "String",
    #         storage_type: "String",
    #         ca_certificate_identifier: "String",
    #         db_subnet_group_name: "String",
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         }
    #       },
    #       latest_restorable_time: Time.now,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       copy_tags_to_snapshot: false,
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       certificate_details: {
    #         ca_identifier: "String",
    #         valid_till: Time.now
    #       },
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String"
    #     }
    #   }
    # @return [Types::DeleteDBInstanceResult]
    def delete_db_instance(params = {}, options = {})
      request = build_request(:delete_db_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a subnet group.</p>
    #          <note>
    #             <p>The specified database subnet group must not be associated with any DB
    #                 instances.</p>
    #          </note>
    # @param [Hash, Types::DeleteDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #            <note>
    #               <p>You can't delete the default subnet group.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <p>Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_subnet_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_db_subnet_group(params = {}, options = {})
      request = build_request(:delete_db_subnet_group, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon DocumentDB event notification subscription.</p>
    # @param [Hash, Types::DeleteEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false,
    #       event_subscription_arn: "String"
    #     }
    #   }
    # @return [Types::DeleteEventSubscriptionResult]
    def delete_event_subscription(params = {}, options = {})
      request = build_request(:delete_event_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a global cluster. The primary and secondary clusters must already be detached or deleted before attempting to delete a global cluster.</p>
    #          <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #          </note>
    # @param [Hash, Types::DeleteGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the global cluster being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteGlobalClusterResult]
    def delete_global_cluster(params = {}, options = {})
      request = build_request(:delete_global_cluster, params)
      request.send_request(options)
    end

    # <p>Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this Amazon Web Services account.</p>
    # @param [Hash, Types::DescribeCertificatesMessage] params
    # @option params [String] :certificate_identifier
    #   <p>The user-supplied certificate identifier. If this parameter is specified, information for only the specified certificate is returned. If this parameter is omitted, a list of up to <code>MaxRecords</code> certificates is returned. This parameter is not case sensitive.</p>
    #            <p>Constraints</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing <code>CertificateIdentifier</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Minimum: 20</p>
    #               </li>
    #               <li>
    #                  <p>Maximum: 100</p>
    #               </li>
    #            </ul>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_identifier: "String",
    #         certificate_type: "String",
    #         thumbprint: "String",
    #         valid_from: Time.now,
    #         valid_till: Time.now,
    #         certificate_arn: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::CertificateMessage]
    def describe_certificates(params = {}, options = {})
      request = build_request(:describe_certificates, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list contains only the description of the specified cluster parameter group. </p>
    # @param [Hash, Types::DescribeDBClusterParameterGroupsMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the name of an existing
    #                           <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_db_cluster_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_cluster_parameter_groups: [
    #       {
    #         db_cluster_parameter_group_name: "String",
    #         db_parameter_group_family: "String",
    #         description: "String",
    #         db_cluster_parameter_group_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterParameterGroupsMessage]
    def describe_db_cluster_parameter_groups(params = {}, options = {})
      request = build_request(:describe_db_cluster_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns the detailed parameter list for a particular cluster parameter
    #             group.</p>
    # @param [Hash, Types::DescribeDBClusterParametersMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return parameter details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the name of an existing <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>.
    #           </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String", # required
    #     source: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_db_cluster_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate" # One of: ["immediate", "pending-reboot"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeDBClusterParametersOutput]
    def describe_db_cluster_parameters(params = {}, options = {})
      request = build_request(:describe_db_cluster_parameters, params)
      request.send_request(options)
    end

    # <p>Returns a list of cluster snapshot attribute names and values for a manual DB
    #             cluster snapshot.</p>
    #          <p>When you share snapshots with other Amazon Web Services accounts,
    #                 <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the Amazon Web Services accounts that are authorized to copy or restore the manual cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual cluster snapshot is public and can be copied or restored by all Amazon Web Services accounts.</p>
    # @param [Hash, Types::DescribeDBClusterSnapshotAttributesMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to describe the attributes for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_snapshot_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_db_cluster_snapshot_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_snapshot_attributes_result: {
    #       db_cluster_snapshot_identifier: "String",
    #       db_cluster_snapshot_attributes: [
    #         {
    #           attribute_name: "String",
    #           attribute_values: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeDBClusterSnapshotAttributesResult]
    def describe_db_cluster_snapshot_attributes(params = {}, options = {})
      request = build_request(:describe_db_cluster_snapshot_attributes, params)
      request.send_request(options)
    end

    # <p>Returns information about cluster snapshots. This API operation supports pagination.</p>
    # @param [Hash, Types::DescribeDBClusterSnapshotsMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The ID of the cluster to retrieve the list of cluster snapshots for. This parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case sensitive. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>A specific cluster snapshot identifier to describe. This parameter can't be used with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                           <code>DBClusterSnapshot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #                       parameter must also be specified.</p>
    #               </li>
    #            </ul>
    # @option params [String] :snapshot_type
    #   <p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shared</code> - Return all manual cluster snapshots that have been shared to your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Return all cluster snapshots that have been marked as public.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual cluster snapshots are returned. You can include shared cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public cluster snapshots with these results by setting the<code>IncludePublic</code> parameter to <code>true</code>.</p>
    #            <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @option params [Boolean] :include_shared
    #   <p>Set to <code>true</code> to include shared manual cluster snapshots from other Amazon Web Services accounts that this Amazon Web Services account has been given permission to copy or restore, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    # @option params [Boolean] :include_public
    #   <p>Set to <code>true</code> to include manual cluster snapshots that are public and can be copied or restored by any Amazon Web Services account, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String",
    #     db_cluster_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     include_shared: false,
    #     include_public: false
    #   }
    #   options = {}
    #   response = client.describe_db_cluster_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_cluster_snapshots: [
    #       {
    #         availability_zones: ["String"],
    #         db_cluster_snapshot_identifier: "String",
    #         db_cluster_identifier: "String",
    #         snapshot_create_time: Time.now,
    #         engine: "String",
    #         status: "String",
    #         port: 1,
    #         vpc_id: "String",
    #         cluster_create_time: Time.now,
    #         master_username: "String",
    #         engine_version: "String",
    #         snapshot_type: "String",
    #         percent_progress: 1,
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         db_cluster_snapshot_arn: "String",
    #         source_db_cluster_snapshot_arn: "String",
    #         storage_type: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterSnapshotMessage]
    def describe_db_cluster_snapshots(params = {}, options = {})
      request = build_request(:describe_db_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about provisioned Amazon DocumentDB clusters. This API
    #             operation supports pagination. For certain management features
    #             such as cluster and instance lifecycle management, Amazon DocumentDB leverages
    #             operational technology that is shared with Amazon RDS and Amazon
    #             Neptune. Use the <code>filterName=engine,Values=docdb</code> filter
    #             parameter to return only Amazon DocumentDB clusters.</p>
    # @param [Hash, Types::DescribeDBClustersMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The user-provided cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more clusters to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list only includes information about the clusters identified by these ARNs.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_db_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_clusters: [
    #       {
    #         availability_zones: ["String"],
    #         backup_retention_period: 1,
    #         db_cluster_identifier: "String",
    #         db_cluster_parameter_group: "String",
    #         db_subnet_group: "String",
    #         status: "String",
    #         percent_progress: "String",
    #         earliest_restorable_time: Time.now,
    #         endpoint: "String",
    #         reader_endpoint: "String",
    #         multi_az: false,
    #         engine: "String",
    #         engine_version: "String",
    #         latest_restorable_time: Time.now,
    #         port: 1,
    #         master_username: "String",
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         replication_source_identifier: "String",
    #         read_replica_identifiers: ["String"],
    #         db_cluster_members: [
    #           {
    #             db_instance_identifier: "String",
    #             is_cluster_writer: false,
    #             db_cluster_parameter_group_status: "String",
    #             promotion_tier: 1
    #           }
    #         ],
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         hosted_zone_id: "String",
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         db_cluster_resource_id: "String",
    #         db_cluster_arn: "String",
    #         associated_roles: [
    #           {
    #             role_arn: "String",
    #             status: "String"
    #           }
    #         ],
    #         clone_group_id: "String",
    #         cluster_create_time: Time.now,
    #         enabled_cloudwatch_logs_exports: ["String"],
    #         deletion_protection: false,
    #         storage_type: "String",
    #         serverless_v2_scaling_configuration: {
    #           min_capacity: 1.0,
    #           max_capacity: 1.0
    #         },
    #         master_user_secret: {
    #           secret_arn: "String",
    #           secret_status: "String",
    #           kms_key_id: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterMessage]
    def describe_db_clusters(params = {}, options = {})
      request = build_request(:describe_db_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available engines.</p>
    # @param [Hash, Types::DescribeDBEngineVersionsMessage] params
    # @option params [String] :engine
    #   <p>The database engine to return.</p>
    # @option params [String] :engine_version
    #   <p>The database engine version to return.</p>
    #            <p>Example: <code>3.6.0</code>
    #            </p>
    # @option params [String] :db_parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match an existing
    #                       <code>DBParameterGroupFamily</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @option params [Boolean] :default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #               version combination is returned.</p>
    # @option params [Boolean] :list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
    # @option params [Boolean] :list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "String",
    #     engine_version: "String",
    #     db_parameter_group_family: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     default_only: false,
    #     list_supported_character_sets: false,
    #     list_supported_timezones: false
    #   }
    #   options = {}
    #   response = client.describe_db_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_engine_versions: [
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         db_parameter_group_family: "String",
    #         db_engine_description: "String",
    #         db_engine_version_description: "String",
    #         valid_upgrade_target: [
    #           {
    #             engine: "String",
    #             engine_version: "String",
    #             description: "String",
    #             auto_upgrade: false,
    #             is_major_version_upgrade: false
    #           }
    #         ],
    #         exportable_log_types: ["String"],
    #         supports_log_exports_to_cloudwatch_logs: false,
    #         supported_ca_certificate_identifiers: ["String"],
    #         supports_certificate_rotation_without_restart: false,
    #         serverless_v2_features_support: {
    #           min_capacity: 1.0,
    #           max_capacity: 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DBEngineVersionMessage]
    def describe_db_engine_versions(params = {}, options = {})
      request = build_request(:describe_db_engine_versions, params)
      request.send_request(options)
    end

    # <p>Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.</p>
    # @param [Hash, Types::DescribeDBInstancesMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The user-provided instance identifier. If this parameter is specified, information from only the specific instance is returned. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                       <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more instances to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list includes only the information about the instances that are associated with the clusters that are identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts instance identifiers and instance ARNs. The results list includes only the information about the instances that are identified by these ARNs.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_db_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_instances: [
    #       {
    #         db_instance_identifier: "String",
    #         db_instance_class: "String",
    #         engine: "String",
    #         db_instance_status: "String",
    #         endpoint: {
    #           address: "String",
    #           port: 1,
    #           hosted_zone_id: "String"
    #         },
    #         instance_create_time: Time.now,
    #         preferred_backup_window: "String",
    #         backup_retention_period: 1,
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         availability_zone: "String",
    #         db_subnet_group: {
    #           db_subnet_group_name: "String",
    #           db_subnet_group_description: "String",
    #           vpc_id: "String",
    #           subnet_group_status: "String",
    #           subnets: [
    #             {
    #               subnet_identifier: "String",
    #               subnet_availability_zone: {
    #                 name: "String"
    #               },
    #               subnet_status: "String"
    #             }
    #           ],
    #           db_subnet_group_arn: "String"
    #         },
    #         preferred_maintenance_window: "String",
    #         pending_modified_values: {
    #           db_instance_class: "String",
    #           allocated_storage: 1,
    #           master_user_password: "String",
    #           port: 1,
    #           backup_retention_period: 1,
    #           multi_az: false,
    #           engine_version: "String",
    #           license_model: "String",
    #           iops: 1,
    #           db_instance_identifier: "String",
    #           storage_type: "String",
    #           ca_certificate_identifier: "String",
    #           db_subnet_group_name: "String",
    #           pending_cloudwatch_logs_exports: {
    #             log_types_to_enable: ["String"],
    #             log_types_to_disable: ["String"]
    #           }
    #         },
    #         latest_restorable_time: Time.now,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         publicly_accessible: false,
    #         status_infos: [
    #           {
    #             status_type: "String",
    #             normal: false,
    #             status: "String",
    #             message: "String"
    #           }
    #         ],
    #         db_cluster_identifier: "String",
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         dbi_resource_id: "String",
    #         ca_certificate_identifier: "String",
    #         copy_tags_to_snapshot: false,
    #         promotion_tier: 1,
    #         db_instance_arn: "String",
    #         enabled_cloudwatch_logs_exports: ["String"],
    #         certificate_details: {
    #           ca_identifier: "String",
    #           valid_till: Time.now
    #         },
    #         performance_insights_enabled: false,
    #         performance_insights_kms_key_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBInstanceMessage]
    def describe_db_instances(params = {}, options = {})
      request = build_request(:describe_db_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DBSubnetGroup</code> descriptions. If a
    #                 <code>DBSubnetGroupName</code> is specified, the list will contain only the descriptions of the specified <code>DBSubnetGroup</code>.</p>
    # @param [Hash, Types::DescribeDBSubnetGroupsMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_subnet_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_db_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_subnet_groups: [
    #       {
    #         db_subnet_group_name: "String",
    #         db_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         db_subnet_group_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBSubnetGroupMessage]
    def describe_db_subnet_groups(params = {}, options = {})
      request = build_request(:describe_db_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Returns the default engine and system parameter information for the cluster database
    #             engine.</p>
    # @param [Hash, Types::DescribeEngineDefaultClusterParametersMessage] params
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the cluster parameter group family to return the engine parameter
    #               information for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_family: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_engine_default_cluster_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_defaults: {
    #       db_parameter_group_family: "String",
    #       marker: "String",
    #       parameters: [
    #         {
    #           parameter_name: "String",
    #           parameter_value: "String",
    #           description: "String",
    #           source: "String",
    #           apply_type: "String",
    #           data_type: "String",
    #           allowed_values: "String",
    #           is_modifiable: false,
    #           minimum_engine_version: "String",
    #           apply_method: "immediate" # One of: ["immediate", "pending-reboot"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeEngineDefaultClusterParametersResult]
    def describe_engine_default_cluster_parameters(params = {}, options = {})
      request = build_request(:describe_engine_default_cluster_parameters, params)
      request.send_request(options)
    end

    # <p>Displays a list of categories for all event source types, or, if specified, for a
    #             specified source type. </p>
    # @param [Hash, Types::DescribeEventCategoriesMessage] params
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_event_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_categories_map_list: [
    #       {
    #         source_type: "String",
    #         event_categories: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::EventCategoriesMessage]
    def describe_event_categories(params = {}, options = {})
      request = build_request(:describe_event_categories, params)
      request.send_request(options)
    end

    # <p>Lists all the subscription descriptions for a customer account. The description for a subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>, <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>, <code>CreationTime</code>, and <code>Status</code>.</p>
    #          <p>If you specify a <code>SubscriptionName</code>, lists the description for that subscription.</p>
    # @param [Hash, Types::DescribeEventSubscriptionsMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to
    #               describe.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_event_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     event_subscriptions_list: [
    #       {
    #         customer_aws_id: "String",
    #         cust_subscription_id: "String",
    #         sns_topic_arn: "String",
    #         status: "String",
    #         subscription_creation_time: "String",
    #         source_type: "String",
    #         source_ids_list: ["String"],
    #         event_categories_list: ["String"],
    #         enabled: false,
    #         event_subscription_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::EventSubscriptionsMessage]
    def describe_event_subscriptions(params = {}, options = {})
      request = build_request(:describe_event_subscriptions, params)
      request.send_request(options)
    end

    # <p>Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.</p>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>SourceIdentifier</code> is provided, <code>SourceType</code> must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBInstance</code>, a
    #                           <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSecurityGroup</code>, a
    #                           <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBParameterGroup</code>, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSnapshot</code>, a
    #                           <code>DBSnapshotIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    # @option params [Time] :start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    # @option params [Time] :end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    # @option params [Integer] :duration
    #   <p>The number of minutes to retrieve events for.</p>
    #            <p>Default: 60</p>
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories that trigger notifications for an event notification
    #               subscription.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_identifier: "String",
    #     source_type: "db-instance" # One of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
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
    #         source_type: "db-instance" # One of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"],
    #         message: "String",
    #         event_categories: ["String"],
    #         date: Time.now,
    #         source_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::EventsMessage]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns information about Amazon DocumentDB global  clusters. This API supports pagination.</p>
    #          <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #          </note>
    # @param [Hash, Types::DescribeGlobalClustersMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The user-supplied  cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case-sensitive.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more global DB clusters to describe.</p>
    #            <p>Supported filters: <code>db-cluster-id</code> accepts  cluster identifiers and  cluster Amazon Resource Names (ARNs). The results list will only include information about the clusters identified by these ARNs.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_global_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     global_clusters: [
    #       {
    #         global_cluster_identifier: "GlobalClusterIdentifier",
    #         global_cluster_resource_id: "String",
    #         global_cluster_arn: "String",
    #         status: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         database_name: "String",
    #         storage_encrypted: false,
    #         deletion_protection: false,
    #         global_cluster_members: [
    #           {
    #             db_cluster_arn: "String",
    #             readers: ["String"],
    #             is_writer: false
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GlobalClustersMessage]
    def describe_global_clusters(params = {}, options = {})
      request = build_request(:describe_global_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of orderable instance options for the specified engine.</p>
    # @param [Hash, Types::DescribeOrderableDBInstanceOptionsMessage] params
    # @option params [String] :engine
    #   <p>The name of the engine to retrieve instance options for.</p>
    # @option params [String] :engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #               offerings that match the specified engine version.</p>
    # @option params [String] :db_instance_class
    #   <p>The instance class filter value. Specify this parameter to show only the available
    #               offerings that match the specified instance class.</p>
    # @option params [String] :license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #               offerings that match the specified license model.</p>
    # @option params [Boolean] :vpc
    #   <p>The virtual private cloud (VPC) filter value. Specify this parameter to show only the
    #               available VPC or non-VPC offerings.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "String", # required
    #     engine_version: "String",
    #     db_instance_class: "String",
    #     license_model: "String",
    #     vpc: false,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_orderable_db_instance_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     orderable_db_instance_options: [
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         db_instance_class: "String",
    #         license_model: "String",
    #         availability_zones: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         vpc: false,
    #         storage_type: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::OrderableDBInstanceOptionsMessage]
    def describe_orderable_db_instance_options(params = {}, options = {})
      request = build_request(:describe_orderable_db_instance_options, params)
      request.send_request(options)
    end

    # <p>Returns a list of resources (for example, instances) that have at least one pending
    #             maintenance action.</p>
    # @param [Hash, Types::DescribePendingMaintenanceActionsMessage] params
    # @option params [String] :resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #               for.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
    #                       Amazon Resource Names (ARNs). The results list includes only pending maintenance
    #                       actions for the clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts instance identifiers and instance
    #                       ARNs. The results list includes only pending maintenance actions for the DB
    #                       instances identified by these ARNs.</p>
    #               </li>
    #            </ul>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_pending_maintenance_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pending_maintenance_actions: [
    #       {
    #         resource_identifier: "String",
    #         pending_maintenance_action_details: [
    #           {
    #             action: "String",
    #             auto_applied_after_date: Time.now,
    #             forced_apply_date: Time.now,
    #             opt_in_status: "String",
    #             current_apply_date: Time.now,
    #             description: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::PendingMaintenanceActionsMessage]
    def describe_pending_maintenance_actions(params = {}, options = {})
      request = build_request(:describe_pending_maintenance_actions, params)
      request.send_request(options)
    end

    # <p>Forces a failover for a cluster.</p>
    #          <p>A failover for a cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the cluster to be the primary instance (the cluster writer).</p>
    #          <p>If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.</p>
    # @param [Hash, Types::FailoverDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>A cluster identifier to force a failover for. This parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #            <p>You must specify the instance identifier for an Amazon DocumentDB replica in the cluster. For
    #               example, <code>mydbcluster-replica1</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String",
    #     target_db_instance_identifier: "String"
    #   }
    #   options = {}
    #   response = client.failover_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::FailoverDBClusterResult]
    def failover_db_cluster(params = {}, options = {})
      request = build_request(:failover_db_cluster, params)
      request.send_request(options)
    end

    # <p>Promotes the specified secondary DB cluster to be the primary DB cluster in the global cluster when failing over a global cluster occurs.</p>
    #          <p>Use this operation to respond to an unplanned event, such as a regional disaster in the primary region. 
    #             Failing over can result in a loss of write transaction data that wasn't replicated to the chosen secondary before the failover event occurred. 
    #             However, the recovery process that promotes a DB instance on the chosen seconday DB cluster to be the primary writer DB instance guarantees that the data is in a transactionally consistent state.</p>
    # @param [Hash, Types::FailoverGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier of the Amazon DocumentDB global cluster to apply this operation. 
    #               The identifier is the unique key assigned by the user when the cluster is created. 
    #               In other words, it's the name of the global cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    # @option params [String] :target_db_cluster_identifier
    #   <p>The identifier of the secondary Amazon DocumentDB cluster that you want to promote to the primary for the global cluster. 
    #               Use the Amazon Resource Name (ARN) for the identifier so that Amazon DocumentDB can locate the cluster in its Amazon Web Services region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing secondary cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    # @option params [Boolean] :allow_data_loss
    #   <p>Specifies whether to allow data loss for this global cluster operation. Allowing data loss triggers a global failover operation.</p>
    #            <p>If you don't specify <code>AllowDataLoss</code>, the global cluster operation defaults to a switchover.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Can't be specified together with the <code>Switchover</code> parameter.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :switchover
    #   <p>Specifies whether to switch over this global database cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Can't be specified together with the <code>AllowDataLoss</code> parameter.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "DBClusterIdentifier", # required
    #     allow_data_loss: false,
    #     switchover: false
    #   }
    #   options = {}
    #   response = client.failover_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::FailoverGlobalClusterResult]
    def failover_global_cluster(params = {}, options = {})
      request = build_request(:failover_global_cluster, params)
      request.send_request(options)
    end

    # <p>Lists all tags on an Amazon DocumentDB resource.</p>
    # @param [Hash, Types::ListTagsForResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
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
    # @return [Types::TagListMessage]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Modifies a setting for an Amazon DocumentDB cluster. You can change one or more database
    #             configuration parameters by specifying these parameters and the new values in the
    #             request. </p>
    # @param [Hash, Types::ModifyDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The cluster identifier for the cluster that is being modified. This parameter is
    #               not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :new_db_cluster_identifier
    #   <p>The new cluster identifier for the cluster when renaming a cluster. This
    #               value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    # @option params [Boolean] :apply_immediately
    #   <p>A value that specifies whether the changes in this request and any pending changes are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the cluster. If this
    #               parameter is set to <code>false</code>, changes to the cluster are applied during the
    #               next maintenance window.</p>
    #            <p>The <code>ApplyImmediately</code> parameter affects only the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If
    #               you set this parameter value to <code>false</code>, the changes to the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are
    #               applied during the next maintenance window. All other changes are applied immediately,
    #               regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a
    #               minimum value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to use for the cluster.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the cluster will belong
    #               to.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #            <p>Default: The same port as the original cluster.</p>
    # @option params [String] :master_user_password
    #   <p>The password for the master database user. This password can contain any printable
    #               ASCII character except forward slash (/), double quote ("), or the "at" symbol
    #               (@).</p>
    #            <p>Constraints: Must contain from 8 to 100 characters.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups
    #               are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to Amazon
    #               CloudWatch Logs for a specific instance or cluster. The
    #                   <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which
    #               logs are exported (or not exported) to CloudWatch Logs.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #                Changing this parameter results in an outage. The change is applied during
    #                the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #            <p>To list all of the available engine versions for Amazon DocumentDB use the following command:</p>
    #            <p>
    #               <code>aws docdb describe-db-engine-versions --engine docdb --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #            <p>Constraints: You must allow major version upgrades when specifying a value for the
    #                <code>EngineVersion</code> parameter that is a different major version than the DB
    #                cluster's current version.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
    #               enabled, the cluster cannot be deleted unless it is modified and
    #                   <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
    #               protects clusters from being accidentally deleted.</p>
    # @option params [String] :storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    # @option params [Boolean] :manage_master_user_password
    #   <p>Specifies whether to manage the master user password with Amazon Web Services Secrets Manager.
    #               If the cluster doesn't manage the master user password with Amazon Web Services Secrets Manager, you can turn on this management. 
    #               In this case, you can't specify <code>MasterUserPassword</code>.
    #               If the cluster already manages the master user password with Amazon Web Services Secrets Manager, and you specify that the master user password is not managed with Amazon Web Services Secrets Manager, then you must specify <code>MasterUserPassword</code>. 
    #               In this case, Amazon DocumentDB deletes the secret and uses the new password for the master user specified by <code>MasterUserPassword</code>.</p>
    # @option params [String] :master_user_secret_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to encrypt a secret that is automatically generated and managed in Amazon Web Services Secrets Manager.</p>
    #            <p>This setting is valid only if both of the following conditions are met:</p>
    #            <ul>
    #               <li>
    #                  <p>The cluster doesn't manage the master user password in Amazon Web Services Secrets Manager. 
    #                   If the cluster already manages the master user password in Amazon Web Services Secrets Manager, you can't change the KMS key that is used to encrypt the secret.</p>
    #               </li>
    #               <li>
    #                  <p>You are enabling <code>ManageMasterUserPassword</code> to manage the master user password in Amazon Web Services Secrets Manager. 
    #                   If you are turning on <code>ManageMasterUserPassword</code> and don't specify <code>MasterUserSecretKmsKeyId</code>, then the <code>aws/secretsmanager</code> KMS key is used to encrypt the secret. 
    #                   If the secret is in a different Amazon Web Services account, then you can't use the <code>aws/secretsmanager</code> KMS key to encrypt the secret, and you must use a customer managed KMS key.</p>
    #               </li>
    #            </ul>
    #            <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. 
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #            <p>There is a default KMS key for your Amazon Web Services account. 
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    # @option params [Boolean] :rotate_master_user_password
    #   <p>Specifies whether to rotate the secret managed by Amazon Web Services Secrets Manager for the master user password.</p>
    #            <p>This setting is valid only if the master user password is managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the cluster. 
    #               The secret value contains the updated password.</p>
    #            <p>Constraint: You must apply the change immediately when rotating the master user password.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     new_db_cluster_identifier: "String",
    #     apply_immediately: false,
    #     backup_retention_period: 1,
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     port: 1,
    #     master_user_password: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"]
    #     },
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     deletion_protection: false,
    #     storage_type: "String",
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     rotate_master_user_password: false
    #   }
    #   options = {}
    #   response = client.modify_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::ModifyDBClusterResult]
    def modify_db_cluster(params = {}, options = {})
      request = build_request(:modify_db_cluster, params)
      request.send_request(options)
    end

    # <p> Modifies the parameters of a cluster parameter group. To modify more than one
    #             parameter, submit a list of the following: <code>ParameterName</code>,
    #                 <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20
    #             parameters can be modified in a single request. </p>
    #          <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static
    #                 parameters require a reboot or maintenance window
    #                 
    #                 before the change can take effect.</p>
    #          </note>
    #          <important>
    #             <p>After you create a cluster parameter group, you should wait at least 5 minutes
    #                 before creating your first cluster that uses that cluster parameter group as
    #                 the default parameter group. This allows Amazon DocumentDB to fully complete the create action
    #                 before the parameter group is used as the default for a new cluster. This step is
    #                 especially important for parameters that are critical when creating the default
    #                 database for a cluster, such as the character set for the default database
    #                 defined by the <code>character_set_database</code> parameter.</p>
    #          </important>
    # @param [Hash, Types::ModifyDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to modify.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameters in the cluster parameter group to modify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate" # One of: ["immediate", "pending-reboot"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_db_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_parameter_group_name: "String"
    #   }
    # @return [Types::ModifyDBClusterParameterGroupOutput]
    def modify_db_cluster_parameter_group(params = {}, options = {})
      request = build_request(:modify_db_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Adds an attribute and values to, or removes an attribute and values from, a manual cluster snapshot.</p>
    #          <p>To share a manual cluster snapshot with other Amazon Web Services accounts, specify <code>restore</code> as the <code>AttributeName</code>, and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the Amazon Web Services accounts that are authorized to restore the manual cluster snapshot. Use the value <code>all</code> to make the manual cluster snapshot public, which means that it can be copied or restored by all Amazon Web Services accounts. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want available to all Amazon Web Services accounts. If a manual cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized Amazon Web Services account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p>
    # @param [Hash, Types::ModifyDBClusterSnapshotAttributeMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to modify the attributes for.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the cluster snapshot attribute to modify.</p>
    #            <p>To manage authorization for other Amazon Web Services accounts to copy or restore a manual cluster
    #               snapshot, set this value to <code>restore</code>.</p>
    # @option params [Array<String>] :values_to_add
    #   <p>A list of cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
    #            <p>To authorize other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account IDs. To make the manual cluster snapshot restorable by any Amazon Web Services account, set it to <code>all</code>. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want to be available to all Amazon Web Services accounts.</p>
    # @option params [Array<String>] :values_to_remove
    #   <p>A list of cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
    #            <p>To remove authorization for other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account identifiers. To remove authorization for any Amazon Web Services account to copy or restore the cluster snapshot, set it to <code>all</code> . If you specify <code>all</code>, an Amazon Web Services account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual cluster snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_snapshot_identifier: "String", # required
    #     attribute_name: "String", # required
    #     values_to_add: ["String"],
    #     values_to_remove: ["String"]
    #   }
    #   options = {}
    #   response = client.modify_db_cluster_snapshot_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_snapshot_attributes_result: {
    #       db_cluster_snapshot_identifier: "String",
    #       db_cluster_snapshot_attributes: [
    #         {
    #           attribute_name: "String",
    #           attribute_values: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ModifyDBClusterSnapshotAttributeResult]
    def modify_db_cluster_snapshot_attribute(params = {}, options = {})
      request = build_request(:modify_db_cluster_snapshot_attribute, params)
      request.send_request(options)
    end

    # <p>Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.</p>
    # @param [Hash, Types::ModifyDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_instance_class
    #   <p>The new compute and memory capacity of the instance; for example, <code>db.r5.large</code>. Not all instance classes are available in all Amazon Web Services Regions. </p>
    #            <p>If you modify the instance class, an outage occurs during the change. The change is
    #               applied during the next maintenance window, unless <code>ApplyImmediately</code> is
    #               specified as <code>true</code> for this request. </p>
    #            <p>Default: Uses existing setting.</p>
    # @option params [Boolean] :apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the instance. </p>
    #            <p> If this parameter is set to <code>false</code>, changes to the instance are
    #               applied during the next maintenance window. Some parameter changes can cause an outage
    #               and are applied on the next reboot.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #               result in an outage. Changing this parameter doesn't result in an outage except in the
    #               following situation, and the change is asynchronously applied as soon as possible. If
    #               there are pending actions that cause a reboot, and the maintenance window is changed to
    #               include the current time, changing this parameter causes a reboot of the instance. If
    #               you are moving this window to the current time, there must be at least 30 minutes
    #               between the current time and end of the window to ensure that pending changes are
    #               applied.</p>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Must be at least 30 minutes.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    # @option params [String] :new_db_instance_identifier
    #   <p> The new instance identifier for the instance when renaming an instance. When you change the instance identifier, an instance reboot occurs immediately if you set <code>Apply Immediately</code> to <code>true</code>. It occurs during the next maintenance window if you set <code>Apply Immediately</code> to <code>false</code>. This value is stored as a lowercase string. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    # @option params [String] :ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid values: 0-15</p>
    # @option params [Boolean] :enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    # @option params [String] :performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #            <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #            <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    # @option params [Boolean] :certificate_rotation_restart
    #   <p>Specifies whether the DB instance is restarted when you rotate your 
    #               SSL/TLS certificate.</p>
    #            <p>By default, the DB instance is restarted when you rotate your SSL/TLS certificate. The certificate 
    #               is not updated until the DB instance is restarted.</p>
    #            <important>
    #               <p>Set this parameter only if you are <i>not</i> using SSL/TLS to connect to the DB instance.</p>
    #            </important>
    #            <p>If you are using SSL/TLS to connect to the DB instance, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #               Certificates</a> and 
    #               <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                   Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                       Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     apply_immediately: false,
    #     preferred_maintenance_window: "String",
    #     auto_minor_version_upgrade: false,
    #     new_db_instance_identifier: "String",
    #     ca_certificate_identifier: "String",
    #     copy_tags_to_snapshot: false,
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     certificate_rotation_restart: false
    #   }
    #   options = {}
    #   response = client.modify_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_instance: {
    #       db_instance_identifier: "String",
    #       db_instance_class: "String",
    #       engine: "String",
    #       db_instance_status: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       db_subnet_group: {
    #         db_subnet_group_name: "String",
    #         db_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         db_subnet_group_arn: "String"
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         db_instance_class: "String",
    #         allocated_storage: 1,
    #         master_user_password: "String",
    #         port: 1,
    #         backup_retention_period: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         license_model: "String",
    #         iops: 1,
    #         db_instance_identifier: "String",
    #         storage_type: "String",
    #         ca_certificate_identifier: "String",
    #         db_subnet_group_name: "String",
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         }
    #       },
    #       latest_restorable_time: Time.now,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       copy_tags_to_snapshot: false,
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       certificate_details: {
    #         ca_identifier: "String",
    #         valid_till: Time.now
    #       },
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String"
    #     }
    #   }
    # @return [Types::ModifyDBInstanceResult]
    def modify_db_instance(params = {}, options = {})
      request = build_request(:modify_db_instance, params)
      request.send_request(options)
    end

    # <p>Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the Amazon Web Services Region.</p>
    # @param [Hash, Types::ModifyDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p>
    #            <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.modify_db_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_subnet_group: {
    #       db_subnet_group_name: "String",
    #       db_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       db_subnet_group_arn: "String"
    #     }
    #   }
    # @return [Types::ModifyDBSubnetGroupResult]
    def modify_db_subnet_group(params = {}, options = {})
      request = build_request(:modify_db_subnet_group, params)
      request.send_request(options)
    end

    # <p>Modifies an existing Amazon DocumentDB event notification subscription.</p>
    # @param [Hash, Types::ModifyEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The
    #               ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe
    #               to.</p>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.modify_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false,
    #       event_subscription_arn: "String"
    #     }
    #   }
    # @return [Types::ModifyEventSubscriptionResult]
    def modify_event_subscription(params = {}, options = {})
      request = build_request(:modify_event_subscription, params)
      request.send_request(options)
    end

    # <p>Modify a setting for an Amazon DocumentDB global cluster. You can change one or more configuration parameters (for example: deletion protection), or the global cluster identifier by specifying these parameters and the new values in the request.</p>
    #          <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #          </note>
    # @param [Hash, Types::ModifyGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier for the global cluster being modified. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :new_global_cluster_identifier
    #   <p>The new identifier for a global cluster when you modify a global cluster. This value is stored as a lowercase string.</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #                  <p>The first character must be a letter</p>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates if the global cluster has deletion protection enabled. The global cluster can't be deleted when deletion protection is enabled. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     new_global_cluster_identifier: "GlobalClusterIdentifier",
    #     deletion_protection: false
    #   }
    #   options = {}
    #   response = client.modify_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ModifyGlobalClusterResult]
    def modify_global_cluster(params = {}, options = {})
      request = build_request(:modify_global_cluster, params)
      request.send_request(options)
    end

    # <p>You might need to reboot your instance, usually for maintenance reasons. For
    #             example, if you make certain changes, or if you change the cluster parameter group
    #             that is associated with the instance, you must reboot the instance for the changes to
    #             take effect. </p>
    #          <p>Rebooting an instance restarts the database engine service. Rebooting an instance
    #             results in a momentary outage, during which the instance status is set to
    #                 <i>rebooting</i>. </p>
    # @param [Hash, Types::RebootDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a Multi-AZ failover. </p>
    #            <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #               Multi-AZ.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #     force_failover: false
    #   }
    #   options = {}
    #   response = client.reboot_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_instance: {
    #       db_instance_identifier: "String",
    #       db_instance_class: "String",
    #       engine: "String",
    #       db_instance_status: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       db_subnet_group: {
    #         db_subnet_group_name: "String",
    #         db_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         db_subnet_group_arn: "String"
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         db_instance_class: "String",
    #         allocated_storage: 1,
    #         master_user_password: "String",
    #         port: 1,
    #         backup_retention_period: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         license_model: "String",
    #         iops: 1,
    #         db_instance_identifier: "String",
    #         storage_type: "String",
    #         ca_certificate_identifier: "String",
    #         db_subnet_group_name: "String",
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         }
    #       },
    #       latest_restorable_time: Time.now,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       copy_tags_to_snapshot: false,
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       certificate_details: {
    #         ca_identifier: "String",
    #         valid_till: Time.now
    #       },
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String"
    #     }
    #   }
    # @return [Types::RebootDBInstanceResult]
    def reboot_db_instance(params = {}, options = {})
      request = build_request(:reboot_db_instance, params)
      request.send_request(options)
    end

    # <p>Detaches an Amazon DocumentDB secondary cluster from a global cluster. The cluster becomes a standalone cluster with read-write capability instead of being read-only and receiving data from a primary in a different region. </p>
    #          <note>
    #             <p>This action only applies to Amazon DocumentDB clusters.</p>
    #          </note>
    # @param [Hash, Types::RemoveFromGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier to detach from the Amazon DocumentDB global cluster. </p>
    # @option params [String] :db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster that was detached from the Amazon DocumentDB global cluster. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     db_cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_from_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::RemoveFromGlobalClusterResult]
    def remove_from_global_cluster(params = {}, options = {})
      request = build_request(:remove_from_global_cluster, params)
      request.send_request(options)
    end

    # <p>Removes a source identifier from an existing Amazon DocumentDB event notification
    #             subscription.</p>
    # @param [Hash, Types::RemoveSourceIdentifierFromSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to remove a
    #               source identifier from.</p>
    # @option params [String] :source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the instance
    #               identifier for an instance, or the name of a security group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_source_identifier_from_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false,
    #       event_subscription_arn: "String"
    #     }
    #   }
    # @return [Types::RemoveSourceIdentifierFromSubscriptionResult]
    def remove_source_identifier_from_subscription(params = {}, options = {})
      request = build_request(:remove_source_identifier_from_subscription, params)
      request.send_request(options)
    end

    # <p>Removes metadata tags from an Amazon DocumentDB resource.</p>
    # @param [Hash, Types::RemoveTagsFromResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource
    #               Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <p> Modifies the parameters of a cluster parameter group to the default value. To
    #             reset specific parameters, submit a list of the following: <code>ParameterName</code>
    #             and <code>ApplyMethod</code>. To reset the entire cluster parameter group, specify
    #             the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code>
    #             parameters. </p>
    #          <p> When you reset the entire group, dynamic parameters are updated immediately and
    #             static parameters are set to <code>pending-reboot</code> to take effect on the next DB
    #             instance reboot.</p>
    # @param [Hash, Types::ResetDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to reset.</p>
    # @option params [Boolean] :reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the cluster
    #               parameter group to their default values, and <code>false</code> otherwise. You can't use
    #               this parameter if there is a list of parameter names specified for the
    #                   <code>Parameters</code> parameter.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameter names in the cluster parameter group to reset to the default
    #               values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is
    #               set to <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate" # One of: ["immediate", "pending-reboot"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reset_db_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_parameter_group_name: "String"
    #   }
    # @return [Types::ResetDBClusterParameterGroupOutput]
    def reset_db_cluster_parameter_group(params = {}, options = {})
      request = build_request(:reset_db_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new cluster from a snapshot or cluster snapshot.</p>
    #          <p>If a snapshot is specified, the target cluster is created from the source DB snapshot with a default configuration and default security group.</p>
    #          <p>If a cluster snapshot is specified, the target cluster is created from the source cluster restore point with the same configuration as the original source DB cluster, except that the new cluster is created with the default security group.</p>
    # @param [Hash, Types::RestoreDBClusterFromSnapshotMessage] params
    # @option params [Array<String>] :availability_zones
    #   <p>Provides the list of Amazon EC2 Availability Zones that instances in the restored DB
    #               cluster can be created in.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the cluster to create from the snapshot or cluster snapshot. This
    #               parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the snapshot or cluster snapshot to restore from.</p>
    #            <p>You can use either the name or the Amazon Resource Name (ARN) to specify a cluster
    #               snapshot. However, you can use only the ARN to specify a snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing snapshot.</p>
    #               </li>
    #            </ul>
    # @option params [String] :engine
    #   <p>The database engine to use for the new cluster.</p>
    #            <p>Default: The same as source.</p>
    #            <p>Constraint: Must be compatible with the engine of the source.</p>
    # @option params [String] :engine_version
    #   <p>The version of the database engine to use for the new cluster.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>.</p>
    #            <p>Default: The same port as the original cluster.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the subnet group to use for the new cluster.</p>
    #            <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the new cluster will
    #               belong to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from a DB snapshot or cluster snapshot.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the
    #               following occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>If the snapshot or cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the snapshot or the cluster snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If the snapshot or the cluster snapshot in
    #                           <code>SnapshotIdentifier</code> is not encrypted, then the restored DB
    #                       cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch Logs.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with this DB cluster.</p>
    #            <p>
    #               <i>Type:</i> String.         <i>Required:</i> No.</p>
    #            <p>If this argument is omitted, the default DB cluster parameter group is used.
    #           If supplied, must match the name of an existing default DB cluster parameter group.
    #           The string must consist of from 1 to 255 letters, numbers or hyphens. Its first
    #           character must be a letter, and it cannot end with a hyphen or contain two consecutive
    #           hyphens.</p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    # @option params [String] :storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zones: ["String"],
    #     db_cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     db_cluster_parameter_group_name: "String",
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     storage_type: "String"
    #   }
    #   options = {}
    #   response = client.restore_db_cluster_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::RestoreDBClusterFromSnapshotResult]
    def restore_db_cluster_from_snapshot(params = {}, options = {})
      request = build_request(:restore_db_cluster_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Restores a cluster to an arbitrary point in time. Users can restore to any point in
    #             time before <code>LatestRestorableTime</code> for up to
    #                 <code>BackupRetentionPeriod</code> days. The target cluster is created from the
    #             source cluster with the same configuration as the original cluster, except that
    #             the new cluster is created with the default security group. </p>
    # @param [Hash, Types::RestoreDBClusterToPointInTimeMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the new cluster to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the
    #                   source DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the
    #                   source DB cluster.</p>
    #               </li>
    #            </ul>
    #            <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p>
    #            <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is
    #               restored as a full copy of the source DB cluster.</p>
    # @option params [String] :source_db_cluster_identifier
    #   <p>The identifier of the source cluster from which to restore.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :restore_to_time
    #   <p>The date and time to restore the cluster to.</p>
    #            <p>Valid values: A time in Universal Coordinated Time (UTC) format.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the instance.</p>
    #               </li>
    #               <li>
    #                  <p>Must be specified if the <code>UseLatestRestorableTime</code> parameter is not provided.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>UseLatestRestorableTime</code> parameter is <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the cluster to the latest
    #               restorable backup time, and <code>false</code> otherwise. </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if the <code>RestoreToTime</code> parameter is
    #               provided.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #            <p>Default: The default port for the engine.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>The subnet group name to use for the new cluster.</p>
    #            <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new cluster belongs to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from an encrypted cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>You can restore to a new cluster and encrypt the new cluster with an KMS key that is different from the KMS key used to encrypt the source cluster. The new DB cluster is encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>If the cluster is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the source cluster.</p>
    #               </li>
    #               <li>
    #                  <p>If the cluster is not encrypted, then the restored cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>DBClusterIdentifier</code> refers to a cluster that is not encrypted, then
    #               the restore request is rejected.</p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch
    #               Logs.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    # @option params [String] :storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     restore_type: "String",
    #     source_db_cluster_identifier: "String", # required
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     storage_type: "String"
    #   }
    #   options = {}
    #   response = client.restore_db_cluster_to_point_in_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::RestoreDBClusterToPointInTimeResult]
    def restore_db_cluster_to_point_in_time(params = {}, options = {})
      request = build_request(:restore_db_cluster_to_point_in_time, params)
      request.send_request(options)
    end

    # <p>Restarts the stopped cluster that is specified by <code>DBClusterIdentifier</code>.
    #             For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html">Stopping and
    #                 Starting an Amazon DocumentDB Cluster</a>.</p>
    # @param [Hash, Types::StartDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to restart. Example:
    #                   <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.start_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::StartDBClusterResult]
    def start_db_cluster(params = {}, options = {})
      request = build_request(:start_db_cluster, params)
      request.send_request(options)
    end

    # <p>Stops the running cluster that is specified by <code>DBClusterIdentifier</code>. The
    #             cluster must be in the <i>available</i> state. For more information, see
    #                 <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html">Stopping and
    #                 Starting an Amazon DocumentDB Cluster</a>.</p>
    # @param [Hash, Types::StopDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the cluster to stop. Example:
    #               <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       db_cluster_identifier: "String",
    #       db_cluster_parameter_group: "String",
    #       db_subnet_group: "String",
    #       status: "String",
    #       percent_progress: "String",
    #       earliest_restorable_time: Time.now,
    #       endpoint: "String",
    #       reader_endpoint: "String",
    #       multi_az: false,
    #       engine: "String",
    #       engine_version: "String",
    #       latest_restorable_time: Time.now,
    #       port: 1,
    #       master_username: "String",
    #       preferred_backup_window: "String",
    #       preferred_maintenance_window: "String",
    #       replication_source_identifier: "String",
    #       read_replica_identifiers: ["String"],
    #       db_cluster_members: [
    #         {
    #           db_instance_identifier: "String",
    #           is_cluster_writer: false,
    #           db_cluster_parameter_group_status: "String",
    #           promotion_tier: 1
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       hosted_zone_id: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_resource_id: "String",
    #       db_cluster_arn: "String",
    #       associated_roles: [
    #         {
    #           role_arn: "String",
    #           status: "String"
    #         }
    #       ],
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false,
    #       storage_type: "String",
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       master_user_secret: {
    #         secret_arn: "String",
    #         secret_status: "String",
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::StopDBClusterResult]
    def stop_db_cluster(params = {}, options = {})
      request = build_request(:stop_db_cluster, params)
      request.send_request(options)
    end

    # <p>Switches over the specified secondary Amazon DocumentDB cluster to be the new primary Amazon DocumentDB cluster in the global database cluster.</p>
    # @param [Hash, Types::SwitchoverGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier of the Amazon DocumentDB global database cluster to switch over. 
    #           The identifier is the unique key assigned by the user when the cluster is created. 
    #           In other words, it's the name of the global cluster.
    #           This parameter isn’t case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster (Amazon DocumentDB global database).</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    # @option params [String] :target_db_cluster_identifier
    #   <p>The identifier of the secondary Amazon DocumentDB cluster to promote to the new primary for the global database cluster. 
    #               Use the Amazon Resource Name (ARN) for the identifier so that Amazon DocumentDB can locate the cluster in its Amazon Web Services region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing secondary cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "DBClusterIdentifier", # required
    #   }
    #   options = {}
    #   response = client.switchover_global_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_cluster: {
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       global_cluster_resource_id: "String",
    #       global_cluster_arn: "String",
    #       status: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       database_name: "String",
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::SwitchoverGlobalClusterResult]
    def switchover_global_cluster(params = {}, options = {})
      request = build_request(:switchover_global_cluster, params)
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
      context[:gem_name] = 'aws-sdk-docdb'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        db_instance_available: Waiters::DBInstanceAvailable,
        db_instance_deleted: Waiters::DBInstanceDeleted
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
