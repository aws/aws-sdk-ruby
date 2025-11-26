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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudhsmv2)

module Aws::CloudHSMV2
  # An API client for Aws::CloudHSMV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::BaldrApiService
    @identifier = :cloudhsmv2

    add_plugin(::Aws::CloudHSMV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudHSMV2::EndpointProvider)
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

    # <p>Copy an CloudHSM cluster backup to a different region.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM backup in a different Amazon Web Services account.</p>
    # @param [Hash, Types::CopyBackupToRegionRequest] params
    # @option params [String] :destination_region
    #   <p>The AWS region that will contain your copied CloudHSM cluster backup.</p>
    # @option params [String] :backup_id
    #   <p>The ID of the backup that will be copied to the destination region. </p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>Tags to apply to the destination backup during creation. If you specify tags, only these tags will be applied to the destination backup. If you do not specify tags, the service copies tags from the source backup to the destination backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_region: "Region", # required
    #     backup_id: "BackupId", # required
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_backup_to_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_backup: {
    #       create_timestamp: Time.now,
    #       source_region: "Region",
    #       source_backup: "BackupId",
    #       source_cluster: "ClusterId"
    #     }
    #   }
    # @return [Types::CopyBackupToRegionResponse]
    def copy_backup_to_region(params = {}, options = {})
      request = build_request(:copy_backup_to_region, params)
      request.send_request(options)
    end

    # <p>Creates a new CloudHSM cluster.</p>
    #          <p>
    #             <b>Cross-account use:</b> Yes. To perform this operation with an CloudHSM backup in a different AWS account, specify the full backup 
    #     ARN in the value of the SourceBackupId parameter.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [Types::BackupRetentionPolicy] :backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    # @option params [String] :hsm_type
    #   <p>The type of HSM to use in the cluster. The allowed values are
    #         <code>hsm1.medium</code> and <code>hsm2m.medium</code>.</p>
    # @option params [String] :source_backup_id
    #   <p>The identifier (ID) or the Amazon Resource Name (ARN) of the cluster backup to restore. Use this value to restore the
    #         cluster from a backup instead of creating a new cluster. To find the backup ID or ARN, use <a>DescribeBackups</a>. <i>If using a backup in another account, the full ARN must be supplied.</i>
    #            </p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The identifiers (IDs) of the subnets where you are creating the cluster. You must
    #         specify at least one subnet. If you specify multiple subnets, they must meet the following
    #         criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>All subnets must be in the same virtual private cloud (VPC).</p>
    #               </li>
    #               <li>
    #                  <p>You can specify only one subnet per Availability Zone.</p>
    #               </li>
    #            </ul>
    # @option params [String] :network_type
    #   <p>The NetworkType to create a cluster with. The allowed values are
    #             <code>IPV4</code> and <code>DUALSTACK</code>.
    #         </p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>Tags to apply to the CloudHSM cluster during creation.</p>
    # @option params [String] :mode
    #   <p>The mode to use in the cluster. The allowed values are
    #         <code>FIPS</code> and <code>NON_FIPS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_retention_policy: {
    #       type: "DAYS" # One of: ["DAYS"],
    #       value: "BackupRetentionValue"
    #     },
    #     hsm_type: "HsmType", # required
    #     source_backup_id: "BackupArn",
    #     subnet_ids: ["SubnetId"], # required
    #     network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       backup_policy: "DEFAULT" # One of: ["DEFAULT"],
    #       backup_retention_policy: {
    #         type: "DAYS" # One of: ["DAYS"],
    #         value: "BackupRetentionValue"
    #       },
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       hsms: [
    #         {
    #           availability_zone: "ExternalAz",
    #           cluster_id: "ClusterId",
    #           subnet_id: "SubnetId",
    #           eni_id: "EniId",
    #           eni_ip: "IpAddress",
    #           eni_ip_v6: "IpV6Address",
    #           hsm_id: "HsmId", # required
    #           hsm_type: "HsmType",
    #           state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"],
    #           state_message: "String"
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       hsm_type_rollback_expiration: Time.now,
    #       pre_co_password: "PreCoPassword",
    #       security_group: "SecurityGroup",
    #       source_backup_id: "BackupId",
    #       state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"],
    #       state_message: "StateMessage",
    #       subnet_mapping: {
    #         "ExternalAz" => "SubnetId"
    #       },
    #       vpc_id: "VpcId",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #       certificates: {
    #         cluster_csr: "Cert",
    #         hsm_certificate: "Cert",
    #         aws_hardware_certificate: "Cert",
    #         manufacturer_hardware_certificate: "Cert",
    #         cluster_certificate: "Cert"
    #       },
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new hardware security module (HSM) in the specified CloudHSM
    #       cluster.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM cluster in a different Amazon Web Service account.</p>
    # @param [Hash, Types::CreateHsmRequest] params
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you are creating the HSM. To find the cluster's
    #         Availability Zones, use <a>DescribeClusters</a>.</p>
    # @option params [String] :ip_address
    #   <p>The HSM's IP address. If you specify an IP address, use an available address from the
    #         subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify
    #         an IP address, one is chosen for you from that subnet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     availability_zone: "ExternalAz", # required
    #     ip_address: "IpAddress"
    #   }
    #   options = {}
    #   response = client.create_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm: {
    #       availability_zone: "ExternalAz",
    #       cluster_id: "ClusterId",
    #       subnet_id: "SubnetId",
    #       eni_id: "EniId",
    #       eni_ip: "IpAddress",
    #       eni_ip_v6: "IpV6Address",
    #       hsm_id: "HsmId", # required
    #       hsm_type: "HsmType",
    #       state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"],
    #       state_message: "String"
    #     }
    #   }
    # @return [Types::CreateHsmResponse]
    def create_hsm(params = {}, options = {})
      request = build_request(:create_hsm, params)
      request.send_request(options)
    end

    # <p>Deletes a specified CloudHSM backup. A backup can be restored up to 7 days
    #             after the DeleteBackup request is made. For more information on restoring a backup, see
    #                 <a>RestoreBackup</a>.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM backup in a different Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #   }
    #   options = {}
    #   response = client.delete_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "BackupId", # required
    #       backup_arn: "BackupArn",
    #       backup_state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"],
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       copy_timestamp: Time.now,
    #       never_expires: false,
    #       source_region: "Region",
    #       source_backup: "BackupId",
    #       source_cluster: "ClusterId",
    #       delete_timestamp: Time.now,
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::DeleteBackupResponse]
    def delete_backup(params = {}, options = {})
      request = build_request(:delete_backup, params)
      request.send_request(options)
    end

    # <p>Deletes the specified CloudHSM cluster. Before you can delete a cluster, you must
    #       delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM cluster in a different Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use
    #         <a>DescribeClusters</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       backup_policy: "DEFAULT" # One of: ["DEFAULT"],
    #       backup_retention_policy: {
    #         type: "DAYS" # One of: ["DAYS"],
    #         value: "BackupRetentionValue"
    #       },
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       hsms: [
    #         {
    #           availability_zone: "ExternalAz",
    #           cluster_id: "ClusterId",
    #           subnet_id: "SubnetId",
    #           eni_id: "EniId",
    #           eni_ip: "IpAddress",
    #           eni_ip_v6: "IpV6Address",
    #           hsm_id: "HsmId", # required
    #           hsm_type: "HsmType",
    #           state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"],
    #           state_message: "String"
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       hsm_type_rollback_expiration: Time.now,
    #       pre_co_password: "PreCoPassword",
    #       security_group: "SecurityGroup",
    #       source_backup_id: "BackupId",
    #       state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"],
    #       state_message: "StateMessage",
    #       subnet_mapping: {
    #         "ExternalAz" => "SubnetId"
    #       },
    #       vpc_id: "VpcId",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #       certificates: {
    #         cluster_csr: "Cert",
    #         hsm_certificate: "Cert",
    #         aws_hardware_certificate: "Cert",
    #         manufacturer_hardware_certificate: "Cert",
    #         cluster_certificate: "Cert"
    #       },
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP
    #       address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to
    #       specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM hsm in a different Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteHsmRequest] params
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that contains the HSM that you are
    #         deleting.</p>
    # @option params [String] :hsm_id
    #   <p>The identifier (ID) of the HSM that you are deleting.</p>
    # @option params [String] :eni_id
    #   <p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    # @option params [String] :eni_ip
    #   <p>The IP address of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     hsm_id: "HsmId",
    #     eni_id: "EniId",
    #     eni_ip: "IpAddress"
    #   }
    #   options = {}
    #   response = client.delete_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_id: "HsmId"
    #   }
    # @return [Types::DeleteHsmResponse]
    def delete_hsm(params = {}, options = {})
      request = build_request(:delete_hsm, params)
      request.send_request(options)
    end

    # <p> Deletes an CloudHSM resource policy. Deleting a resource policy will result in the resource being unshared and removed from
    #       any RAM resource shares. Deleting the resource policy attached to a backup will not impact any clusters created from that 
    #       backup.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource from which the policy will be removed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CloudHsmArn"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "CloudHsmArn",
    #     policy: "ResourcePolicy"
    #   }
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about backups of CloudHSM clusters. Lists either the backups you own or the backups shared with you when the Shared parameter is true.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the backups. When the response contains only a subset of backups, it includes a
    #         <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code>
    #       request to get more backups. When you receive a response with no <code>NextToken</code> (or an
    #       empty or null value), that means there are no more backups to get.</p>
    #          <p>
    #             <b>Cross-account use:</b> Yes. Customers can describe backups in other Amazon Web Services accounts that are shared with them.</p>
    # @param [Hash, Types::DescribeBackupsRequest] params
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more backups.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of backups to return in the response. When there are more backups
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify
    #         backups by their backup identifier (ID).</p>
    #            <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a
    #         source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the backups for the specified
    #         clusters. Specify clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only backups that match the specified
    #         state.</p>
    #            <p>Use the <code>neverExpires</code> filter to return backups filtered by the value in the
    #           <code>neverExpires</code> parameter. <code>True</code> returns all backups exempt from the
    #         backup retention policy. <code>False</code> returns all backups with a backup retention policy
    #         defined at the cluster.</p>
    # @option params [Boolean] :shared
    #   <p>Describe backups that are shared with you.</p>
    #            <note>
    #               <p>By default when using this option, the command returns backups that have been shared using a standard Resource Access Manager 
    #       resource share. In order for a backup that was shared using the PutResourcePolicy command to be returned, the share must be promoted to a 
    #       standard resource share using the RAM <a href="https://docs.aws.amazon.com/cli/latest/reference/ram/promote-resource-share-created-from-policy.html">PromoteResourceShareCreatedFromPolicy</a> API operation.
    #   
    #       For more information about sharing backups, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html"> Working with shared backups</a> in the CloudHSM User Guide.</p>
    #            </note>
    # @option params [Boolean] :sort_ascending
    #   <p>Designates whether or not to sort the return backups by ascending chronological order
    #         of generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       "Field" => ["String"]
    #     },
    #     shared: false,
    #     sort_ascending: false
    #   }
    #   options = {}
    #   response = client.describe_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backups: [
    #       {
    #         backup_id: "BackupId", # required
    #         backup_arn: "BackupArn",
    #         backup_state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"],
    #         cluster_id: "ClusterId",
    #         create_timestamp: Time.now,
    #         copy_timestamp: Time.now,
    #         never_expires: false,
    #         source_region: "Region",
    #         source_backup: "BackupId",
    #         source_cluster: "ClusterId",
    #         delete_timestamp: Time.now,
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         hsm_type: "HsmType",
    #         mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeBackupsResponse]
    def describe_backups(params = {}, options = {})
      request = build_request(:describe_backups, params)
      request.send_request(options)
    end

    # <p>Gets information about CloudHSM clusters.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the clusters. When the response contains only a subset of clusters, it includes
    #       a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code>
    #       request to get more clusters. When you receive a response with no <code>NextToken</code> (or
    #       an empty or null value), that means there are no more clusters to get.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on CloudHSM clusters in a different Amazon Web Services account.</p>
    # @param [Hash, Types::DescribeClustersRequest] params
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify
    #         clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual
    #         private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only clusters that match the specified
    #         state.</p>
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more clusters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of clusters to return in the response. When there are more clusters
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       "Field" => ["String"]
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         backup_policy: "DEFAULT" # One of: ["DEFAULT"],
    #         backup_retention_policy: {
    #           type: "DAYS" # One of: ["DAYS"],
    #           value: "BackupRetentionValue"
    #         },
    #         cluster_id: "ClusterId",
    #         create_timestamp: Time.now,
    #         hsms: [
    #           {
    #             availability_zone: "ExternalAz",
    #             cluster_id: "ClusterId",
    #             subnet_id: "SubnetId",
    #             eni_id: "EniId",
    #             eni_ip: "IpAddress",
    #             eni_ip_v6: "IpV6Address",
    #             hsm_id: "HsmId", # required
    #             hsm_type: "HsmType",
    #             state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"],
    #             state_message: "String"
    #           }
    #         ],
    #         hsm_type: "HsmType",
    #         hsm_type_rollback_expiration: Time.now,
    #         pre_co_password: "PreCoPassword",
    #         security_group: "SecurityGroup",
    #         source_backup_id: "BackupId",
    #         state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"],
    #         state_message: "StateMessage",
    #         subnet_mapping: {
    #           "ExternalAz" => "SubnetId"
    #         },
    #         vpc_id: "VpcId",
    #         network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #         certificates: {
    #           cluster_csr: "Cert",
    #           hsm_certificate: "Cert",
    #           aws_hardware_certificate: "Cert",
    #           manufacturer_hardware_certificate: "Cert",
    #           cluster_certificate: "Cert"
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeClustersResponse]
    def describe_clusters(params = {}, options = {})
      request = build_request(:describe_clusters, params)
      request.send_request(options)
    end

    # <p> Retrieves the resource policy document attached to a given resource. </p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which a policy is attached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CloudHsmArn"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Claims an CloudHSM cluster by submitting the cluster certificate issued by your
    #       issuing certificate authority (CA) and the CA's root certificate. Before you can claim a
    #       cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA.
    #       To get the cluster's CSR, use <a>DescribeClusters</a>.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM cluster in a different Amazon Web Services account.</p>
    # @param [Hash, Types::InitializeClusterRequest] params
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    # @option params [String] :signed_cert
    #   <p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The
    #         certificate must be in PEM format and can contain a maximum of 5000 characters.</p>
    # @option params [String] :trust_anchor
    #   <p>The issuing certificate of the issuing certificate authority (CA) that issued (signed)
    #         the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the
    #         root certificate. The certificate must be in PEM format and can contain a
    #         maximum of 5000 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     signed_cert: "Cert", # required
    #     trust_anchor: "Cert", # required
    #   }
    #   options = {}
    #   response = client.initialize_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"],
    #     state_message: "StateMessage"
    #   }
    # @return [Types::InitializeClusterResponse]
    def initialize_cluster(params = {}, options = {})
      request = build_request(:initialize_cluster, params)
      request.send_request(options)
    end

    # <p>Gets a list of tags for the specified CloudHSM cluster.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the tags. When the response contains only a subset of tags, it includes a
    #       <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to
    #       get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null
    #       value), that means there are no more tags to get.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more tags.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return in the response. When there are more tags than the
    #         number you specify, the response contains a <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Modifies attributes for CloudHSM backup.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM backup in a different Amazon Web Services account.</p>
    # @param [Hash, Types::ModifyBackupAttributesRequest] params
    # @option params [String] :backup_id
    #   <p>The identifier (ID) of the backup to modify. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    # @option params [Boolean] :never_expires
    #   <p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts 
    #       a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #     never_expires: false, # required
    #   }
    #   options = {}
    #   response = client.modify_backup_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "BackupId", # required
    #       backup_arn: "BackupArn",
    #       backup_state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"],
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       copy_timestamp: Time.now,
    #       never_expires: false,
    #       source_region: "Region",
    #       source_backup: "BackupId",
    #       source_cluster: "ClusterId",
    #       delete_timestamp: Time.now,
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::ModifyBackupAttributesResponse]
    def modify_backup_attributes(params = {}, options = {})
      request = build_request(:modify_backup_attributes, params)
      request.send_request(options)
    end

    # <p>Modifies CloudHSM cluster.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM cluster in a different Amazon Web Services account.</p>
    # @param [Hash, Types::ModifyClusterRequest] params
    # @option params [String] :hsm_type
    #   <p>The desired HSM type of the cluster.</p>
    # @option params [Types::BackupRetentionPolicy] :backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you want to modify. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_type: "HsmType",
    #     backup_retention_policy: {
    #       type: "DAYS" # One of: ["DAYS"],
    #       value: "BackupRetentionValue"
    #     },
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.modify_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       backup_policy: "DEFAULT" # One of: ["DEFAULT"],
    #       backup_retention_policy: {
    #         type: "DAYS" # One of: ["DAYS"],
    #         value: "BackupRetentionValue"
    #       },
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       hsms: [
    #         {
    #           availability_zone: "ExternalAz",
    #           cluster_id: "ClusterId",
    #           subnet_id: "SubnetId",
    #           eni_id: "EniId",
    #           eni_ip: "IpAddress",
    #           eni_ip_v6: "IpV6Address",
    #           hsm_id: "HsmId", # required
    #           hsm_type: "HsmType",
    #           state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"],
    #           state_message: "String"
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       hsm_type_rollback_expiration: Time.now,
    #       pre_co_password: "PreCoPassword",
    #       security_group: "SecurityGroup",
    #       source_backup_id: "BackupId",
    #       state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"],
    #       state_message: "StateMessage",
    #       subnet_mapping: {
    #         "ExternalAz" => "SubnetId"
    #       },
    #       vpc_id: "VpcId",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #       certificates: {
    #         cluster_csr: "Cert",
    #         hsm_certificate: "Cert",
    #         aws_hardware_certificate: "Cert",
    #         manufacturer_hardware_certificate: "Cert",
    #         cluster_certificate: "Cert"
    #       },
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::ModifyClusterResponse]
    def modify_cluster(params = {}, options = {})
      request = build_request(:modify_cluster, params)
      request.send_request(options)
    end

    # <p>Creates or updates an CloudHSM resource policy. A resource policy helps you to define the IAM entity 
    #     (for example, an Amazon Web Services account) that can manage your CloudHSM resources. The following resources support 
    #     CloudHSM resource policies: </p>
    #          <ul>
    #             <li>
    #                <p> Backup - The resource policy allows you to describe the backup and restore a cluster from the backup in another Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    #          <p>In order to share a backup, it must be in a 'READY' state and you must own it.</p>
    #          <important>
    #             <p>While you can share a backup using the CloudHSM PutResourcePolicy operation, we recommend using Resource Access Manager
    #       (RAM) instead. Using RAM provides multiple benefits as it creates the policy for you, allows multiple resources to be shared at
    #       one time, and increases the discoverability of shared resources. If you use PutResourcePolicy and want consumers to be able to
    #       describe the backups you share with them, you must promote the backup to a standard RAM
    #       Resource Share using the RAM PromoteResourceShareCreatedFromPolicy API operation.
    # 
    #       For more information, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html"> Working with shared backups</a> in the CloudHSM User Guide</p>
    #          </important>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which you want to attach a policy. </p>
    # @option params [String] :policy
    #   <p>The policy you want to associate with a resource. </p>
    #            <p>For an example policy, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html"> Working with shared backups</a> in the CloudHSM User Guide</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CloudHsmArn",
    #     policy: "ResourcePolicy"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "CloudHsmArn",
    #     policy: "ResourcePolicy"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Restores a specified CloudHSM backup that is in the
    #                 <code>PENDING_DELETION</code> state. For more information on deleting a backup, see
    #                 <a>DeleteBackup</a>.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM backup in a different Amazon Web Services account.</p>
    # @param [Hash, Types::RestoreBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #   }
    #   options = {}
    #   response = client.restore_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "BackupId", # required
    #       backup_arn: "BackupArn",
    #       backup_state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"],
    #       cluster_id: "ClusterId",
    #       create_timestamp: Time.now,
    #       copy_timestamp: Time.now,
    #       never_expires: false,
    #       source_region: "Region",
    #       source_backup: "BackupId",
    #       source_cluster: "ClusterId",
    #       delete_timestamp: Time.now,
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       hsm_type: "HsmType",
    #       mode: "FIPS" # One of: ["FIPS", "NON_FIPS"]
    #     }
    #   }
    # @return [Types::RestoreBackupResponse]
    def restore_backup(params = {}, options = {})
      request = build_request(:restore_backup, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for the specified CloudHSM cluster.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster
    #         ID, use <a>DescribeClusters</a>.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>A list of one or more tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_list: [ # required
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

    # <p>Removes the specified tag or tags from the specified CloudHSM cluster.</p>
    #          <p>
    #             <b>Cross-account use:</b> No. You cannot perform this operation on an CloudHSM resource in a different Amazon Web Services account.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of one or more tag keys for the tags that you are removing. Specify only the tag
    #         keys, not the tag values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_key_list: ["TagKey"], # required
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
      context[:gem_name] = 'aws-sdk-cloudhsmv2'
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
