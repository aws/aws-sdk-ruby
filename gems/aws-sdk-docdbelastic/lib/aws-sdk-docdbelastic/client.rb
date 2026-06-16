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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:docdbelastic)

module Aws::DocDBElastic
  # An API client for Aws::DocDBElastic.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeraDbLionfishServiceLambda
    @identifier = :docdbelastic

    add_plugin(::Aws::DocDBElastic::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DocDBElastic::EndpointProvider)
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

    # <p>The type of pending maintenance action to be applied to the resource.</p>
    # @param [Hash, Types::ApplyPendingMaintenanceActionInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to which the pending maintenance action applies.</p>
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to the resource.</p>
    #            <p>Valid actions are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENGINE_UPDATE<i/>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENGINE_UPGRADE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SECURITY_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OS_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MASTER_USER_PASSWORD_UPDATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>IMMEDIATE</code> can't be undone.</p>
    # @option params [String] :apply_on
    #   <p>A specific date to apply the pending maintenance action. Required if opt-in-type is <code>APPLY_ON</code>. Format: <code>yyyy/MM/dd HH:mm-yyyy/MM/dd HH:mm</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "InputString", # required
    #     apply_action: "InputString", # required
    #     opt_in_type: "OptInType", # required
    #     apply_on: "InputString"
    #   }
    #   options = {}
    #   response = client.apply_pending_maintenance_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_pending_maintenance_action: { # required
    #       resource_arn: "String",
    #       pending_maintenance_action_details: [
    #         {
    #           action: "String", # required
    #           auto_applied_after_date: "String",
    #           forced_apply_date: "String",
    #           opt_in_status: "String",
    #           current_apply_date: "String",
    #           description: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ApplyPendingMaintenanceActionOutput]
    def apply_pending_maintenance_action(params = {}, options = {})
      request = build_request(:apply_pending_maintenance_action, params)
      request.send_request(options)
    end

    # <p>Copies a snapshot of an elastic cluster.</p>
    # @param [Hash, Types::CopyClusterSnapshotInput] params
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) identifier of the elastic cluster snapshot.</p>
    # @option params [String] :target_snapshot_name
    #   <p>The identifier of the new elastic cluster snapshot to create from the source cluster snapshot. 
    #         This parameter is not case sensitive.</p>
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
    #            <p>Example: <code>elastic-cluster-snapshot-5</code>
    #            </p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Web Services KMS key ID for an encrypted elastic cluster snapshot. 
    #         The Amazon Web Services KMS key ID is the Amazon Resource Name (ARN), Amazon Web Services KMS key identifier, or the Amazon Web Services KMS key alias for the Amazon Web Services KMS encryption key.</p>
    #            <p>If you copy an encrypted elastic cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new Amazon Web ServicesS KMS encryption key. 
    #         If you don't specify a value for <code>KmsKeyId</code>, then the copy of the elastic cluster snapshot is encrypted with the same <code>AWS</code> KMS key as the source elastic cluster snapshot.</p>
    #            <p>To copy an encrypted elastic cluster snapshot to another Amazon Web Services region, set <code>KmsKeyId</code> to the Amazon Web Services KMS key ID that you want to use to encrypt the copy of the elastic cluster snapshot in the destination region. 
    #         Amazon Web Services KMS encryption keys are specific to the Amazon Web Services region that they are created in, and you can't use encryption keys from one Amazon Web Services region in another Amazon Web Services region.</p>
    #            <p>If you copy an unencrypted elastic cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Set to <code>true</code> to copy all tags from the source cluster snapshot to the target elastic cluster snapshot. 
    #         The default is <code>false</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be assigned to the elastic cluster snapshot.</p>
    # @example Basic Copy Cluster Snapshot Example
    #   # update applied
    #   params = {
    #     snapshot_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster-snapshot/$SOURCE_SNAPSHOT_ID",
    #     target_snapshot_name: "sampleSnapshotName"
    #   }
    #   options = {}
    #   response = client.copy_cluster_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       subnet_ids: [
    #         "subnetId1",
    #         "subnetId2"
    #       ],
    #       snapshot_name: "sampleSnapshotName",
    #       snapshot_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster-snapshot/$TARGET_SNAPSHOT_ID",
    #       snapshot_creation_time: "2000-01-01T00:00:00.000Z",
    #       cluster_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster/$CLUSTER_ID",
    #       cluster_creation_time: "2000-01-01T00:00:00.000Z",
    #       status: "ACTIVE",
    #       vpc_security_group_ids: [
    #         "vpcSgId1, vpcSgId2"
    #       ],
    #       admin_user_name: "sampleAdminUser",
    #       kms_key_id: "AWS_OWNED_KMS_KEY",
    #       snapshot_type: "MANUAL"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_arn: "String", # required
    #     target_snapshot_name: "String", # required
    #     kms_key_id: "String",
    #     copy_tags: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.copy_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: { # required
    #       subnet_ids: ["String"], # required
    #       snapshot_name: "String", # required
    #       snapshot_arn: "String", # required
    #       snapshot_creation_time: "String", # required
    #       cluster_arn: "String", # required
    #       cluster_creation_time: "String", # required
    #       status: "Status", # required
    #       vpc_security_group_ids: ["String"], # required
    #       admin_user_name: "String", # required
    #       kms_key_id: "String", # required
    #       snapshot_type: "SnapshotType"
    #     }
    #   }
    # @return [Types::CopyClusterSnapshotOutput]
    def copy_cluster_snapshot(params = {}, options = {})
      request = build_request(:copy_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon DocumentDB elastic cluster and returns its cluster structure.</p>
    # @param [Hash, Types::CreateClusterOperationInput] params
    # @option params [String] :cluster_name
    #   <p>The name of the new elastic cluster. This parameter is stored as
    #         a lowercase string.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
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
    #            <p>
    #               <i>Example</i>: <code>my-cluster</code>
    #            </p>
    # @option params [String] :auth_type
    #   <p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. 
    #         Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>
    # @option params [String] :admin_user_name
    #   <p>The name of the Amazon DocumentDB elastic clusters administrator.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word.</p>
    #               </li>
    #            </ul>
    # @option params [String] :admin_user_password
    #   <p>The password for the Amazon DocumentDB elastic clusters administrator. The password can contain any printable ASCII characters.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 8 to 100 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain a forward slash (/), double quote ("), or the "at" symbol (@).</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :shard_capacity
    #   <p>The number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>
    # @option params [Integer] :shard_count
    #   <p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the new
    #         elastic cluster.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the new elastic cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use to encrypt the new elastic cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #           encryption key. If you are creating a cluster using the same Amazon account
    #           that owns this KMS encryption key, you can use the KMS key alias instead
    #           of the ARN as the KMS encryption key.</p>
    #            <p>If an encryption key is not specified, Amazon DocumentDB uses the
    #           default encryption key that KMS creates for your account. Your account
    #           has a different default encryption key for each Amazon Region.</p>
    # @option params [String] :client_token
    #   <p>The client token for the elastic cluster.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur,
    #         in Universal Coordinated Time (UTC).</p>
    #            <p>
    #               <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>
    #               <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>
    #               <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>
    #               <i>Constraints</i>: Minimum 30-minute window.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be assigned to the new elastic cluster.</p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automatic snapshots are retained.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>
    # @option params [Integer] :shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     auth_type: "Auth", # required
    #     admin_user_name: "String", # required
    #     admin_user_password: "Password", # required
    #     shard_capacity: 1, # required
    #     shard_count: 1, # required
    #     vpc_security_group_ids: ["String"],
    #     subnet_ids: ["String"],
    #     kms_key_id: "String",
    #     client_token: "String",
    #     preferred_maintenance_window: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     shard_instance_count: 1
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::CreateClusterOperationOutput]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of an elastic cluster.</p>
    # @param [Hash, Types::CreateClusterSnapshotOperationInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster of which you want to create a snapshot.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of the new elastic cluster snapshot.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be assigned to the new elastic cluster snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #     snapshot_name: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: { # required
    #       subnet_ids: ["String"], # required
    #       snapshot_name: "String", # required
    #       snapshot_arn: "String", # required
    #       snapshot_creation_time: "String", # required
    #       cluster_arn: "String", # required
    #       cluster_creation_time: "String", # required
    #       status: "Status", # required
    #       vpc_security_group_ids: ["String"], # required
    #       admin_user_name: "String", # required
    #       kms_key_id: "String", # required
    #       snapshot_type: "SnapshotType"
    #     }
    #   }
    # @return [Types::CreateClusterSnapshotOperationOutput]
    def create_cluster_snapshot(params = {}, options = {})
      request = build_request(:create_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Delete an elastic cluster.</p>
    # @param [Hash, Types::DeleteClusterOperationInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster that is to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::DeleteClusterOperationOutput]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Delete an elastic cluster snapshot.</p>
    # @param [Hash, Types::DeleteClusterSnapshotOperationInput] params
    # @option params [String] :snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot that is to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: { # required
    #       subnet_ids: ["String"], # required
    #       snapshot_name: "String", # required
    #       snapshot_arn: "String", # required
    #       snapshot_creation_time: "String", # required
    #       cluster_arn: "String", # required
    #       cluster_creation_time: "String", # required
    #       status: "Status", # required
    #       vpc_security_group_ids: ["String"], # required
    #       admin_user_name: "String", # required
    #       kms_key_id: "String", # required
    #       snapshot_type: "SnapshotType"
    #     }
    #   }
    # @return [Types::DeleteClusterSnapshotOperationOutput]
    def delete_cluster_snapshot(params = {}, options = {})
      request = build_request(:delete_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific elastic cluster.</p>
    # @param [Hash, Types::GetClusterOperationInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::GetClusterOperationOutput]
    def get_cluster(params = {}, options = {})
      request = build_request(:get_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific elastic cluster snapshot</p>
    # @param [Hash, Types::GetClusterSnapshotOperationInput] params
    # @option params [String] :snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: { # required
    #       subnet_ids: ["String"], # required
    #       snapshot_name: "String", # required
    #       snapshot_arn: "String", # required
    #       snapshot_creation_time: "String", # required
    #       cluster_arn: "String", # required
    #       cluster_creation_time: "String", # required
    #       status: "Status", # required
    #       vpc_security_group_ids: ["String"], # required
    #       admin_user_name: "String", # required
    #       kms_key_id: "String", # required
    #       snapshot_type: "SnapshotType"
    #     }
    #   }
    # @return [Types::GetClusterSnapshotOperationOutput]
    def get_cluster_snapshot(params = {}, options = {})
      request = build_request(:get_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Retrieves all maintenance actions that are pending.</p>
    # @param [Hash, Types::GetPendingMaintenanceActionInput] params
    # @option params [String] :resource_arn
    #   <p>Retrieves pending maintenance actions for a specific Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "InputString", # required
    #   }
    #   options = {}
    #   response = client.get_pending_maintenance_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_pending_maintenance_action: { # required
    #       resource_arn: "String",
    #       pending_maintenance_action_details: [
    #         {
    #           action: "String", # required
    #           auto_applied_after_date: "String",
    #           forced_apply_date: "String",
    #           opt_in_status: "String",
    #           current_apply_date: "String",
    #           description: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPendingMaintenanceActionOutput]
    def get_pending_maintenance_action(params = {}, options = {})
      request = build_request(:get_pending_maintenance_action, params)
      request.send_request(options)
    end

    # <p>Returns information about snapshots for a specified elastic cluster.</p>
    # @param [Hash, Types::ListClusterSnapshotsOperationInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    # @option params [String] :next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of elastic cluster snapshot results to receive in the response.</p>
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
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     snapshot_type: "String"
    #   }
    #   options = {}
    #   response = client.list_cluster_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         snapshot_name: "String", # required
    #         snapshot_arn: "String", # required
    #         cluster_arn: "String", # required
    #         status: "Status", # required
    #         snapshot_creation_time: "String", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListClusterSnapshotsOperationOutput]
    def list_cluster_snapshots(params = {}, options = {})
      request = build_request(:list_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about provisioned Amazon DocumentDB elastic clusters.</p>
    # @param [Hash, Types::ListClustersOperationInput] params
    # @option params [String] :next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of elastic cluster snapshot results to receive in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         cluster_name: "String", # required
    #         cluster_arn: "String", # required
    #         status: "Status", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListClustersOperationOutput]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all maintenance actions that are pending.</p>
    # @param [Hash, Types::ListPendingMaintenanceActionsInput] params
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>maxResults</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. 
    #         If more records exist than the specified <code>maxResults</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pending_maintenance_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_pending_maintenance_actions: [ # required
    #       {
    #         resource_arn: "String",
    #         pending_maintenance_action_details: [
    #           {
    #             action: "String", # required
    #             auto_applied_after_date: "String",
    #             forced_apply_date: "String",
    #             opt_in_status: "String",
    #             current_apply_date: "String",
    #             description: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPendingMaintenanceActionsOutput]
    def list_pending_maintenance_actions(params = {}, options = {})
      request = build_request(:list_pending_maintenance_actions, params)
      request.send_request(options)
    end

    # <p>Lists all tags on a elastic cluster resource</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
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

    # <p>Restores an elastic cluster from a snapshot.</p>
    # @param [Hash, Types::RestoreClusterFromSnapshotOperationInput] params
    # @option params [String] :cluster_name
    #   <p>The name of the elastic cluster.</p>
    # @option params [String] :snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key identifier to use to encrypt the new Amazon DocumentDB elastic clusters cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #           encryption key. If you are creating a cluster using the same Amazon account
    #           that owns this KMS encryption key, you can use the KMS key alias instead
    #           of the ARN as the KMS encryption key.</p>
    #            <p>If an encryption key is not specified here, Amazon DocumentDB uses the
    #           default encryption key that KMS creates for your account. Your account
    #           has a different default encryption key for each Amazon Region.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of the tag names to be assigned to the restored elastic cluster, in the form of an array of key-value pairs in which the key is the tag name and the value is the key value.</p>
    # @option params [Integer] :shard_capacity
    #   <p>The capacity of each shard in the new restored elastic cluster.</p>
    # @option params [Integer] :shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     snapshot_arn: "String", # required
    #     vpc_security_group_ids: ["String"],
    #     subnet_ids: ["String"],
    #     kms_key_id: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     shard_capacity: 1,
    #     shard_instance_count: 1
    #   }
    #   options = {}
    #   response = client.restore_cluster_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::RestoreClusterFromSnapshotOperationOutput]
    def restore_cluster_from_snapshot(params = {}, options = {})
      request = build_request(:restore_cluster_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Restarts the stopped elastic cluster that is specified by <code>clusterARN</code>.</p>
    # @param [Hash, Types::StartClusterInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    # @example Basic Start Cluster Example
    #   # update applied
    #   params = {
    #     cluster_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster/$CLUSTER_ID"
    #   }
    #   options = {}
    #   response = client.start_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "sampleClusterName",
    #       cluster_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster/$CLUSTER_ID",
    #       status: "STARTING",
    #       cluster_endpoint: "sampleClusterName.us-east-1.docdb-elastic.amazonaws.com",
    #       create_time: "2000-01-01T00:00:00.000Z",
    #       admin_user_name: "sampleAdminUser",
    #       auth_type: "PLAIN_TEXT",
    #       shard_capacity: 2,
    #       shard_count: 2,
    #       vpc_security_group_ids: [
    #         "vpcSgId1, vpcSgId2"
    #       ],
    #       subnet_ids: [
    #         "subnetId1",
    #         "subnetId2"
    #       ],
    #       preferred_maintenance_window: "mon:00:00-mon:00:30",
    #       kms_key_id: "AWS_OWNED_KMS_KEY",
    #       shards: [
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "01:00-01:30",
    #       shard_instance_count: 1
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.start_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::StartClusterOutput]
    def start_cluster(params = {}, options = {})
      request = build_request(:start_cluster, params)
      request.send_request(options)
    end

    # <p>Stops the running elastic cluster that is specified by <code>clusterArn</code>. 
    #       The elastic cluster must be in the <i>available</i> state. </p>
    # @param [Hash, Types::StopClusterInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    # @example Basic Stop Cluster Example
    #   # update applied
    #   params = {
    #     cluster_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster/$CLUSTER_ID"
    #   }
    #   options = {}
    #   response = client.stop_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "sampleClusterName",
    #       cluster_arn: "arn:aws:docdb-elastic:us-east-1:$AWS_ACCOUNT_ID:cluster/$CLUSTER_ID",
    #       status: "STOPPING",
    #       cluster_endpoint: "sampleClusterName.us-east-1.docdb-elastic.amazonaws.com",
    #       create_time: "2000-01-01T00:00:00.000Z",
    #       admin_user_name: "sampleAdminUser",
    #       auth_type: "PLAIN_TEXT",
    #       shard_capacity: 2,
    #       shard_count: 2,
    #       vpc_security_group_ids: [
    #         "vpcSgId1, vpcSgId2"
    #       ],
    #       subnet_ids: [
    #         "subnetId1",
    #         "subnetId2"
    #       ],
    #       preferred_maintenance_window: "mon:00:00-mon:00:30",
    #       kms_key_id: "AWS_OWNED_KMS_KEY",
    #       shards: [
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "01:00-01:30",
    #       shard_instance_count: 1
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::StopClusterOutput]
    def stop_cluster(params = {}, options = {})
      request = build_request(:stop_cluster, params)
      request.send_request(options)
    end

    # <p>Adds metadata tags to an elastic cluster resource</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that are assigned to the elastic cluster resource.</p>
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

    # <p>Removes metadata tags from an elastic cluster resource</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to be removed from the elastic cluster resource.</p>
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

    # <p>Modifies an elastic cluster. This includes updating admin-username/password, 
    #     upgrading the API version, and setting up a backup window and maintenance window</p>
    # @param [Hash, Types::UpdateClusterOperationInput] params
    # @option params [String] :cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    # @option params [String] :auth_type
    #   <p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. 
    #         Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>
    # @option params [Integer] :shard_capacity
    #   <p>The number of vCPUs assigned to each elastic cluster shard. 
    #         Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>
    # @option params [Integer] :shard_count
    #   <p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    # @option params [String] :admin_user_password
    #   <p>The password associated with the elastic cluster administrator. 
    #         This password can contain any printable ASCII character except forward slash (/), double quote ("), or the "at" symbol (@).</p>
    #            <p>
    #               <i>Constraints</i>: Must contain from 8 to 100 characters.</p>
    # @option params [String] :client_token
    #   <p>The client token for the elastic cluster.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #            <p>
    #               <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>
    #               <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>
    #               <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>
    #               <i>Constraints</i>: Minimum 30-minute window.</p>
    # @option params [Integer] :backup_retention_period
    #   <p>The number of days for which automatic snapshots are retained.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>
    # @option params [Integer] :shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "String", # required
    #     auth_type: "Auth",
    #     shard_capacity: 1,
    #     shard_count: 1,
    #     vpc_security_group_ids: ["String"],
    #     subnet_ids: ["String"],
    #     admin_user_password: "Password",
    #     client_token: "String",
    #     preferred_maintenance_window: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     shard_instance_count: 1
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: { # required
    #       cluster_name: "String", # required
    #       cluster_arn: "String", # required
    #       status: "Status", # required
    #       cluster_endpoint: "String", # required
    #       create_time: "String", # required
    #       admin_user_name: "String", # required
    #       auth_type: "Auth", # required
    #       shard_capacity: 1, # required
    #       shard_count: 1, # required
    #       vpc_security_group_ids: ["String"], # required
    #       subnet_ids: ["String"], # required
    #       preferred_maintenance_window: "String", # required
    #       kms_key_id: "String", # required
    #       shards: [
    #         {
    #           shard_id: "String", # required
    #           create_time: "String", # required
    #           status: "Status", # required
    #         }
    #       ],
    #       backup_retention_period: 1,
    #       preferred_backup_window: "String",
    #       shard_instance_count: 1
    #     }
    #   }
    # @return [Types::UpdateClusterOperationOutput]
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
      context[:gem_name] = 'aws-sdk-docdbelastic'
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
