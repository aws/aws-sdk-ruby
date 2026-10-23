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
require 'aws-sdk-neptune/plugins/cross_region_copying'
require 'aws-sdk-core/aws_query'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:neptune)

module Aws::Neptune
  # An API client for Aws::Neptune.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonRDSv19
    @identifier = :neptune

    add_plugin(::Aws::Neptune::Plugins::Endpoint)
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
    add_plugin(Aws::Neptune::Plugins::CrossRegionCopying)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Neptune::EndpointProvider)
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
    #  Supported protocols: +:aws_query+ (defaults to +:aws_query+).
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

    # <p>Associates an Identity and Access Management (IAM) role with an
    #       Neptune DB cluster.</p>
    # @param [Hash, Types::AddRoleToDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to associate the IAM role with.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster,
    #         for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    # @option params [String] :feature_name
    #   <p>The name of the feature for the Neptune DB cluster that the IAM role is to be associated with.
    #         For the list of supported feature names, see <a>DBEngineVersion</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     role_arn: "String", # required
    #     feature_name: "String"
    #   }
    #   options = {}
    #   response = client.add_role_to_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_role_to_db_cluster(params = {}, options = {})
      request = build_request(:add_role_to_db_cluster, params)
      request.send_request(options)
    end

    # <p>Adds a source identifier to an existing event notification subscription.</p>
    # @param [Hash, Types::AddSourceIdentifierToSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to add a source identifier
    #         to.</p>
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source to be added.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
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

    # <p>Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost
    #       allocation reporting to track cost associated with Amazon Neptune resources, or used in a
    #       Condition statement in an IAM policy for Amazon Neptune.</p>
    # @param [Hash, Types::AddTagsToResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource
    #         Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
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

    # <p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>
    # @param [Hash, Types::ApplyPendingMaintenanceActionMessage] params
    # @option params [String] :resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies
    #         to. For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in
    #         request of type <code>immediate</code> can't be undone.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #             maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #             requests.</p>
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

    # <p>Copies the specified DB cluster parameter group.</p>
    # @param [Hash, Types::CopyDBClusterParameterGroupMessage] params
    # @option params [String] :source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
    #         For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB cluster parameter group is in the same Amazon Region as the copy,
    #             specify a valid DB parameter group identifier, for example
    #             <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB parameter group is in a different Amazon Region than the copy, specify a
    #             valid DB cluster parameter group ARN, for example
    #             <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-param-group1</code>
    #            </p>
    # @option params [String] :target_db_cluster_parameter_group_description
    #   <p>A description for the copied DB cluster parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the copied DB cluster parameter group.</p>
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

    # <p>Copies a snapshot of a DB cluster.</p>
    #          <p>To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
    #       <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the
    #       shared DB cluster snapshot.</p>
    # @param [Hash, Types::CopyDBClusterSnapshotMessage] params
    # @option params [String] :source_db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to copy. This parameter is not
    #         case-sensitive. If the source DB cluster snapshot is in a different region or 
    #         owned by another account, specify the snapshot ARN.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid system snapshot in the "available" state.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a valid DB snapshot identifier.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    # @option params [String] :target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new DB cluster snapshot to create from the source DB cluster
    #         snapshot. This parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon
    #         Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
    #            <p>If you copy an encrypted DB cluster snapshot from your Amazon account, you can specify a
    #         value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you
    #         don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
    #         encrypted with the same KMS key as the source DB cluster snapshot.</p>
    #            <p>If you copy an encrypted DB cluster snapshot that is shared from another Amazon account, then
    #         you must specify a value for <code>KmsKeyId</code>.</p>
    #            <p> KMS encryption keys are specific to the Amazon Region that they are created in, and you
    #         can't use encryption keys from one Amazon Region in another Amazon Region.</p>
    #            <p>You cannot encrypt an unencrypted DB cluster snapshot when you copy it. If you try to
    #         copy an unencrypted DB cluster snapshot and specify a value for the KmsKeyId parameter, an
    #         error is returned.</p>
    # @option params [String] :pre_signed_url
    #   <p>Not currently supported.</p>
    # @option params [Boolean] :copy_tags
    #   <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster
    #         snapshot, and otherwise false. The default is false.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the new DB cluster snapshot copy.</p>
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
    #       allocated_storage: 1,
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       license_model: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       iam_database_authentication_enabled: false,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::CopyDBClusterSnapshotResult]
    def copy_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:copy_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Copies the specified DB parameter group.</p>
    # @param [Hash, Types::CopyDBParameterGroupMessage] params
    # @option params [String] :source_db_parameter_group_identifier
    #   <p>The identifier or ARN for the source DB parameter group. For information about creating
    #         an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Must specify a valid DB parameter group identifier, for example
    #           <code>my-db-param-group</code>, or a valid ARN.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_db_parameter_group_identifier
    #   <p>The identifier for the copied DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-db-parameter-group</code>
    #            </p>
    # @option params [String] :target_db_parameter_group_description
    #   <p>A description for the copied DB parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the copied DB parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_db_parameter_group_identifier: "String", # required
    #     target_db_parameter_group_identifier: "String", # required
    #     target_db_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_parameter_group: {
    #       db_parameter_group_name: "String",
    #       db_parameter_group_family: "String",
    #       description: "String",
    #       db_parameter_group_arn: "String"
    #     }
    #   }
    # @return [Types::CopyDBParameterGroupResult]
    def copy_db_parameter_group(params = {}, options = {})
      request = build_request(:copy_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Neptune DB cluster.</p>
    #          <p>You can use the <code>ReplicationSourceIdentifier</code> parameter to create the DB
    #       cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance.</p>
    #          <p>Note that when you create a new cluster using <code>CreateDBCluster</code> directly,
    #       deletion protection is disabled by default (when you create a new production cluster in
    #       the console, deletion protection is enabled by default). You can only delete a DB
    #       cluster if its <code>DeletionProtection</code> field is set to <code>false</code>.</p>
    # @param [Hash, Types::CreateDBClusterMessage] params
    # @option params [Array<String>] :availability_zones
    #   <p>A list of EC2 Availability Zones that instances in the DB cluster can be created
    #         in.</p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    # @option params [String] :character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    # @option params [String] :database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a
    #         name, Amazon Neptune will not create a database in the DB cluster you are creating.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p> The name of the DB cluster parameter group to associate with this DB cluster. If this
    #         argument is omitted, the default is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB cluster.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use for the new DB cluster.</p>
    #            <p>Example: <code>1.2.1.0</code>
    #            </p>
    # @option params [Integer] :port
    #   <p>The port number on which the instances in the DB cluster accept connections.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    # @option params [String] :master_username
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region. To see the time blocks available, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window">Neptune
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
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
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week. To see the time blocks available, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window">Neptune
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [String] :replication_source_identifier
    #   <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster
    #         is created as a Read Replica.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the new DB cluster.</p>
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the DB cluster is encrypted.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then
    #             Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon
    #             Neptune will use your default encryption key.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>StorageEncrypted</code> parameter is true and
    #             <code>ReplicationSourceIdentifier</code> is not specified, then Amazon Neptune will use
    #             your default encryption key.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    #            <p>If you create a Read Replica of an encrypted DB cluster in another Amazon Region, you must
    #         set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination Amazon Region. This
    #         key is used to encrypt the Read Replica in that Amazon Region.</p>
    # @option params [String] :pre_signed_url
    #   <p>This parameter is not currently supported.</p>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>If set to <code>true</code>, enables Amazon Identity and Access Management
    #         (IAM) authentication for the entire DB cluster (this cannot be set at an
    #         instance level).</p>
    #            <p>Default: <code>false</code>.</p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>A list of the log types that this DB cluster should export to CloudWatch Logs.
    #         Valid log types are: <code>audit</code> (to publish audit logs) and
    #         <code>slowquery</code> (to publish slow-query logs). See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html">Publishing Neptune logs
    #         to Amazon CloudWatch logs</a>.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is enabled.</p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of a Neptune Serverless DB cluster.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html">Using Amazon Neptune Serverless</a> in the
    #         <i>Amazon Neptune User Guide</i>.</p>
    # @option params [String] :global_cluster_identifier
    #   <p>The ID of the Neptune global database to which this new DB cluster
    #         should be added.</p>
    # @option params [String] :storage_type
    #   <p>The storage type for the new DB cluster.</p>
    #            <p>Valid Values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>standard</code>
    #                     </b>   –  
    #           ( <i>the default</i> ) Configures cost-effective database storage for applications
    #           with moderate to small I/O usage. When set to <code>standard</code>, the storage type
    #           is not returned in the response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>iopt1</code>
    #                     </b>   –  
    #             Enables <a href="https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage">I/O-Optimized storage</a>
    #             that's designed to meet the needs of I/O-intensive graph workloads that
    #             require predictable pricing with low I/O latency and consistent I/O throughput.</p>
    #                  <p>Neptune I/O-Optimized storage is only available starting with engine release 1.3.0.0.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_region
    #   <p>The source region of the snapshot. This is only needed when the shapshot is encrypted and in a different region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     character_set_name: "String",
    #     copy_tags_to_snapshot: false,
    #     database_name: "String",
    #     db_cluster_identifier: "String", # required
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     db_subnet_group_name: "String",
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     master_username: "String",
    #     master_user_password: "String",
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     replication_source_identifier: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     global_cluster_identifier: "GlobalClusterIdentifier",
    #     storage_type: "String",
    #     source_region: "String"
    #   }
    #   options = {}
    #   response = client.create_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::CreateDBClusterResult]
    def create_db_cluster(params = {}, options = {})
      request = build_request(:create_db_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new custom endpoint and associates it with an Amazon Neptune DB cluster.</p>
    # @param [Hash, Types::CreateDBClusterEndpointMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    # @option params [Array<String>] :static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    # @option params [Array<String>] :excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     db_cluster_endpoint_identifier: "String", # required
    #     endpoint_type: "String", # required
    #     static_members: ["String"],
    #     excluded_members: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_db_cluster_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_endpoint_identifier: "String",
    #     db_cluster_identifier: "String",
    #     db_cluster_endpoint_resource_identifier: "String",
    #     endpoint: "String",
    #     status: "String",
    #     endpoint_type: "String",
    #     custom_endpoint_type: "String",
    #     static_members: ["String"],
    #     excluded_members: ["String"],
    #     db_cluster_endpoint_arn: "String"
    #   }
    # @return [Types::CreateDBClusterEndpointOutput]
    def create_db_cluster_endpoint(params = {}, options = {})
      request = build_request(:create_db_cluster_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a new DB cluster parameter group.</p>
    #          <p>Parameters in a DB cluster parameter group apply to all of the instances in a DB
    #       cluster.</p>
    #          <p> A DB cluster parameter group is initially created with the default
    #       parameters for the database engine used by instances in the DB cluster.
    #       To provide custom values for any of the parameters, you must modify the
    #       group after creating it using <a>ModifyDBClusterParameterGroup</a>.
    #       Once you've created a DB cluster parameter group, you need to associate it
    #       with your DB cluster using <a>ModifyDBCluster</a>.
    #       When you associate a new DB cluster parameter group with a running DB cluster,
    #       you need to reboot the DB instances in the DB cluster without failover for the
    #       new DB cluster parameter group and associated settings to take effect.</p>
    #          <important>
    #             <p>After you create a DB cluster parameter group, you should wait at least
    #         5 minutes before creating your first DB cluster that uses that DB cluster
    #         parameter group as the default parameter group. This allows Amazon Neptune
    #         to fully complete the create action before the DB cluster parameter group
    #         is used as the default for a new DB cluster. This is especially important for
    #         parameters that are critical when creating the default database for a DB
    #         cluster, such as the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon Neptune
    #         console</a> or the <a>DescribeDBClusterParameters</a>
    #         command to verify that your DB cluster parameter group has been created or modified.</p>
    #          </important>
    # @param [Hash, Types::CreateDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    # @option params [String] :db_parameter_group_family
    #   <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated
    #         with one and only one DB cluster parameter group family, and can be applied only to a DB
    #         cluster running a database engine and engine version compatible with that DB cluster parameter
    #         group family.</p>
    # @option params [String] :description
    #   <p>The description for the DB cluster parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the new DB cluster parameter group.</p>
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

    # <p>Creates a snapshot of a DB cluster.</p>
    # @param [Hash, Types::CreateDBClusterSnapshotMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase
    #         string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1-snapshot1</code>
    #            </p>
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the DB cluster to create a snapshot for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the DB cluster snapshot.</p>
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
    #       allocated_storage: 1,
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       license_model: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       iam_database_authentication_enabled: false,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::CreateDBClusterSnapshotResult]
    def create_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:create_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new DB instance.</p>
    # @param [Hash, Types::CreateDBInstanceMessage] params
    # @option params [String] :db_name
    #   <p>Not supported.</p>
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    # @option params [Integer] :allocated_storage
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :db_instance_class
    #   <p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
    #         Not all DB instance classes are available in all Amazon Regions.</p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    # @option params [String] :master_username
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    # @option params [Array<String>] :db_security_groups
    #   <p>A list of DB security groups to associate with this DB instance.</p>
    #            <p>Default: The default DB security group for the database engine.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB instance.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    # @option params [String] :availability_zone
    #   <p> The EC2 Availability Zone that the DB instance is created in</p>
    #            <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Region.</p>
    #            <p> Example: <code>us-east-1d</code>
    #            </p>
    #            <p> Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is
    #         set to <code>true</code>. The specified Availability Zone must be in the same Amazon Region as
    #         the current endpoint.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB instance.</p>
    #            <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #         Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance. If this argument is
    #         omitted, the default DBParameterGroup for the specified engine is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are
    #         retained.</p>
    #            <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 0 to 35</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_backup_window
    #   <p> The daily time range during which automated backups are created.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>Not applicable. The port is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #            <p>Type: Integer</p>
    # @option params [Boolean] :multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone
    #         parameter if the MultiAZ parameter is set to true.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to use. Currently, setting this
    #         parameter has no effect.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Indicates that minor engine upgrades are applied automatically to the DB instance during
    #         the maintenance window.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [String] :license_model
    #   <p>License model information for this DB instance.</p>
    #            <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
    #         <code>general-public-license</code>
    #            </p>
    # @option params [Integer] :iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially
    #         allocated for the DB instance.</p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [String] :character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Indicates whether the DB instance is publicly accessible.</p>
    #            <p>When the DB instance is publicly accessible and you connect from outside of the DB instance's virtual private 
    #         cloud (VPC), its Domain Name System (DNS) endpoint resolves to the public IP address. When you connect from within 
    #         the same VPC as the DB instance, the endpoint resolves to the private IP address. Access to the DB instance is 
    #         ultimately controlled by the security group it uses. That public access isn't permitted if the security group assigned 
    #         to the DB cluster doesn't permit it.</p>
    #            <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a 
    #         private IP address.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the new instance.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The identifier of the DB cluster that the instance will belong to.</p>
    #            <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p>
    #            <p>Type: String</p>
    # @option params [String] :storage_type
    #   <p>Not applicable. In Neptune the storage type is managed at the DB Cluster level.</p>
    # @option params [String] :tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    # @option params [String] :tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    # @option params [Boolean] :storage_encrypted
    #   <p>Specifies whether the DB instance is encrypted.</p>
    #            <p>Not applicable. The encryption for DB instances is managed by the DB cluster. For more
    #         information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: false</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB instance.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB instance with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the
    #         KM encryption key.</p>
    #            <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information,
    #         see <a>CreateDBCluster</a>.</p>
    #            <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for
    #         the <code>KmsKeyId</code> parameter, then Amazon Neptune will use your default encryption key.
    #         Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    # @option params [String] :domain
    #   <p>Specify the Active Directory Domain to create the instance in.</p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    # @option params [Integer] :monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    # @option params [String] :monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example,
    #         <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    # @option params [String] :domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory
    #         Service.</p>
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which an Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.
    #         </p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    # @option params [String] :timezone
    #   <p>The time zone of the DB instance.</p>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>Not supported by Neptune (ignored).</p>
    # @option params [Boolean] :enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [String] :performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #            <p>DB instances in a DB cluster can be deleted even when deletion
    #         protection is enabled in their parent DB cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_name: "String",
    #     db_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     master_username: "String",
    #     master_user_password: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     preferred_maintenance_window: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     port: 1,
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     character_set_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     db_cluster_identifier: "String", # required
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "SensitiveString",
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     timezone: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false
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
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       db_security_groups: [
    #         {
    #           db_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "String",
    #           parameter_apply_status: "String"
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
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       read_replica_source_db_instance_identifier: "String",
    #       read_replica_db_instance_identifiers: ["String"],
    #       read_replica_db_cluster_identifiers: ["String"],
    #       license_model: "String",
    #       iops: 1,
    #       option_group_memberships: [
    #         {
    #           option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       character_set_name: "String",
    #       secondary_availability_zone: "String",
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       storage_type: "String",
    #       tde_credential_arn: "String",
    #       db_instance_port: 1,
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       domain_memberships: [
    #         {
    #           domain: "String",
    #           status: "String",
    #           fqdn: "String",
    #           iam_role_name: "String"
    #         }
    #       ],
    #       copy_tags_to_snapshot: false,
    #       monitoring_interval: 1,
    #       enhanced_monitoring_resource_arn: "String",
    #       monitoring_role_arn: "String",
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       timezone: "String",
    #       iam_database_authentication_enabled: false,
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::CreateDBInstanceResult]
    def create_db_instance(params = {}, options = {})
      request = build_request(:create_db_instance, params)
      request.send_request(options)
    end

    # <p>Creates a new DB parameter group.</p>
    #          <p>A DB parameter group is initially created with the default parameters for the database
    #       engine used by the DB instance. To provide custom values for any of the parameters, you must
    #       modify the group after creating it using <i>ModifyDBParameterGroup</i>. Once
    #       you've created a DB parameter group, you need to associate it with your DB instance using
    #       <i>ModifyDBInstance</i>. When you associate a new DB parameter group with a
    #       running DB instance, you need to reboot the DB instance without failover for the new DB
    #       parameter group and associated settings to take effect.</p>
    #          <important>
    #             <p>After you create a DB parameter group, you should wait at least 5 minutes before
    #         creating your first DB instance that uses that DB parameter group as the default parameter
    #         group. This allows Amazon Neptune to fully complete the create action before the parameter
    #         group is used as the default for a new DB instance. This is especially important for
    #         parameters that are critical when creating the default database for a DB instance, such as
    #         the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the
    #         <i>DescribeDBParameters</i> command to verify that your DB parameter group has
    #         been created or modified.</p>
    #          </important>
    # @param [Hash, Types::CreateDBParameterGroupMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    # @option params [String] :db_parameter_group_family
    #   <p>The DB parameter group family name. A DB parameter group can be associated with one and
    #         only one DB parameter group family, and can be applied only to a DB instance running a
    #         database engine and engine version compatible with that DB parameter group family.</p>
    # @option params [String] :description
    #   <p>The description for the DB parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the new DB parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String", # required
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
    #   response = client.create_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_parameter_group: {
    #       db_parameter_group_name: "String",
    #       db_parameter_group_family: "String",
    #       description: "String",
    #       db_parameter_group_arn: "String"
    #     }
    #   }
    # @return [Types::CreateDBParameterGroupResult]
    def create_db_parameter_group(params = {}, options = {})
      request = build_request(:create_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at
    #       least two AZs in the Amazon Region.</p>
    # @param [Hash, Types::CreateDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces,
    #         or hyphens. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 Subnet IDs for the DB subnet group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the new DB subnet group.</p>
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

    # <p>Creates an event notification subscription. This action requires a topic ARN (Amazon
    #       Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To
    #       obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The
    #       ARN is displayed in the SNS console.</p>
    #          <p>You can specify the type of source (SourceType) you want to be notified of, provide a list
    #       of Neptune sources (SourceIds) that triggers the events, and provide a list of event
    #       categories (EventCategories) for events you want to be notified of. For example, you can
    #       specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories
    #       = Availability, Backup.</p>
    #          <p>If you specify both the SourceType and SourceIds, such as SourceType = db-instance and
    #       SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the
    #       specified source. If you specify a SourceType but do not specify a SourceIdentifier, you
    #       receive notice of the events for that source type for all your Neptune sources. If you do not
    #       specify either the SourceType nor the SourceIdentifier, you are notified of events generated
    #       from all Neptune sources belonging to your customer account.</p>
    # @param [Hash, Types::CreateEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the subscription.</p>
    #            <p>Constraints: The name must be less than 255 characters.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> |
    #         <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> |
    #         <code>db-cluster-snapshot</code>
    #            </p>
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType by using the
    #         <b>DescribeEventCategories</b> action.</p>
    # @option params [Array<String>] :source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not
    #         specified, then all sources are included in the response. An identifier must begin with a
    #         letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or
    #         contain two consecutive hyphens.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIds are supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription, set to <b>false</b> to create the subscription but not
    #         active it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be applied to the new event subscription.</p>
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

    # <p>Creates a Neptune global database spread across multiple Amazon Regions.
    #       The global database contains a single primary cluster with read-write
    #       capability, and read-only secondary clusters that receive data from the
    #       primary cluster through high-speed replication performed by the Neptune
    #       storage subsystem.</p>
    #          <p>You can create a global database that is initially empty, and then
    #       add a primary cluster and secondary clusters to it, or you can specify
    #       an existing Neptune cluster during the create operation to become the
    #       primary cluster of the global database.</p>
    # @param [Hash, Types::CreateGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the new global database cluster.</p>
    # @option params [String] :source_db_cluster_identifier
    #   <p>(<i>Optional</i>) The Amazon Resource Name (ARN) of
    #         an existing Neptune DB cluster to use as the primary cluster of the new
    #         global database.</p>
    # @option params [String] :engine
    #   <p>The name of the database engine to be used in the global database.</p>
    #            <p>Valid values: <code>neptune</code>
    #            </p>
    # @option params [String] :engine_version
    #   <p>The Neptune engine version to be used by the global database.</p>
    #            <p>Valid values: <code>1.2.0.0</code> or above.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>The deletion protection setting for the new global database.
    #         The global database can't be deleted when deletion protection is
    #         enabled.</p>
    # @option params [Boolean] :storage_encrypted
    #   <p>The storage encryption setting for the new global database
    #         cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     source_db_cluster_identifier: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     deletion_protection: false,
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
    #     }
    #   }
    # @return [Types::CreateGlobalClusterResult]
    def create_global_cluster(params = {}, options = {})
      request = build_request(:create_global_cluster, params)
      request.send_request(options)
    end

    # <p>The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a
    #       DB cluster, all automated backups for that DB cluster are deleted and can't be recovered.
    #       Manual DB cluster snapshots of the specified DB cluster are not deleted.</p>
    #          <p>Note that the DB Cluster cannot be deleted if deletion protection is enabled.  To
    #       delete it, you must first set its <code>DeletionProtection</code> field to
    #       <code>False</code>.</p>
    # @param [Hash, Types::DeleteDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final DB cluster snapshot is created before the DB cluster is
    #         deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If
    #         <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is
    #         deleted.</p>
    #            <note>
    #               <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if
    #           <code>SkipFinalSnapshot</code> is <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when
    #         <code>SkipFinalSnapshot</code> is set to <code>false</code>.</p>
    #            <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter
    #           to true results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::DeleteDBClusterResult]
    def delete_db_cluster(params = {}, options = {})
      request = build_request(:delete_db_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a custom endpoint and removes it from an Amazon Neptune DB cluster.</p>
    # @param [Hash, Types::DeleteDBClusterEndpointMessage] params
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_endpoint_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_cluster_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_endpoint_identifier: "String",
    #     db_cluster_identifier: "String",
    #     db_cluster_endpoint_resource_identifier: "String",
    #     endpoint: "String",
    #     status: "String",
    #     endpoint_type: "String",
    #     custom_endpoint_type: "String",
    #     static_members: ["String"],
    #     excluded_members: ["String"],
    #     db_cluster_endpoint_arn: "String"
    #   }
    # @return [Types::DeleteDBClusterEndpointOutput]
    def delete_db_cluster_endpoint(params = {}, options = {})
      request = build_request(:delete_db_cluster_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a specified DB cluster parameter group. The DB cluster parameter group to be
    #       deleted can't be associated with any DB clusters.</p>
    # @param [Hash, Types::DeleteDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB clusters.</p>
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

    # <p>Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is
    #       terminated.</p>
    #          <note>
    #             <p>The DB cluster snapshot must be in the <code>available</code> state to be
    #         deleted.</p>
    #          </note>
    # @param [Hash, Types::DeleteDBClusterSnapshotMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to delete.</p>
    #            <p>Constraints: Must be the name of an existing DB cluster snapshot in the
    #         <code>available</code> state.</p>
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
    #       allocated_storage: 1,
    #       status: "String",
    #       port: 1,
    #       vpc_id: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       engine_version: "String",
    #       license_model: "String",
    #       snapshot_type: "String",
    #       percent_progress: 1,
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       db_cluster_snapshot_arn: "String",
    #       source_db_cluster_snapshot_arn: "String",
    #       iam_database_authentication_enabled: false,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::DeleteDBClusterSnapshotResult]
    def delete_db_cluster_snapshot(params = {}, options = {})
      request = build_request(:delete_db_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete
    #       a DB instance, all automated backups for that instance are deleted and can't be recovered.
    #       Manual DB snapshots of the DB instance to be deleted by <code>DeleteDBInstance</code> are not
    #       deleted.</p>
    #          <p> If you request a final DB snapshot the status of the Amazon Neptune DB instance is
    #       <code>deleting</code> until the DB snapshot is created. The API action
    #       <code>DescribeDBInstance</code> is used to monitor the status of this operation. The action
    #       can't be canceled or reverted once submitted.</p>
    #          <p>Note that when a DB instance is in a failure state and has a status of
    #       <code>failed</code>, <code>incompatible-restore</code>, or <code>incompatible-network</code>,
    #       you can only delete it when the <code>SkipFinalSnapshot</code> parameter is set to
    #       <code>true</code>.</p>
    #          <p>You can't delete a DB instance if it is the only instance in the DB cluster, or
    #       if it has deletion protection enabled.</p>
    # @param [Hash, Types::DeleteDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DB instance.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :skip_final_snapshot
    #   <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If
    #         <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified,
    #         a DB snapshot is created before the DB instance is deleted.</p>
    #            <p>Note that when a DB instance is in a failure state and has a status of 'failed',
    #         'incompatible-restore', or 'incompatible-network', it can only be deleted when the
    #         SkipFinalSnapshot parameter is set to "true".</p>
    #            <p>Specify <code>true</code> when deleting a Read Replica.</p>
    #            <note>
    #               <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is
    #           <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :final_db_snapshot_identifier
    #   <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to
    #         <code>false</code>.</p>
    #            <note>
    #               <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true
    #           results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified when deleting a Read Replica.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String"
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
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       db_security_groups: [
    #         {
    #           db_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "String",
    #           parameter_apply_status: "String"
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
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       read_replica_source_db_instance_identifier: "String",
    #       read_replica_db_instance_identifiers: ["String"],
    #       read_replica_db_cluster_identifiers: ["String"],
    #       license_model: "String",
    #       iops: 1,
    #       option_group_memberships: [
    #         {
    #           option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       character_set_name: "String",
    #       secondary_availability_zone: "String",
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       storage_type: "String",
    #       tde_credential_arn: "String",
    #       db_instance_port: 1,
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       domain_memberships: [
    #         {
    #           domain: "String",
    #           status: "String",
    #           fqdn: "String",
    #           iam_role_name: "String"
    #         }
    #       ],
    #       copy_tags_to_snapshot: false,
    #       monitoring_interval: 1,
    #       enhanced_monitoring_resource_arn: "String",
    #       monitoring_role_arn: "String",
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       timezone: "String",
    #       iam_database_authentication_enabled: false,
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::DeleteDBInstanceResult]
    def delete_db_instance(params = {}, options = {})
      request = build_request(:delete_db_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be
    #       associated with any DB instances.</p>
    # @param [Hash, Types::DeleteDBParameterGroupMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB instances</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_db_parameter_group(params = {}, options = {})
      request = build_request(:delete_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes a DB subnet group.</p>
    #          <note>
    #             <p>The specified database subnet group must not be associated with any DB instances.</p>
    #          </note>
    # @param [Hash, Types::DeleteDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #            <note>
    #               <p>You can't delete the default subnet group.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
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

    # <p>Deletes an event notification subscription.</p>
    # @param [Hash, Types::DeleteEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to delete.</p>
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

    # <p>Deletes a global database. The primary and all secondary clusters must
    #       already be detached or deleted first.</p>
    # @param [Hash, Types::DeleteGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The cluster identifier of the global database cluster being deleted.</p>
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteGlobalClusterResult]
    def delete_global_cluster(params = {}, options = {})
      request = build_request(:delete_global_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about endpoints for an Amazon Neptune DB cluster.</p>
    #          <note>
    #             <p>This operation can also return information for Amazon RDS clusters
    #         and Amazon DocDB clusters.</p>
    #          </note>
    # @param [Hash, Types::DescribeDBClusterEndpointsMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to describe. This parameter is stored as a lowercase string.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A set of name-value pairs that define which endpoints to include in the output.
    #         The filters are specified as name-value pairs, in the format
    #         <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>.
    #         <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>.
    #         <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>.
    #       </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response.
    #         If more records exist than the specified <code>MaxRecords</code> value,
    #         a pagination token called a marker is included in the response
    #         so you can retrieve the remaining results.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBClusterEndpoints</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String",
    #     db_cluster_endpoint_identifier: "String",
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
    #   response = client.describe_db_cluster_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_cluster_endpoints: [
    #       {
    #         db_cluster_endpoint_identifier: "String",
    #         db_cluster_identifier: "String",
    #         db_cluster_endpoint_resource_identifier: "String",
    #         endpoint: "String",
    #         status: "String",
    #         endpoint_type: "String",
    #         custom_endpoint_type: "String",
    #         static_members: ["String"],
    #         excluded_members: ["String"],
    #         db_cluster_endpoint_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterEndpointMessage]
    def describe_db_cluster_endpoints(params = {}, options = {})
      request = build_request(:describe_db_cluster_endpoints, params)
      request.send_request(options)
    end

    # <p> Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a
    #       <code>DBClusterParameterGroupName</code> parameter is specified, the list will contain only
    #       the description of the specified DB cluster parameter group.</p>
    # @param [Hash, Types::DescribeDBClusterParameterGroupsMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
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

    # <p>Returns the detailed parameter list for a particular DB cluster parameter group.</p>
    # @param [Hash, Types::DescribeDBClusterParametersMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return parameter details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources
    #         can be <code>engine</code>, <code>service</code>, or <code>customer</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
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

    # <p>Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster
    #       snapshot.</p>
    #          <p>When sharing snapshots with other Amazon accounts,
    #       <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute
    #       and a list of IDs for the Amazon accounts that are authorized to copy or restore the manual DB
    #       cluster snapshot. If <code>all</code> is included in the list of values for the
    #       <code>restore</code> attribute, then the manual DB cluster snapshot is public and can be
    #       copied or restored by all Amazon accounts.</p>
    #          <p>To add or remove access for an Amazon account to copy or restore a manual DB cluster
    #       snapshot, or to make the manual DB cluster snapshot public or private, use the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    # @param [Hash, Types::DescribeDBClusterSnapshotAttributesMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
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

    # <p>Returns information about DB cluster snapshots. This API action supports
    #       pagination.</p>
    # @param [Hash, Types::DescribeDBClusterSnapshotsMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter
    #         can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This
    #         parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in
    #         conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a
    #         lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #             parameter must also be specified.</p>
    #               </li>
    #            </ul>
    # @option params [String] :snapshot_type
    #   <p>The type of DB cluster snapshots to be returned. You can specify one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all DB cluster snapshots that have been automatically
    #             taken by Amazon Neptune for my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all DB cluster snapshots that have been taken by my Amazon
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shared</code> - Return all manual DB cluster snapshots that have been shared to
    #             my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Return all DB cluster snapshots that have been marked as
    #             public.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB
    #         cluster snapshots are returned. You can include shared DB cluster snapshots with these results
    #         by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include
    #         public DB cluster snapshots with these results by setting the <code>IncludePublic</code>
    #         parameter to <code>true</code>.</p>
    #            <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for
    #         <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The
    #         <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    #         <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
    #         <code>SnapshotType</code> is set to <code>public</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    # @option params [Boolean] :include_shared
    #   <p>True to include shared manual DB cluster snapshots from other Amazon accounts that this Amazon
    #         account has been given permission to copy or restore, and otherwise false. The default is
    #         <code>false</code>.</p>
    #            <p>You can give an Amazon account permission to restore a manual DB cluster snapshot from
    #         another Amazon account by the <a>ModifyDBClusterSnapshotAttribute</a> API
    #         action.</p>
    # @option params [Boolean] :include_public
    #   <p>True to include manual DB cluster snapshots that are public and can be copied or restored
    #         by any Amazon account, and otherwise false. The default is <code>false</code>. The default is
    #         false.</p>
    #            <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
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
    #         allocated_storage: 1,
    #         status: "String",
    #         port: 1,
    #         vpc_id: "String",
    #         cluster_create_time: Time.now,
    #         master_username: "String",
    #         engine_version: "String",
    #         license_model: "String",
    #         snapshot_type: "String",
    #         percent_progress: 1,
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         db_cluster_snapshot_arn: "String",
    #         source_db_cluster_snapshot_arn: "String",
    #         iam_database_authentication_enabled: false,
    #         storage_type: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterSnapshotMessage]
    def describe_db_cluster_snapshots(params = {}, options = {})
      request = build_request(:describe_db_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about provisioned DB clusters, and supports
    #       pagination.</p>
    #          <note>
    #             <p>This operation can also return information for Amazon RDS clusters
    #     and Amazon DocDB clusters.</p>
    #          </note>
    # @param [Hash, Types::DescribeDBClustersMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified, information from
    #         only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more DB clusters to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB clusters created by that engine.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB clusters are returned, you could use the following command:</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <a>DescribeDBClusters</a>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
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
    #         allocated_storage: 1,
    #         availability_zones: ["String"],
    #         backup_retention_period: 1,
    #         character_set_name: "String",
    #         database_name: "String",
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
    #         db_cluster_option_group_memberships: [
    #           {
    #             db_cluster_option_group_name: "String",
    #             status: "String"
    #           }
    #         ],
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
    #             status: "String",
    #             feature_name: "String"
    #           }
    #         ],
    #         iam_database_authentication_enabled: false,
    #         clone_group_id: "String",
    #         cluster_create_time: Time.now,
    #         copy_tags_to_snapshot: false,
    #         enabled_cloudwatch_logs_exports: ["String"],
    #         pending_modified_values: {
    #           pending_cloudwatch_logs_exports: {
    #             log_types_to_enable: ["String"],
    #             log_types_to_disable: ["String"]
    #           },
    #           db_cluster_identifier: "String",
    #           iam_database_authentication_enabled: false,
    #           engine_version: "String",
    #           backup_retention_period: 1,
    #           storage_type: "String",
    #           allocated_storage: 1,
    #           iops: 1
    #         },
    #         deletion_protection: false,
    #         cross_account_clone: false,
    #         automatic_restart_time: Time.now,
    #         serverless_v2_scaling_configuration: {
    #           min_capacity: 1.0,
    #           max_capacity: 1.0
    #         },
    #         global_cluster_identifier: "GlobalClusterIdentifier",
    #         io_optimized_next_allowed_modification_time: Time.now,
    #         storage_type: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBClusterMessage]
    def describe_db_clusters(params = {}, options = {})
      request = build_request(:describe_db_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available DB engines.</p>
    # @param [Hash, Types::DescribeDBEngineVersionsMessage] params
    # @option params [String] :engine
    #   <p>The database engine to return.</p>
    # @option params [String] :engine_version
    #   <p>The database engine version to return.</p>
    #            <p>Example: <code>5.1.49</code>
    #            </p>
    # @option params [String] :db_parameter_group_family
    #   <p>The name of a specific DB parameter group family to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBParameterGroupFamily.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more than the
    #         <code>MaxRecords</code> value is available, a pagination token called a marker is included in
    #         the response so that the following results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    # @option params [Boolean] :default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #         version combination is returned.</p>
    # @option params [Boolean] :list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the
    #         <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response
    #         includes a list of supported character sets for each engine version.</p>
    # @option params [Boolean] :list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code>
    #         parameter for <code>CreateDBInstance</code>, the response includes a list of supported time
    #         zones for each engine version.</p>
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
    #         default_character_set: {
    #           character_set_name: "String",
    #           character_set_description: "String"
    #         },
    #         supported_character_sets: [
    #           {
    #             character_set_name: "String",
    #             character_set_description: "String"
    #           }
    #         ],
    #         valid_upgrade_target: [
    #           {
    #             engine: "String",
    #             engine_version: "String",
    #             description: "String",
    #             auto_upgrade: false,
    #             is_major_version_upgrade: false,
    #             supports_global_databases: false
    #           }
    #         ],
    #         supported_timezones: [
    #           {
    #             timezone_name: "String"
    #           }
    #         ],
    #         exportable_log_types: ["String"],
    #         supports_log_exports_to_cloudwatch_logs: false,
    #         supports_read_replica: false,
    #         supports_global_databases: false
    #       }
    #     ]
    #   }
    # @return [Types::DBEngineVersionMessage]
    def describe_db_engine_versions(params = {}, options = {})
      request = build_request(:describe_db_engine_versions, params)
      request.send_request(options)
    end

    # <p>Returns information about provisioned instances, and supports pagination.</p>
    #          <note>
    #             <p>This operation can also return information for Amazon RDS instances
    #     and Amazon DocDB instances.</p>
    #          </note>
    # @param [Hash, Types::DescribeDBInstancesMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The user-supplied instance identifier. If this parameter is specified, information from
    #         only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more DB instances to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           instances associated with the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB instances created by that engine.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB instances are returned, you could use the following command:</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
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
    #         master_username: "String",
    #         db_name: "String",
    #         endpoint: {
    #           address: "String",
    #           port: 1,
    #           hosted_zone_id: "String"
    #         },
    #         allocated_storage: 1,
    #         instance_create_time: Time.now,
    #         preferred_backup_window: "String",
    #         backup_retention_period: 1,
    #         db_security_groups: [
    #           {
    #             db_security_group_name: "String",
    #             status: "String"
    #           }
    #         ],
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         db_parameter_groups: [
    #           {
    #             db_parameter_group_name: "String",
    #             parameter_apply_status: "String"
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
    #         multi_az: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         read_replica_source_db_instance_identifier: "String",
    #         read_replica_db_instance_identifiers: ["String"],
    #         read_replica_db_cluster_identifiers: ["String"],
    #         license_model: "String",
    #         iops: 1,
    #         option_group_memberships: [
    #           {
    #             option_group_name: "String",
    #             status: "String"
    #           }
    #         ],
    #         character_set_name: "String",
    #         secondary_availability_zone: "String",
    #         publicly_accessible: false,
    #         status_infos: [
    #           {
    #             status_type: "String",
    #             normal: false,
    #             status: "String",
    #             message: "String"
    #           }
    #         ],
    #         storage_type: "String",
    #         tde_credential_arn: "String",
    #         db_instance_port: 1,
    #         db_cluster_identifier: "String",
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         dbi_resource_id: "String",
    #         ca_certificate_identifier: "String",
    #         domain_memberships: [
    #           {
    #             domain: "String",
    #             status: "String",
    #             fqdn: "String",
    #             iam_role_name: "String"
    #           }
    #         ],
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         enhanced_monitoring_resource_arn: "String",
    #         monitoring_role_arn: "String",
    #         promotion_tier: 1,
    #         db_instance_arn: "String",
    #         timezone: "String",
    #         iam_database_authentication_enabled: false,
    #         performance_insights_enabled: false,
    #         performance_insights_kms_key_id: "String",
    #         enabled_cloudwatch_logs_exports: ["String"],
    #         deletion_protection: false
    #       }
    #     ]
    #   }
    # @return [Types::DBInstanceMessage]
    def describe_db_instances(params = {}, options = {})
      request = build_request(:describe_db_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DBParameterGroup</code> descriptions. If a
    #       <code>DBParameterGroupName</code> is specified, the list will contain only the description of
    #       the specified DB parameter group.</p>
    # @param [Hash, Types::DescribeDBParameterGroupsMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String",
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
    #   response = client.describe_db_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     db_parameter_groups: [
    #       {
    #         db_parameter_group_name: "String",
    #         db_parameter_group_family: "String",
    #         description: "String",
    #         db_parameter_group_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DBParameterGroupsMessage]
    def describe_db_parameter_groups(params = {}, options = {})
      request = build_request(:describe_db_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns the detailed parameter list for a particular DB parameter group.</p>
    # @param [Hash, Types::DescribeDBParametersMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source
    #   <p>The parameter types to return.</p>
    #            <p>Default: All parameter types returned</p>
    #            <p>Valid Values: <code>user | system | engine-default</code>
    #            </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeDBParameters</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String", # required
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
    #   response = client.describe_db_parameters(params, options)
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
    # @return [Types::DescribeDBParametersOutput]
    def describe_db_parameters(params = {}, options = {})
      request = build_request(:describe_db_parameters, params)
      request.send_request(options)
    end

    # <p>Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the
    #       list will contain only the descriptions of the specified DBSubnetGroup.</p>
    #          <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>.</p>
    # @param [Hash, Types::DescribeDBSubnetGroupsMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the DB subnet group to return details for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If
    #         this parameter is specified, the response includes only records beyond the marker, up to the
    #         value specified by <code>MaxRecords</code>.</p>
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
    #       engine.</p>
    # @param [Hash, Types::DescribeEngineDefaultClusterParametersMessage] params
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the DB cluster parameter group family to return engine parameter information
    #         for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified,
    #         the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
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

    # <p>Returns the default engine and system parameter information for the specified database
    #       engine.</p>
    # @param [Hash, Types::DescribeEngineDefaultParametersMessage] params
    # @option params [String] :db_parameter_group_family
    #   <p>The name of the DB parameter group family.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
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
    #   response = client.describe_engine_default_parameters(params, options)
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
    # @return [Types::DescribeEngineDefaultParametersResult]
    def describe_engine_default_parameters(params = {}, options = {})
      request = build_request(:describe_engine_default_parameters, params)
      request.send_request(options)
    end

    # <p>Displays a list of categories for all event source types, or, if specified, for a
    #       specified source type.</p>
    # @param [Hash, Types::DescribeEventCategoriesMessage] params
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
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

    # <p>Lists all the subscription descriptions for a customer account. The description for a
    #       subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID,
    #       CreationTime, and Status.</p>
    #          <p>If you specify a SubscriptionName, lists the description for that subscription.</p>
    # @param [Hash, Types::DescribeEventSubscriptionsMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to describe.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
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

    # <p>Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter
    #       groups for the past 14 days. Events specific to a particular DB instance, DB security group,
    #       database snapshot, or DB parameter group can be obtained by providing the name as a parameter.
    #       By default, the past hour of events are returned.</p>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then
    #         all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIdentifier is supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBInstance</code>, then a
    #             <code>DBInstanceIdentifier</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBParameterGroup</code>, a
    #             <code>DBParameterGroupName</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #         returned.</p>
    # @option params [Time] :start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    # @option params [Time] :end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    # @option params [Integer] :duration
    #   <p>The number of minutes to retrieve events for.</p>
    #            <p>Default: 60</p>
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories that trigger notifications for a event notification
    #         subscription.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeEvents request. If this
    #         parameter is specified, the response includes only records beyond the marker, up to the value
    #         specified by <code>MaxRecords</code>.</p>
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

    # <p>Returns information about Neptune global database clusters. This API
    #       supports pagination.</p>
    # @param [Hash, Types::DescribeGlobalClustersMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified,
    #         only information about the specified DB cluster is returned. This parameter
    #         is not case-sensitive.</p>
    #            <p>Constraints: If supplied, must match an existing DB cluster identifier.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records
    #         exist than the specified <code>MaxRecords</code> value, a pagination marker token
    #         is included in the response that you can use to retrieve the remaining results.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>(<i>Optional</i>) A pagination token returned by a previous
    #         call to <code>DescribeGlobalClusters</code>. If this parameter is specified,
    #         the response will only include records beyond the marker, up to the number
    #         specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier",
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
    #         storage_encrypted: false,
    #         deletion_protection: false,
    #         global_cluster_members: [
    #           {
    #             db_cluster_arn: "String",
    #             readers: ["String"],
    #             is_writer: false
    #           }
    #         ],
    #         failover_state: {
    #           status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #           from_db_cluster_arn: "String",
    #           to_db_cluster_arn: "String",
    #           is_data_loss_allowed: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GlobalClustersMessage]
    def describe_global_clusters(params = {}, options = {})
      request = build_request(:describe_global_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of orderable DB instance options for the specified engine.</p>
    # @param [Hash, Types::DescribeOrderableDBInstanceOptionsMessage] params
    # @option params [String] :engine
    #   <p>The name of the engine to retrieve DB instance options for.</p>
    # @option params [String] :engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #         offerings matching the specified engine version.</p>
    # @option params [String] :db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only the available
    #         offerings matching the specified DB instance class.</p>
    # @option params [String] :license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #         offerings matching the specified license model.</p>
    # @option params [Boolean] :vpc
    #   <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC
    #         offerings.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>This parameter is not currently supported.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
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
    #         multi_az_capable: false,
    #         read_replica_capable: false,
    #         vpc: false,
    #         supports_storage_encryption: false,
    #         storage_type: "String",
    #         supports_iops: false,
    #         supports_enhanced_monitoring: false,
    #         supports_iam_database_authentication: false,
    #         supports_performance_insights: false,
    #         min_storage_size: 1,
    #         max_storage_size: 1,
    #         min_iops_per_db_instance: 1,
    #         max_iops_per_db_instance: 1,
    #         min_iops_per_gib: 1.0,
    #         max_iops_per_gib: 1.0,
    #         supports_global_databases: false
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::OrderableDBInstanceOptionsMessage]
    def describe_orderable_db_instance_options(params = {}, options = {})
      request = build_request(:describe_orderable_db_instance_options, params)
      request.send_request(options)
    end

    # <p>Returns a list of resources (for example, DB instances) that have at least one pending
    #       maintenance action.</p>
    # @param [Hash, Types::DescribePendingMaintenanceActionsMessage] params
    # @option params [String] :resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #         for.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #             Resource Names (ARNs). The results list will only include pending maintenance actions for
    #             the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs.
    #             The results list will only include pending maintenance actions for the DB instances
    #             identified by these ARNs.</p>
    #               </li>
    #            </ul>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to a number of records specified by
    #         <code>MaxRecords</code>.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
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

    # <p>You can call <a>DescribeValidDBInstanceModifications</a>
    #       to learn what modifications you can make to your DB instance. You can use this
    #       information when you call <a>ModifyDBInstance</a>.</p>
    # @param [Hash, Types::DescribeValidDBInstanceModificationsMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The customer identifier or the ARN of your DB instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_valid_db_instance_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     valid_db_instance_modifications_message: {
    #       storage: [
    #         {
    #           storage_type: "String",
    #           storage_size: [
    #             {
    #               from: 1,
    #               to: 1,
    #               step: 1
    #             }
    #           ],
    #           provisioned_iops: [
    #             {
    #               from: 1,
    #               to: 1,
    #               step: 1
    #             }
    #           ],
    #           iops_to_storage_ratio: [
    #             {
    #               from: 1.0,
    #               to: 1.0
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeValidDBInstanceModificationsResult]
    def describe_valid_db_instance_modifications(params = {}, options = {})
      request = build_request(:describe_valid_db_instance_modifications, params)
      request.send_request(options)
    end

    # <p>Forces a failover for a DB cluster.</p>
    #          <p>A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the
    #       DB cluster to be the primary instance (the cluster writer).</p>
    #          <p>Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the
    #       primary instance fails. You can force a failover when you want to simulate a failure of a
    #       primary instance for testing. Because each instance in a DB cluster has its own endpoint
    #       address, you will need to clean up and re-establish any existing connections that use those
    #       endpoint addresses when the failover is complete.</p>
    # @param [Hash, Types::FailoverDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>A DB cluster identifier to force a failover for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #            <p>You must specify the instance identifier for an Read Replica in the DB cluster. For
    #         example, <code>mydbcluster-replica1</code>.</p>
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::FailoverDBClusterResult]
    def failover_db_cluster(params = {}, options = {})
      request = build_request(:failover_db_cluster, params)
      request.send_request(options)
    end

    # <p>Initiates the failover process for a Neptune global database.</p>
    #          <p>A failover for a Neptune global database promotes one of secondary
    #       read-only DB clusters to be the primary DB cluster and demotes the
    #       primary DB cluster to being a secondary (read-only) DB cluster. In other
    #       words, the role of the current primary DB cluster and the selected
    #       target secondary DB cluster are switched. The selected secondary DB cluster
    #       assumes full read/write capabilities for the Neptune global database.</p>
    #          <note>
    #             <p>This action applies <b>only</b> to
    #       Neptune global databases. This action is only intended for use on healthy
    #       Neptune global databases with healthy Neptune DB clusters and no region-wide
    #       outages, to test disaster recovery scenarios or to reconfigure the global
    #       database topology.</p>
    #          </note>
    # @param [Hash, Types::FailoverGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>Identifier of the Neptune global database that should be failed over.
    #         The identifier is the unique key assigned by the user when the Neptune 
    #         global database was created. In other words, it's the name of the global
    #         database that you want to fail over.</p>
    #            <p>Constraints: Must match the identifier of an existing Neptune global
    #         database.</p>
    # @option params [String] :target_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) of the secondary Neptune DB cluster
    #         that you want to promote to primary for the global database.</p>
    # @option params [Boolean] :allow_data_loss
    #   <p>Specifies whether to allow data loss for this global database cluster operation.
    #         Allowing data loss triggers a global failover operation.</p>
    #            <p>If you don't specify <code>AllowDataLoss</code>, the global database cluster operation
    #         defaults to a switchover.</p>
    #            <p>Constraints:Can't be specified together with the <code>Switchover</code> parameter.</p>
    # @option params [Boolean] :switchover
    #   <p>Specifies whether to switch over this global database cluster.</p>
    #            <p>Constraints:Can't be specified together with the <code>AllowDataLoss</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "String", # required
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
    #     }
    #   }
    # @return [Types::FailoverGlobalClusterResult]
    def failover_global_cluster(params = {}, options = {})
      request = build_request(:failover_global_cluster, params)
      request.send_request(options)
    end

    # <p>Lists all tags on an Amazon Neptune resource.</p>
    # @param [Hash, Types::ListTagsForResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name
    #         (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
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

    # <p>Modify a setting for a DB cluster. You can change one or more database configuration
    #       parameters by specifying these parameters and the new values in the request.</p>
    # @param [Hash, Types::ModifyDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier for the cluster being modified. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :new_db_cluster_identifier
    #   <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    # @option params [Boolean] :apply_immediately
    #   <p>A value that specifies whether the modifications in this request and any pending
    #         modifications are asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set
    #         to <code>false</code>, changes to the DB cluster are applied during the next maintenance
    #         window.</p>
    #            <p>The <code>ApplyImmediately</code> parameter only affects <code>NewDBClusterIdentifier</code>
    #         values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to
    #         <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window.
    #         All other changes are applied immediately, regardless of the value of the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the DB cluster will belong to.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>Not supported by Neptune.</i>
    #            </p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled, using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region.</p>
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
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the
    #         week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB cluster. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html#cloudwatch-logs-cli">Using the
    #         CLI to publish Neptune audit logs to CloudWatch Logs</a>.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade. Changing this
    #         parameter results in an outage. The change is applied during the next maintenance window
    #         unless the <code>ApplyImmediately</code> parameter is set to true.</p>
    #            <p>For a list of valid engine versions, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html">Engine Releases for Amazon
    #         Neptune</a>, or call <a>DescribeDBEngineVersions</a>.</p>
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>A value that indicates whether upgrades between different major versions are allowed.</p>
    #            <p>Constraints: You must set the allow-major-version-upgrade flag when providing an
    #         <code>EngineVersion</code> parameter that uses a different major version than the DB cluster's current
    #         version.</p>
    # @option params [String] :db_instance_parameter_group_name
    #   <p>The name of the DB parameter group to apply to all instances of the DB cluster. </p>
    #            <note>
    #               <p>When you apply a parameter group using <code>DBInstanceParameterGroupName</code>,
    #         parameter changes aren't applied during the next maintenance window but instead are
    #         applied immediately.</p>
    #            </note>
    #            <p>Default: The existing name setting</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>The DB parameter group must be in the same DB parameter group family as
    #           the target DB cluster version.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>DBInstanceParameterGroupName</code> parameter is only valid in combination with
    #           the <code>AllowMajorVersionUpgrade</code> parameter.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.</p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of a Neptune Serverless DB cluster.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html">Using Amazon Neptune Serverless</a> in the
    #         <i>Amazon Neptune User Guide</i>.</p>
    # @option params [String] :storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>Valid Values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>standard</code>
    #                     </b>   –  
    #           ( <i>the default</i> ) Configures cost-effective database storage for applications
    #           with moderate to small I/O usage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>iopt1</code>
    #                     </b>   –  
    #             Enables <a href="https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage">I/O-Optimized storage</a>
    #             that's designed to meet the needs of I/O-intensive graph workloads that
    #             require predictable pricing with low I/O latency and consistent I/O throughput.</p>
    #                  <p>Neptune I/O-Optimized storage is only available starting with engine release 1.3.0.0.</p>
    #               </li>
    #            </ul>
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
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     enable_iam_database_authentication: false,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"]
    #     },
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     db_instance_parameter_group_name: "String",
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0
    #     },
    #     storage_type: "String"
    #   }
    #   options = {}
    #   response = client.modify_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::ModifyDBClusterResult]
    def modify_db_cluster(params = {}, options = {})
      request = build_request(:modify_db_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the properties of an endpoint in an Amazon Neptune DB cluster.</p>
    # @param [Hash, Types::ModifyDBClusterEndpointMessage] params
    # @option params [String] :db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to modify. This parameter is stored as a lowercase string.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    # @option params [Array<String>] :static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    # @option params [Array<String>] :excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_endpoint_identifier: "String", # required
    #     endpoint_type: "String",
    #     static_members: ["String"],
    #     excluded_members: ["String"]
    #   }
    #   options = {}
    #   response = client.modify_db_cluster_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_endpoint_identifier: "String",
    #     db_cluster_identifier: "String",
    #     db_cluster_endpoint_resource_identifier: "String",
    #     endpoint: "String",
    #     status: "String",
    #     endpoint_type: "String",
    #     custom_endpoint_type: "String",
    #     static_members: ["String"],
    #     excluded_members: ["String"],
    #     db_cluster_endpoint_arn: "String"
    #   }
    # @return [Types::ModifyDBClusterEndpointOutput]
    def modify_db_cluster_endpoint(params = {}, options = {})
      request = build_request(:modify_db_cluster_endpoint, params)
      request.send_request(options)
    end

    # <p> Modifies the parameters of a DB cluster parameter group. To modify more than one
    #       parameter, submit a list of the following: <code>ParameterName</code>,
    #       <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be
    #       modified in a single request.</p>
    #          <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static parameters
    #         require a reboot without failover to the DB cluster associated with the parameter group
    #         before the change can take effect.</p>
    #          </note>
    #          <important>
    #             <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before
    #         creating your first DB cluster that uses that DB cluster parameter group as the default
    #         parameter group. This allows Amazon Neptune to fully complete the create action before the
    #         parameter group is used as the default for a new DB cluster. This is especially important
    #         for parameters that are critical when creating the default database for a DB cluster, such
    #         as the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the <a>DescribeDBClusterParameters</a> command to verify that your DB cluster parameter
    #         group has been created or modified.</p>
    #          </important>
    # @param [Hash, Types::ModifyDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to modify.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameters in the DB cluster parameter group to modify.</p>
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

    # <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB
    #       cluster snapshot.</p>
    #          <p>To share a manual DB cluster snapshot with other Amazon accounts, specify
    #       <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code>
    #       parameter to add a list of IDs of the Amazon accounts that are authorized to restore the manual
    #       DB cluster snapshot. Use the value <code>all</code> to make the manual DB cluster snapshot
    #       public, which means that it can be copied or restored by all Amazon accounts. Do not add the
    #       <code>all</code> value for any manual DB cluster snapshots that contain private information
    #       that you don't want available to all Amazon accounts. If a manual DB cluster snapshot is
    #       encrypted, it can be shared, but only by specifying a list of authorized Amazon account IDs for
    #       the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that
    #       parameter in this case.</p>
    #          <p>To view which Amazon accounts have access to copy or restore a manual DB cluster snapshot, or
    #       whether a manual DB cluster snapshot public or private, use the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    # @param [Hash, Types::ModifyDBClusterSnapshotAttributeMessage] params
    # @option params [String] :db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the DB cluster snapshot attribute to modify.</p>
    #            <p>To manage authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this value to <code>restore</code>.</p>
    # @option params [Array<String>] :values_to_add
    #   <p>A list of DB cluster snapshot attributes to add to the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To authorize other Amazon accounts to copy or restore a manual DB cluster snapshot, set this
    #         list to include one or more Amazon account IDs, or <code>all</code> to make the manual DB cluster
    #         snapshot restorable by any Amazon account. Do not add the <code>all</code> value for any manual
    #         DB cluster snapshots that contain private information that you don't want available to all Amazon
    #         accounts.</p>
    # @option params [Array<String>] :values_to_remove
    #   <p>A list of DB cluster snapshot attributes to remove from the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To remove authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this list to include one or more Amazon account identifiers, or <code>all</code> to
    #         remove authorization for any Amazon account to copy or restore the DB cluster snapshot. If you
    #         specify <code>all</code>, an Amazon account whose account ID is explicitly added to the
    #         <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
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

    # <p>Modifies settings for a DB instance. You can change one or more database configuration
    #       parameters by specifying these parameters and the new values in the request. To learn what
    #       modifications you can make to your DB instance, call <a>DescribeValidDBInstanceModifications</a> before you call <a>ModifyDBInstance</a>.</p>
    # @param [Hash, Types::ModifyDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :allocated_storage
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :db_instance_class
    #   <p>The new compute and memory capacity of the DB instance, for example,
    #         <code>db.m4.large</code>. Not all DB instance classes are available in all Amazon
    #         Regions.</p>
    #            <p>If you modify the DB instance class, an outage occurs during the change. The change is
    #         applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified
    #         as <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    # @option params [String] :db_subnet_group_name
    #   <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB
    #         instance to a different VPC.</p>
    #            <p>Changing the subnet group causes an outage during the change. The change is applied during
    #         the next maintenance window, unless you specify <code>true</code> for the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetGroup</code>
    #            </p>
    # @option params [Array<String>] :db_security_groups
    #   <p>A list of DB security groups to authorize on this DB instance. Changing this setting
    #         doesn't result in an outage and the change is asynchronously applied as soon as
    #         possible.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing DBSecurityGroups.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is
    #         asynchronously applied as soon as possible.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing VpcSecurityGroupIds.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #         asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB instance.</p>
    #            <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied
    #         during the next maintenance window. Some parameter changes can cause an outage and are applied
    #         on the next call to <a>RebootDBInstance</a>, or the next
    #         failure reboot.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :master_user_password
    #   <p>Not supported by Neptune.</p>
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group to apply to the DB instance. Changing this setting
    #         doesn't result in an outage. The parameter group name itself is changed immediately, but the
    #         actual parameter changes are not applied until you reboot the instance without failover. The
    #         db instance will NOT be rebooted automatically and the parameter changes will NOT be applied
    #         during the next maintenance window.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Constraints: The DB parameter group must be in the same DB parameter group family as this
    #         DB instance.</p>
    # @option params [Integer] :backup_retention_period
    #   <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: Uses existing setting</p>
    # @option params [String] :preferred_backup_window
    #   <p> The daily time range during which automated backups are created if automated backups are
    #         enabled.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format hh24:mi-hh24:mi</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Time Coordinated (UTC)</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #         result in an outage. Changing this parameter doesn't result in an outage, except in the
    #         following situation, and the change is asynchronously applied as soon as possible. If there
    #         are pending actions that cause a reboot, and the maintenance window is changed to include the
    #         current time, then changing this parameter will cause a reboot of the DB instance. If moving
    #         this window to the current time, there must be at least 30 minutes between the current time
    #         and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    # @option params [Boolean] :multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't
    #         result in an outage and the change is applied during the next maintenance window unless the
    #         <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to upgrade to. Currently, setting this
    #         parameter has no effect. To upgrade your database engine to the most recent release,
    #         use the <a>ApplyPendingMaintenanceAction</a> API.</p>
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter doesn't result
    #         in an outage and the change is asynchronously applied as soon as possible.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p> Indicates that minor version upgrades are applied automatically to the DB instance during
    #         the maintenance window. Changing this parameter doesn't result in an outage except in the
    #         following case and the change is asynchronously applied as soon as possible. An outage will
    #         result if this parameter is set to <code>true</code> during the maintenance window, and a
    #         newer minor version is available, and Neptune has enabled auto patching for that engine
    #         version.</p>
    # @option params [String] :license_model
    #   <p>Not supported by Neptune.</p>
    # @option params [Integer] :iops
    #   <p>The new Provisioned IOPS (I/O operations per second) value for the instance.</p>
    #            <p>Changing this setting doesn't result in an outage and the change is applied during the
    #         next maintenance window unless the <code>ApplyImmediately</code> parameter is set to
    #         <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [String] :new_db_instance_identifier
    #   <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you
    #         change the DB instance identifier, an instance reboot will occur immediately if you set
    #         <code>Apply Immediately</code> to true, or will occur during the next maintenance window if
    #         <code>Apply Immediately</code> to false. This value is stored as a lowercase string.</p>
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
    # @option params [String] :storage_type
    #   <p>Not applicable. In Neptune the storage type is managed at the DB Cluster level.</p>
    # @option params [String] :tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    # @option params [String] :tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    # @option params [String] :ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    # @option params [String] :domain
    #   <p>Not supported.</p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    # @option params [Integer] :monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    # @option params [Integer] :db_port_number
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values
    #         specified for options in the option group for the DB instance.</p>
    #            <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless
    #         of the value of the <code>ApplyImmediately</code> parameter.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Indicates whether the DB instance is publicly accessible.</p>
    #            <p>When the DB instance is publicly accessible and you connect from outside of the DB instance's virtual private 
    #         cloud (VPC), its Domain Name System (DNS) endpoint resolves to the public IP address. When you connect from within 
    #         the same VPC as the DB instance, the endpoint resolves to the private IP address. Access to the DB instance is 
    #         ultimately controlled by the security group it uses. That public access isn't permitted if the security group assigned 
    #         to the DB cluster doesn't permit it.</p>
    #            <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a 
    #         private IP address.</p>
    # @option params [String] :monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    # @option params [String] :domain_iam_role_name
    #   <p>Not supported</p>
    # @option params [Integer] :promotion_tier
    #   <p>A value that specifies the order in which a Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>You can enable IAM database authentication for the following database engines</p>
    #            <p>Not applicable. Mapping Amazon IAM accounts to database accounts is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Boolean] :enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [String] :performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB instance or DB cluster.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.  See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     db_instance_class: "String",
    #     db_subnet_group_name: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     apply_immediately: false,
    #     master_user_password: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     new_db_instance_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "SensitiveString",
    #     ca_certificate_identifier: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     db_port_number: 1,
    #     publicly_accessible: false,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"]
    #     },
    #     deletion_protection: false
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
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       db_security_groups: [
    #         {
    #           db_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "String",
    #           parameter_apply_status: "String"
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
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       read_replica_source_db_instance_identifier: "String",
    #       read_replica_db_instance_identifiers: ["String"],
    #       read_replica_db_cluster_identifiers: ["String"],
    #       license_model: "String",
    #       iops: 1,
    #       option_group_memberships: [
    #         {
    #           option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       character_set_name: "String",
    #       secondary_availability_zone: "String",
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       storage_type: "String",
    #       tde_credential_arn: "String",
    #       db_instance_port: 1,
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       domain_memberships: [
    #         {
    #           domain: "String",
    #           status: "String",
    #           fqdn: "String",
    #           iam_role_name: "String"
    #         }
    #       ],
    #       copy_tags_to_snapshot: false,
    #       monitoring_interval: 1,
    #       enhanced_monitoring_resource_arn: "String",
    #       monitoring_role_arn: "String",
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       timezone: "String",
    #       iam_database_authentication_enabled: false,
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::ModifyDBInstanceResult]
    def modify_db_instance(params = {}, options = {})
      request = build_request(:modify_db_instance, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a DB parameter group. To modify more than one parameter,
    #       submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and
    #       <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p>
    #          <note>
    #             <p>Changes to dynamic parameters are applied immediately. Changes to static parameters
    #         require a reboot without failover to the DB instance associated with the parameter group
    #         before the change can take effect.</p>
    #          </note>
    #          <important>
    #             <p>After you modify a DB parameter group, you should wait at least 5 minutes before
    #         creating your first DB instance that uses that DB parameter group as the default parameter
    #         group. This allows Amazon Neptune to fully complete the modify action before the parameter
    #         group is used as the default for a new DB instance. This is especially important for
    #         parameters that are critical when creating the default database for a DB instance, such as
    #         the character set for the default database defined by the
    #         <code>character_set_database</code> parameter. You can use the <i>Parameter
    #         Groups</i> option of the Amazon Neptune console or the
    #         <i>DescribeDBParameters</i> command to verify that your DB parameter group has
    #         been created or modified.</p>
    #          </important>
    # @param [Hash, Types::ModifyDBParameterGroupMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>An array of parameter names, values, and the apply method for the parameter update. At
    #         least one parameter name, value, and apply method must be supplied; subsequent arguments are
    #         optional. A maximum of 20 parameters can be modified in a single request.</p>
    #            <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
    #            </p>
    #            <note>
    #               <p>You can use the immediate value with dynamic parameters only. You can use the
    #           pending-reboot value for both dynamic and static parameters, and changes are applied when
    #           you reboot the DB instance without failover.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String", # required
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
    #   response = client.modify_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_parameter_group_name: "String"
    #   }
    # @return [Types::ModifyDBParameterGroupOutput]
    def modify_db_parameter_group(params = {}, options = {})
      request = build_request(:modify_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in
    #       at least two AZs in the Amazon Region.</p>
    # @param [Hash, Types::ModifyDBSubnetGroupMessage] params
    # @option params [String] :db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string. You can't
    #         modify the default subnet group.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the DB subnet group.</p>
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

    # <p>Modifies an existing event notification subscription. Note that you can't modify the
    #       source identifiers using this call; to change source identifiers for a subscription, use the
    #       <a>AddSourceIdentifierToSubscription</a> and <a>RemoveSourceIdentifierFromSubscription</a> calls.</p>
    #          <p>You can see a list of the event categories for a given SourceType
    #       by using the <b>DescribeEventCategories</b> action.</p>
    # @param [Hash, Types::ModifyEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    # @option params [String] :source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType
    #         
    #         by using the <b>DescribeEventCategories</b> action.</p>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription.</p>
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

    # <p>Modify a setting for an Amazon Neptune global cluster. You can change one
    #       or more database configuration parameters by specifying these parameters
    #       and their new values in the request.</p>
    # @param [Hash, Types::ModifyGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The DB cluster identifier for the global cluster being modified. This parameter
    #         is not case-sensitive.</p>
    #            <p>Constraints: Must match the identifier of an existing global database cluster.</p>
    # @option params [String] :new_global_cluster_identifier
    #   <p>A new cluster identifier to assign to the global database. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates whether the global database has deletion protection enabled. The
    #         global database cannot be deleted when deletion protection is enabled.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #         Changing this parameter will result in an outage. The change is applied during
    #         the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #            <p>To list all of the available Neptune engine versions, use the following command:</p>
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #            <p>Constraints: You must allow major version upgrades if you specify a value
    #         for the <code>EngineVersion</code> parameter that is a different major version
    #         than the DB cluster's current version.</p>
    #            <p>If you upgrade the major version of a global database, the cluster and
    #         DB instance parameter groups are set to the default parameter groups for the
    #         new version, so you will need to apply any custom parameter groups after
    #         completing the upgrade.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     new_global_cluster_identifier: "GlobalClusterIdentifier",
    #     deletion_protection: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
    #     }
    #   }
    # @return [Types::ModifyGlobalClusterResult]
    def modify_global_cluster(params = {}, options = {})
      request = build_request(:modify_global_cluster, params)
      request.send_request(options)
    end

    # <p>Not supported.</p>
    # @param [Hash, Types::PromoteReadReplicaDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>Not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.promote_read_replica_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster: {
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::PromoteReadReplicaDBClusterResult]
    def promote_read_replica_db_cluster(params = {}, options = {})
      request = build_request(:promote_read_replica_db_cluster, params)
      request.send_request(options)
    end

    # <p>You might need to reboot your DB instance, usually for maintenance reasons. For example,
    #       if you make certain modifications, or if you change the DB parameter group associated with the
    #       DB instance, you must reboot the instance for the changes to take effect.</p>
    #          <p>Rebooting a DB instance restarts the database engine service. Rebooting a DB instance
    #       results in a momentary outage, during which the DB instance status is set to rebooting.</p>
    # @param [Hash, Types::RebootDBInstanceMessage] params
    # @option params [String] :db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a MultiAZ failover.</p>
    #            <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #         MultiAZ.</p>
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
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         hosted_zone_id: "String"
    #       },
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       preferred_backup_window: "String",
    #       backup_retention_period: 1,
    #       db_security_groups: [
    #         {
    #           db_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "String",
    #           parameter_apply_status: "String"
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
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       read_replica_source_db_instance_identifier: "String",
    #       read_replica_db_instance_identifiers: ["String"],
    #       read_replica_db_cluster_identifiers: ["String"],
    #       license_model: "String",
    #       iops: 1,
    #       option_group_memberships: [
    #         {
    #           option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       character_set_name: "String",
    #       secondary_availability_zone: "String",
    #       publicly_accessible: false,
    #       status_infos: [
    #         {
    #           status_type: "String",
    #           normal: false,
    #           status: "String",
    #           message: "String"
    #         }
    #       ],
    #       storage_type: "String",
    #       tde_credential_arn: "String",
    #       db_instance_port: 1,
    #       db_cluster_identifier: "String",
    #       storage_encrypted: false,
    #       kms_key_id: "String",
    #       dbi_resource_id: "String",
    #       ca_certificate_identifier: "String",
    #       domain_memberships: [
    #         {
    #           domain: "String",
    #           status: "String",
    #           fqdn: "String",
    #           iam_role_name: "String"
    #         }
    #       ],
    #       copy_tags_to_snapshot: false,
    #       monitoring_interval: 1,
    #       enhanced_monitoring_resource_arn: "String",
    #       monitoring_role_arn: "String",
    #       promotion_tier: 1,
    #       db_instance_arn: "String",
    #       timezone: "String",
    #       iam_database_authentication_enabled: false,
    #       performance_insights_enabled: false,
    #       performance_insights_kms_key_id: "String",
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::RebootDBInstanceResult]
    def reboot_db_instance(params = {}, options = {})
      request = build_request(:reboot_db_instance, params)
      request.send_request(options)
    end

    # <p>Detaches a Neptune DB cluster from a Neptune global database. A secondary
    #       cluster becomes a normal standalone cluster with read-write capability
    #       instead of being read-only, and no longer receives data from a the
    #       primary cluster.</p>
    # @param [Hash, Types::RemoveFromGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier of the Neptune global database from which to detach the
    #         specified Neptune DB cluster.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster to be detached
    #         from the Neptune global database cluster.</p>
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
    #     }
    #   }
    # @return [Types::RemoveFromGlobalClusterResult]
    def remove_from_global_cluster(params = {}, options = {})
      request = build_request(:remove_from_global_cluster, params)
      request.send_request(options)
    end

    # <p>Disassociates an Identity and Access Management (IAM) role from a DB cluster.</p>
    # @param [Hash, Types::RemoveRoleFromDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to disassociate the IAM role from.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for
    #         example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    # @option params [String] :feature_name
    #   <p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
    #         For the list of supported feature names, see <a>DescribeDBEngineVersions</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_identifier: "String", # required
    #     role_arn: "String", # required
    #     feature_name: "String"
    #   }
    #   options = {}
    #   response = client.remove_role_from_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_role_from_db_cluster(params = {}, options = {})
      request = build_request(:remove_role_from_db_cluster, params)
      request.send_request(options)
    end

    # <p>Removes a source identifier from an existing event notification subscription.</p>
    # @param [Hash, Types::RemoveSourceIdentifierFromSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event notification subscription you want to remove a source identifier
    #         from.</p>
    # @option params [String] :source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security
    #         group.</p>
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

    # <p>Removes metadata tags from an Amazon Neptune resource.</p>
    # @param [Hash, Types::RemoveTagsFromResourceMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Neptune resource that the tags are removed from. This value is an Amazon
    #         Resource Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
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

    # <p> Modifies the parameters of a DB cluster parameter group to the default value. To reset
    #       specific parameters submit a list of the following: <code>ParameterName</code> and
    #       <code>ApplyMethod</code>. To reset the entire DB cluster parameter group, specify the
    #       <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters.</p>
    #          <p> When resetting the entire group, dynamic parameters are updated immediately and static
    #       parameters are set to <code>pending-reboot</code> to take effect on the next DB instance
    #       restart or <a>RebootDBInstance</a> request. You must call <a>RebootDBInstance</a> for every DB instance in your DB cluster
    #       that you want the updated static parameter to apply to.</p>
    # @param [Hash, Types::ResetDBClusterParameterGroupMessage] params
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to reset.</p>
    # @option params [Boolean] :reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster
    #         parameter group to their default values, and <code>false</code> otherwise. You can't use this
    #         parameter if there is a list of parameter names specified for the <code>Parameters</code>
    #         parameter.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of parameter names in the DB cluster parameter group to reset to the default
    #         values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set
    #         to <code>true</code>.</p>
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

    # <p>Modifies the parameters of a DB parameter group to the engine/system default value. To
    #       reset specific parameters, provide a list of the following: <code>ParameterName</code> and
    #       <code>ApplyMethod</code>. To reset the entire DB parameter group, specify the
    #       <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. When
    #       resetting the entire group, dynamic parameters are updated immediately and static parameters
    #       are set to <code>pending-reboot</code> to take effect on the next DB instance restart or
    #       <code>RebootDBInstance</code> request.</p>
    # @param [Hash, Types::ResetDBParameterGroupMessage] params
    # @option params [String] :db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :reset_all_parameters
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters
    #         in the DB parameter group to default values.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and
    #         <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of
    #         the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20
    #         parameters can be modified in a single request.</p>
    #            <p>Valid Values (for Apply method): <code>pending-reboot</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_parameter_group_name: "String", # required
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
    #   response = client.reset_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_parameter_group_name: "String"
    #   }
    # @return [Types::ResetDBParameterGroupOutput]
    def reset_db_parameter_group(params = {}, options = {})
      request = build_request(:reset_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new DB cluster from a DB snapshot or DB cluster snapshot.</p>
    #          <p>If a DB snapshot is specified, the target DB cluster is created from the source DB
    #       snapshot with a default configuration and default security group.</p>
    #          <p>If a DB cluster snapshot is specified, the target DB cluster is created from the source DB
    #       cluster restore point with the same configuration as the original source DB cluster, except
    #       that the new DB cluster is created with the default security group.</p>
    # @param [Hash, Types::RestoreDBClusterFromSnapshotMessage] params
    # @option params [Array<String>] :availability_zones
    #   <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can
    #         be created in.</p>
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This
    #         parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
    #            <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster
    #         snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing Snapshot.</p>
    #               </li>
    #            </ul>
    # @option params [String] :engine
    #   <p>The database engine to use for the new DB cluster.</p>
    #            <p>Default: The same as source</p>
    #            <p>Constraint: Must be compatible with the engine of the source</p>
    # @option params [String] :engine_version
    #   <p>The version of the database engine to use for the new DB cluster.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>The name of the DB subnet group to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :database_name
    #   <p>Not supported.</p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster will belong to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the restored DB cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from a DB
    #         snapshot or DB cluster snapshot.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is
    #             encrypted, then the restored DB cluster is encrypted using the KMS key that was used to
    #             encrypt the DB snapshot or DB cluster snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not
    #             encrypted, then the restored DB cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.</p>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    # @option params [Boolean] :copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the restored DB cluster that is created.</i>
    #            </p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of a Neptune Serverless DB cluster.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html">Using Amazon Neptune Serverless</a> in the
    #         <i>Amazon Neptune User Guide</i>.</p>
    # @option params [String] :storage_type
    #   <p>Specifies the storage type to be associated with the DB cluster.</p>
    #            <p>Valid values: <code>standard</code>, <code>iopt1</code>
    #            </p>
    #            <p>Default: <code>standard</code>
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
    #     database_name: "String",
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     db_cluster_parameter_group_name: "String",
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false,
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::RestoreDBClusterFromSnapshotResult]
    def restore_db_cluster_from_snapshot(params = {}, options = {})
      request = build_request(:restore_db_cluster_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Restores a DB cluster to an arbitrary point in time. Users can restore to any point in
    #       time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code>
    #       days. The target DB cluster is created from the source DB cluster with the same configuration
    #       as the original DB cluster, except that the new DB cluster is created with the default DB
    #       security group.</p>
    #          <note>
    #             <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You
    #         must invoke the <a>CreateDBInstance</a> action to create DB instances for the
    #         restored DB cluster, specifying the identifier of the restored DB cluster in
    #         <code>DBClusterIdentifier</code>. You can create DB instances only after the
    #         <code>RestoreDBClusterToPointInTime</code> action has completed and the DB cluster is
    #         available.</p>
    #          </note>
    # @param [Hash, Types::RestoreDBClusterToPointInTimeMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The name of the new DB cluster to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    # @option params [String] :restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the source
    #             DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source
    #             DB cluster.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored
    #         as a full copy of the source DB cluster.</p>
    # @option params [String] :source_db_cluster_identifier
    #   <p>The identifier of the source DB cluster from which to restore.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :restore_to_time
    #   <p>The date and time to restore the DB cluster to.</p>
    #            <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the DB instance</p>
    #               </li>
    #               <li>
    #                  <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not
    #             provided</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>RestoreType</code> parameter is
    #             <code>copy-on-write</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the DB cluster to the latest
    #         restorable backup time, and <code>false</code> otherwise.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is
    #         provided.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    # @option params [String] :db_subnet_group_name
    #   <p>The DB subnet group name to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster belongs to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be applied to the restored DB cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from an encrypted
    #         DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is
    #         different than the KMS key used to encrypt the source DB cluster. The new DB cluster is
    #         encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the
    #             KMS key that was used to encrypt the source DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB cluster is not encrypted, then the restored DB cluster is not
    #             encrypted.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the
    #         restore request is rejected.</p>
    # @option params [Boolean] :enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs.</p>
    # @option params [String] :db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    # @option params [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of a Neptune Serverless DB cluster.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html">Using Amazon Neptune Serverless</a> in the
    #         <i>Amazon Neptune User Guide</i>.</p>
    # @option params [String] :storage_type
    #   <p>Specifies the storage type to be associated with the DB cluster.</p>
    #            <p>Valid values: <code>standard</code>, <code>iopt1</code>
    #            </p>
    #            <p>Default: <code>standard</code>
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
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     db_cluster_parameter_group_name: "String",
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::RestoreDBClusterToPointInTimeResult]
    def restore_db_cluster_to_point_in_time(params = {}, options = {})
      request = build_request(:restore_db_cluster_to_point_in_time, params)
      request.send_request(options)
    end

    # <p>Starts an Amazon Neptune  DB cluster that was stopped using the Amazon
    #       console, the Amazon CLI stop-db-cluster command, or the StopDBCluster API.</p>
    # @param [Hash, Types::StartDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be started.
    #         This parameter is stored as a lowercase string.</p>
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::StartDBClusterResult]
    def start_db_cluster(params = {}, options = {})
      request = build_request(:start_db_cluster, params)
      request.send_request(options)
    end

    # <p>Stops an Amazon Neptune DB cluster. When you stop a DB cluster, Neptune
    #       retains the DB cluster's metadata, including its endpoints and DB parameter
    #       groups.</p>
    #          <p>Neptune also retains the transaction logs so you can do a point-in-time
    #       restore if necessary.</p>
    # @param [Hash, Types::StopDBClusterMessage] params
    # @option params [String] :db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be stopped.
    #         This parameter is stored as a lowercase string.</p>
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
    #       allocated_storage: 1,
    #       availability_zones: ["String"],
    #       backup_retention_period: 1,
    #       character_set_name: "String",
    #       database_name: "String",
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
    #       db_cluster_option_group_memberships: [
    #         {
    #           db_cluster_option_group_name: "String",
    #           status: "String"
    #         }
    #       ],
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
    #           status: "String",
    #           feature_name: "String"
    #         }
    #       ],
    #       iam_database_authentication_enabled: false,
    #       clone_group_id: "String",
    #       cluster_create_time: Time.now,
    #       copy_tags_to_snapshot: false,
    #       enabled_cloudwatch_logs_exports: ["String"],
    #       pending_modified_values: {
    #         pending_cloudwatch_logs_exports: {
    #           log_types_to_enable: ["String"],
    #           log_types_to_disable: ["String"]
    #         },
    #         db_cluster_identifier: "String",
    #         iam_database_authentication_enabled: false,
    #         engine_version: "String",
    #         backup_retention_period: 1,
    #         storage_type: "String",
    #         allocated_storage: 1,
    #         iops: 1
    #       },
    #       deletion_protection: false,
    #       cross_account_clone: false,
    #       automatic_restart_time: Time.now,
    #       serverless_v2_scaling_configuration: {
    #         min_capacity: 1.0,
    #         max_capacity: 1.0
    #       },
    #       global_cluster_identifier: "GlobalClusterIdentifier",
    #       io_optimized_next_allowed_modification_time: Time.now,
    #       storage_type: "String"
    #     }
    #   }
    # @return [Types::StopDBClusterResult]
    def stop_db_cluster(params = {}, options = {})
      request = build_request(:stop_db_cluster, params)
      request.send_request(options)
    end

    # <p>Switches over the specified secondary DB cluster to be the new primary DB cluster in the global
    #       database cluster. Switchover operations were previously called "managed planned failovers."</p>
    #          <p>Promotes the specified secondary cluster to assume full read/write capabilities and demotes the current
    #       primary cluster to a secondary (read-only) cluster, maintaining the original replication topology. All secondary
    #       clusters are synchronized with the primary at the beginning of the process so the new primary continues operations
    #       for the global database without losing any data. Your database is unavailable for a short time while the primary
    #       and selected secondary clusters are assuming their new roles.</p>
    #          <note>
    #             <p>This operation is intended for controlled environments, for operations such as "regional rotation" or
    #       to fall back to the original primary after a global database failover.</p>
    #          </note>
    # @param [Hash, Types::SwitchoverGlobalClusterMessage] params
    # @option params [String] :global_cluster_identifier
    #   <p>The identifier of the global database cluster to switch over. This parameter isn't case-sensitive.</p>
    #            <p>Constraints: Must match the identifier of an existing global database cluster.</p>
    # @option params [String] :target_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) of the secondary Neptune DB cluster that you want to promote to primary for
    #         the global database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "String", # required
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
    #       storage_encrypted: false,
    #       deletion_protection: false,
    #       global_cluster_members: [
    #         {
    #           db_cluster_arn: "String",
    #           readers: ["String"],
    #           is_writer: false
    #         }
    #       ],
    #       failover_state: {
    #         status: "pending" # One of: ["pending", "failing-over", "cancelling"],
    #         from_db_cluster_arn: "String",
    #         to_db_cluster_arn: "String",
    #         is_data_loss_allowed: false
    #       }
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
      context[:gem_name] = 'aws-sdk-neptune'
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

      # @api private
      def protocols
        {
          aws_query: Aws::Core::AwsQuery
        }
      end
    end
  end
end
