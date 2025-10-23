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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:odb)

module Aws::Odb
  # An API client for Aws::Odb.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Odb
    @identifier = :odb

    add_plugin(::Aws::Odb::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Odb::EndpointProvider)
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

    # <p>Registers the Amazon Web Services Marketplace token for your Amazon Web Services account to activate your Oracle Database@Amazon Web Services subscription.</p>
    # @param [Hash, Types::AcceptMarketplaceRegistrationInput] params
    # @option params [String] :marketplace_registration_token
    #   <p>The registration token that's generated by Amazon Web Services Marketplace and sent to Oracle Database@Amazon Web Services.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marketplace_registration_token: "String", # required
    #   }
    #   options = {}
    #   response = client.accept_marketplace_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptMarketplaceRegistrationOutput]
    def accept_marketplace_registration(params = {}, options = {})
      request = build_request(:accept_marketplace_registration, params)
      request.send_request(options)
    end

    # <p>Creates a new Autonomous VM cluster in the specified Exadata infrastructure.</p>
    # @param [Hash, Types::CreateCloudAutonomousVmClusterInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Exadata infrastructure where the VM cluster will be created.</p>
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network to be used for the VM cluster.</p>
    # @option params [String] :display_name
    #   <p>The display name for the Autonomous VM cluster. The name does not need to be unique.</p>
    # @option params [String] :client_token
    #   <p>A client-provided token to ensure idempotency of the request.</p>
    # @option params [Float] :autonomous_data_storage_size_in_t_bs
    #   <p>The data disk group size to be allocated for Autonomous Databases, in terabytes (TB).</p>
    # @option params [Integer] :cpu_core_count_per_node
    #   <p>The number of CPU cores to be enabled per VM cluster node.</p>
    # @option params [Array<String>] :db_servers
    #   <p>The list of database servers to be used for the Autonomous VM cluster.</p>
    # @option params [String] :description
    #   <p>A user-provided description of the Autonomous VM cluster.</p>
    # @option params [Boolean] :is_mtls_enabled_vm_cluster
    #   <p>Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the Autonomous VM cluster.</p>
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   <p>The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window.</p>
    # @option params [Integer] :memory_per_oracle_compute_unit_in_g_bs
    #   <p>The amount of memory to be allocated per OCPU, in GB.</p>
    # @option params [Integer] :scan_listener_port_non_tls
    #   <p>The SCAN listener port for non-TLS (TCP) protocol.</p>
    # @option params [Integer] :scan_listener_port_tls
    #   <p>The SCAN listener port for TLS (TCP) protocol.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Free-form tags for this resource. Each tag is a key-value pair with no predefined name, type, or namespace.</p>
    # @option params [String] :time_zone
    #   <p>The time zone to use for the Autonomous VM cluster.</p>
    # @option params [Integer] :total_container_databases
    #   <p>The total number of Autonomous CDBs that you can create in the Autonomous VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName", # required
    #     client_token: "GeneralInputString",
    #     autonomous_data_storage_size_in_t_bs: 1.0, # required
    #     cpu_core_count_per_node: 1, # required
    #     db_servers: ["String"],
    #     description: "String",
    #     is_mtls_enabled_vm_cluster: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #         }
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #         }
    #       ],
    #       patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #       preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #       skip_ru: false,
    #       weeks_of_month: [1]
    #     },
    #     memory_per_oracle_compute_unit_in_g_bs: 1, # required
    #     scan_listener_port_non_tls: 1,
    #     scan_listener_port_tls: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     time_zone: "String",
    #     total_container_databases: 1, # required
    #   }
    #   options = {}
    #   response = client.create_cloud_autonomous_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     cloud_autonomous_vm_cluster_id: "String", # required
    #   }
    # @return [Types::CreateCloudAutonomousVmClusterOutput]
    def create_cloud_autonomous_vm_cluster(params = {}, options = {})
      request = build_request(:create_cloud_autonomous_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Creates an Exadata infrastructure.</p>
    # @param [Hash, Types::CreateCloudExadataInfrastructureInput] params
    # @option params [String] :display_name
    #   <p>A user-friendly name for the Exadata infrastructure.</p>
    # @option params [String] :shape
    #   <p>The model name of the Exadata infrastructure. For the list of valid model names, use the <code>ListDbSystemShapes</code> operation.</p>
    # @option params [String] :availability_zone
    #   <p>The name of the Availability Zone (AZ) where the Exadata infrastructure is located.</p> <p>This operation requires that you specify a value for either <code>availabilityZone</code> or <code>availabilityZoneId</code>.</p> <p>Example: <code>us-east-1a</code> </p>
    # @option params [String] :availability_zone_id
    #   <p>The AZ ID of the AZ where the Exadata infrastructure is located.</p> <p>This operation requires that you specify a value for either <code>availabilityZone</code> or <code>availabilityZoneId</code>.</p> <p>Example: <code>use1-az1</code> </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the Exadata infrastructure.</p>
    # @option params [Integer] :compute_count
    #   <p>The number of database servers for the Exadata infrastructure. Valid values for this parameter depend on the shape. To get information about the minimum and maximum values, use the <code>ListDbSystemShapes</code> operation.</p>
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   <p>The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure.</p>
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   <p>The maintenance window configuration for the Exadata Cloud infrastructure.</p> <p>This allows you to define when maintenance operations such as patching and updates can be performed on the infrastructure.</p>
    # @option params [Integer] :storage_count
    #   <p>The number of storage servers to activate for this Exadata infrastructure. Valid values for this parameter depend on the shape. To get information about the minimum and maximum values, use the <code>ListDbSystemShapes</code> operation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The client token is valid for up to 24 hours after it's first used.</p>
    # @option params [String] :database_server_type
    #   <p>The database server model type of the Exadata infrastructure. For the list of valid model names, use the <code>ListDbSystemShapes</code> operation.</p>
    # @option params [String] :storage_server_type
    #   <p>The storage server model type of the Exadata infrastructure. For the list of valid model names, use the <code>ListDbSystemShapes</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "ResourceDisplayName", # required
    #     shape: "GeneralInputString", # required
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     compute_count: 1, # required
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "SensitiveString"
    #       }
    #     ],
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #         }
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #         }
    #       ],
    #       patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #       preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #       skip_ru: false,
    #       weeks_of_month: [1]
    #     },
    #     storage_count: 1, # required
    #     client_token: "GeneralInputString",
    #     database_server_type: "GeneralInputString",
    #     storage_server_type: "GeneralInputString"
    #   }
    #   options = {}
    #   response = client.create_cloud_exadata_infrastructure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     cloud_exadata_infrastructure_id: "String", # required
    #   }
    # @return [Types::CreateCloudExadataInfrastructureOutput]
    def create_cloud_exadata_infrastructure(params = {}, options = {})
      request = build_request(:create_cloud_exadata_infrastructure, params)
      request.send_request(options)
    end

    # <p>Creates a VM cluster on the specified Exadata infrastructure.</p>
    # @param [Hash, Types::CreateCloudVmClusterInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Exadata infrastructure for this VM cluster.</p>
    # @option params [Integer] :cpu_core_count
    #   <p>The number of CPU cores to enable on the VM cluster.</p>
    # @option params [String] :display_name
    #   <p>A user-friendly name for the VM cluster.</p>
    # @option params [String] :gi_version
    #   <p>A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the <code>ListGiVersions</code> operation and specify the shape of the Exadata infrastructure.</p> <p>Example: <code>19.0.0.0</code> </p>
    # @option params [String] :hostname
    #   <p>The host name for the VM cluster.</p> <p>Constraints:</p> <ul> <li> <p>Can't be "localhost" or "hostname".</p> </li> <li> <p>Can't contain "-version".</p> </li> <li> <p>The maximum length of the combined hostname and domain is 63 characters.</p> </li> <li> <p>The hostname must be unique within the subnet.</p> </li> </ul>
    # @option params [Array<String>] :ssh_public_keys
    #   <p>The public key portion of one or more key pairs used for SSH access to the VM cluster.</p>
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network for the VM cluster.</p>
    # @option params [String] :cluster_name
    #   <p>A name for the Grid Infrastructure cluster. The name isn't case sensitive.</p>
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   <p>The set of preferences for the various diagnostic collection options for the VM cluster.</p>
    # @option params [Float] :data_storage_size_in_t_bs
    #   <p>The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster.</p>
    # @option params [Integer] :db_node_storage_size_in_g_bs
    #   <p>The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster.</p>
    # @option params [Array<String>] :db_servers
    #   <p>The list of database servers for the VM cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the VM cluster.</p>
    # @option params [Boolean] :is_local_backup_enabled
    #   <p>Specifies whether to enable database backups to local Exadata storage for the VM cluster.</p>
    # @option params [Boolean] :is_sparse_diskgroup_enabled
    #   <p>Specifies whether to create a sparse disk group for the VM cluster.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the VM cluster.</p> <p>Default: <code>LICENSE_INCLUDED</code> </p>
    # @option params [Integer] :memory_size_in_g_bs
    #   <p>The amount of memory, in gigabytes (GBs), to allocate for the VM cluster.</p>
    # @option params [String] :system_version
    #   <p>The version of the operating system of the image for the VM cluster.</p>
    # @option params [String] :time_zone
    #   <p>The time zone for the VM cluster. For a list of valid values for time zone, you can check the options in the console.</p> <p>Default: UTC</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The client token is valid for up to 24 hours after it's first used.</p>
    # @option params [Integer] :scan_listener_port_tcp
    #   <p>The port number for TCP connections to the single client access name (SCAN) listener. </p> <p>Valid values: <code>1024–8999</code> with the following exceptions: <code>2484</code>, <code>6100</code>, <code>6200</code>, <code>7060</code>, <code>7070</code>, <code>7085</code>, and <code>7879</code> </p> <p>Default: <code>1521</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     cpu_core_count: 1, # required
    #     display_name: "ResourceDisplayName", # required
    #     gi_version: "String", # required
    #     hostname: "String", # required
    #     ssh_public_keys: ["String"], # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     cluster_name: "String",
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false
    #     },
    #     data_storage_size_in_t_bs: 1.0,
    #     db_node_storage_size_in_g_bs: 1,
    #     db_servers: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     is_local_backup_enabled: false,
    #     is_sparse_diskgroup_enabled: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     memory_size_in_g_bs: 1,
    #     system_version: "String",
    #     time_zone: "String",
    #     client_token: "GeneralInputString",
    #     scan_listener_port_tcp: 1
    #   }
    #   options = {}
    #   response = client.create_cloud_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     cloud_vm_cluster_id: "String", # required
    #   }
    # @return [Types::CreateCloudVmClusterOutput]
    def create_cloud_vm_cluster(params = {}, options = {})
      request = build_request(:create_cloud_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Creates an ODB network.</p>
    # @param [Hash, Types::CreateOdbNetworkInput] params
    # @option params [String] :display_name
    #   <p>A user-friendly name for the ODB network.</p>
    # @option params [String] :availability_zone
    #   <p>The Amazon Web Services Availability Zone (AZ) where the ODB network is located.</p> <p>This operation requires that you specify a value for either <code>availabilityZone</code> or <code>availabilityZoneId</code>.</p>
    # @option params [String] :availability_zone_id
    #   <p>The AZ ID of the AZ where the ODB network is located.</p> <p>This operation requires that you specify a value for either <code>availabilityZone</code> or <code>availabilityZoneId</code>.</p>
    # @option params [String] :client_subnet_cidr
    #   <p>The CIDR range of the client subnet for the ODB network.</p> <p>Constraints:</p> <ul> <li> <p>Must not overlap with the CIDR range of the backup subnet.</p> </li> <li> <p>Must not overlap with the CIDR ranges of the VPCs that are connected to the ODB network.</p> </li> <li> <p>Must not use the following CIDR ranges that are reserved by OCI:</p> <ul> <li> <p> <code>100.106.0.0/16</code> and <code>100.107.0.0/16</code> </p> </li> <li> <p> <code>169.254.0.0/16</code> </p> </li> <li> <p> <code>224.0.0.0 - 239.255.255.255</code> </p> </li> <li> <p> <code>240.0.0.0 - 255.255.255.255</code> </p> </li> </ul> </li> </ul>
    # @option params [String] :backup_subnet_cidr
    #   <p>The CIDR range of the backup subnet for the ODB network.</p> <p>Constraints:</p> <ul> <li> <p>Must not overlap with the CIDR range of the client subnet.</p> </li> <li> <p>Must not overlap with the CIDR ranges of the VPCs that are connected to the ODB network.</p> </li> <li> <p>Must not use the following CIDR ranges that are reserved by OCI:</p> <ul> <li> <p> <code>100.106.0.0/16</code> and <code>100.107.0.0/16</code> </p> </li> <li> <p> <code>169.254.0.0/16</code> </p> </li> <li> <p> <code>224.0.0.0 - 239.255.255.255</code> </p> </li> <li> <p> <code>240.0.0.0 - 255.255.255.255</code> </p> </li> </ul> </li> </ul>
    # @option params [String] :custom_domain_name
    #   <p>The domain name to use for the resources in the ODB network.</p>
    # @option params [String] :default_dns_prefix
    #   <p>The DNS prefix to the default DNS domain name. The default DNS domain name is oraclevcn.com.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The client token is valid for up to 24 hours after it's first used.</p>
    # @option params [String] :s3_access
    #   <p>Specifies the configuration for Amazon S3 access from the ODB network.</p>
    # @option params [String] :zero_etl_access
    #   <p>Specifies the configuration for Zero-ETL access from the ODB network.</p>
    # @option params [String] :s3_policy_document
    #   <p>Specifies the endpoint policy for Amazon S3 access from the ODB network.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the ODB network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "ResourceDisplayName", # required
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     client_subnet_cidr: "String", # required
    #     backup_subnet_cidr: "String",
    #     custom_domain_name: "String",
    #     default_dns_prefix: "String",
    #     client_token: "GeneralInputString",
    #     s3_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     zero_etl_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     s3_policy_document: "PolicyDocument",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_odb_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     odb_network_id: "String", # required
    #   }
    # @return [Types::CreateOdbNetworkOutput]
    def create_odb_network(params = {}, options = {})
      request = build_request(:create_odb_network, params)
      request.send_request(options)
    end

    # <p>Creates a peering connection between an ODB network and either another ODB network or a customer-owned VPC.</p> <p>A peering connection enables private connectivity between the networks for application-tier communication.</p>
    # @param [Hash, Types::CreateOdbPeeringConnectionInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network that initiates the peering connection.</p>
    # @option params [String] :peer_network_id
    #   <p>The unique identifier of the peer network. This can be either a VPC ID or another ODB network ID.</p>
    # @option params [String] :display_name
    #   <p>The display name for the ODB peering connection.</p>
    # @option params [String] :client_token
    #   <p>The client token for the ODB peering connection request.</p> <p>Constraints:</p> <ul> <li> <p>Must be unique for each request.</p> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the ODB peering connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #     peer_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     client_token: "GeneralInputString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_odb_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     odb_peering_connection_id: "String", # required
    #   }
    # @return [Types::CreateOdbPeeringConnectionOutput]
    def create_odb_peering_connection(params = {}, options = {})
      request = build_request(:create_odb_peering_connection, params)
      request.send_request(options)
    end

    # <p>Deletes an Autonomous VM cluster.</p>
    # @param [Hash, Types::DeleteCloudAutonomousVmClusterInput] params
    # @option params [String] :cloud_autonomous_vm_cluster_id
    #   <p>The unique identifier of the Autonomous VM cluster to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_cloud_autonomous_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCloudAutonomousVmClusterOutput]
    def delete_cloud_autonomous_vm_cluster(params = {}, options = {})
      request = build_request(:delete_cloud_autonomous_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Exadata infrastructure. Before you use this operation, make sure to delete all of the VM clusters that are hosted on this Exadata infrastructure.</p>
    # @param [Hash, Types::DeleteCloudExadataInfrastructureInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Exadata infrastructure to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_cloud_exadata_infrastructure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCloudExadataInfrastructureOutput]
    def delete_cloud_exadata_infrastructure(params = {}, options = {})
      request = build_request(:delete_cloud_exadata_infrastructure, params)
      request.send_request(options)
    end

    # <p>Deletes the specified VM cluster.</p>
    # @param [Hash, Types::DeleteCloudVmClusterInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_cloud_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCloudVmClusterOutput]
    def delete_cloud_vm_cluster(params = {}, options = {})
      request = build_request(:delete_cloud_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified ODB network.</p>
    # @param [Hash, Types::DeleteOdbNetworkInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network to delete.</p>
    # @option params [Boolean] :delete_associated_resources
    #   <p>Specifies whether to delete associated OCI networking resources along with the ODB network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #     delete_associated_resources: false, # required
    #   }
    #   options = {}
    #   response = client.delete_odb_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOdbNetworkOutput]
    def delete_odb_network(params = {}, options = {})
      request = build_request(:delete_odb_network, params)
      request.send_request(options)
    end

    # <p>Deletes an ODB peering connection.</p> <p>When you delete an ODB peering connection, the underlying VPC peering connection is also deleted.</p>
    # @param [Hash, Types::DeleteOdbPeeringConnectionInput] params
    # @option params [String] :odb_peering_connection_id
    #   <p>The unique identifier of the ODB peering connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_odb_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOdbPeeringConnectionOutput]
    def delete_odb_peering_connection(params = {}, options = {})
      request = build_request(:delete_odb_peering_connection, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific Autonomous VM cluster.</p>
    # @param [Hash, Types::GetCloudAutonomousVmClusterInput] params
    # @option params [String] :cloud_autonomous_vm_cluster_id
    #   <p>The unique identifier of the Autonomous VM cluster to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_autonomous_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_autonomous_vm_cluster: {
    #       cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #       cloud_autonomous_vm_cluster_arn: "String",
    #       odb_network_id: "ResourceIdOrArn",
    #       oci_resource_anchor_name: "String",
    #       percent_progress: 1.0,
    #       display_name: "ResourceDisplayName",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #       autonomous_data_storage_percentage: 1.0,
    #       autonomous_data_storage_size_in_t_bs: 1.0,
    #       available_autonomous_data_storage_size_in_t_bs: 1.0,
    #       available_container_databases: 1,
    #       available_cpus: 1.0,
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #       cpu_core_count: 1,
    #       cpu_core_count_per_node: 1,
    #       cpu_percentage: 1.0,
    #       data_storage_size_in_g_bs: 1.0,
    #       data_storage_size_in_t_bs: 1.0,
    #       db_node_storage_size_in_g_bs: 1,
    #       db_servers: ["String"],
    #       description: "String",
    #       domain: "String",
    #       exadata_storage_in_t_bs_lowest_scaled_value: 1.0,
    #       hostname: "String",
    #       ocid: "String",
    #       oci_url: "String",
    #       is_mtls_enabled_vm_cluster: false,
    #       license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #       maintenance_window: {
    #         custom_action_timeout_in_mins: 1,
    #         days_of_week: [
    #           {
    #             name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #           }
    #         ],
    #         hours_of_day: [1],
    #         is_custom_action_timeout_enabled: false,
    #         lead_time_in_weeks: 1,
    #         months: [
    #           {
    #             name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #           }
    #         ],
    #         patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #         preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #         skip_ru: false,
    #         weeks_of_month: [1]
    #       },
    #       max_acds_lowest_scaled_value: 1,
    #       memory_per_oracle_compute_unit_in_g_bs: 1,
    #       memory_size_in_g_bs: 1,
    #       node_count: 1,
    #       non_provisionable_autonomous_container_databases: 1,
    #       provisionable_autonomous_container_databases: 1,
    #       provisioned_autonomous_container_databases: 1,
    #       provisioned_cpus: 1.0,
    #       reclaimable_cpus: 1.0,
    #       reserved_cpus: 1.0,
    #       scan_listener_port_non_tls: 1,
    #       scan_listener_port_tls: 1,
    #       shape: "String",
    #       created_at: Time.now,
    #       time_database_ssl_certificate_expires: Time.now,
    #       time_ords_certificate_expires: Time.now,
    #       time_zone: "String",
    #       total_container_databases: 1
    #     }
    #   }
    # @return [Types::GetCloudAutonomousVmClusterOutput]
    def get_cloud_autonomous_vm_cluster(params = {}, options = {})
      request = build_request(:get_cloud_autonomous_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Exadata infrastructure.</p>
    # @param [Hash, Types::GetCloudExadataInfrastructureInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Exadata infrastructure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_exadata_infrastructure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_exadata_infrastructure: {
    #       cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #       display_name: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       cloud_exadata_infrastructure_arn: "String",
    #       activated_storage_count: 1,
    #       additional_storage_count: 1,
    #       available_storage_size_in_g_bs: 1,
    #       availability_zone: "String",
    #       availability_zone_id: "String",
    #       compute_count: 1,
    #       cpu_count: 1,
    #       customer_contacts_to_send_to_oci: [
    #         {
    #           email: "SensitiveString"
    #         }
    #       ],
    #       data_storage_size_in_t_bs: 1.0,
    #       db_node_storage_size_in_g_bs: 1,
    #       db_server_version: "String",
    #       last_maintenance_run_id: "String",
    #       maintenance_window: {
    #         custom_action_timeout_in_mins: 1,
    #         days_of_week: [
    #           {
    #             name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #           }
    #         ],
    #         hours_of_day: [1],
    #         is_custom_action_timeout_enabled: false,
    #         lead_time_in_weeks: 1,
    #         months: [
    #           {
    #             name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #           }
    #         ],
    #         patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #         preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #         skip_ru: false,
    #         weeks_of_month: [1]
    #       },
    #       max_cpu_count: 1,
    #       max_data_storage_in_t_bs: 1.0,
    #       max_db_node_storage_size_in_g_bs: 1,
    #       max_memory_in_g_bs: 1,
    #       memory_size_in_g_bs: 1,
    #       monthly_db_server_version: "String",
    #       monthly_storage_server_version: "String",
    #       next_maintenance_run_id: "String",
    #       oci_resource_anchor_name: "String",
    #       oci_url: "String",
    #       ocid: "String",
    #       shape: "String",
    #       storage_count: 1,
    #       storage_server_version: "String",
    #       created_at: Time.now,
    #       total_storage_size_in_g_bs: 1,
    #       percent_progress: 1.0,
    #       database_server_type: "String",
    #       storage_server_type: "String",
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"]
    #     }
    #   }
    # @return [Types::GetCloudExadataInfrastructureOutput]
    def get_cloud_exadata_infrastructure(params = {}, options = {})
      request = build_request(:get_cloud_exadata_infrastructure, params)
      request.send_request(options)
    end

    # <p>Retrieves information about unallocated resources in a specified Cloud Exadata Infrastructure.</p>
    # @param [Hash, Types::GetCloudExadataInfrastructureUnallocatedResourcesInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Cloud Exadata infrastructure for which to retrieve unallocated resources.</p>
    # @option params [Array<String>] :db_servers
    #   <p>The database servers to include in the unallocated resources query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_servers: ["String"]
    #   }
    #   options = {}
    #   response = client.get_cloud_exadata_infrastructure_unallocated_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_exadata_infrastructure_unallocated_resources: {
    #       cloud_autonomous_vm_clusters: [
    #         {
    #           cloud_autonomous_vm_cluster_id: "ResourceId",
    #           unallocated_adb_storage_in_t_bs: 1.0
    #         }
    #       ],
    #       cloud_exadata_infrastructure_display_name: "String",
    #       exadata_storage_in_t_bs: 1.0,
    #       cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #       local_storage_in_g_bs: 1,
    #       memory_in_g_bs: 1,
    #       ocpus: 1
    #     }
    #   }
    # @return [Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput]
    def get_cloud_exadata_infrastructure_unallocated_resources(params = {}, options = {})
      request = build_request(:get_cloud_exadata_infrastructure_unallocated_resources, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified VM cluster.</p>
    # @param [Hash, Types::GetCloudVmClusterInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_vm_cluster: {
    #       cloud_vm_cluster_id: "ResourceId", # required
    #       display_name: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       cloud_vm_cluster_arn: "String",
    #       cloud_exadata_infrastructure_id: "String",
    #       cluster_name: "String",
    #       cpu_core_count: 1,
    #       data_collection_options: {
    #         is_diagnostics_events_enabled: false,
    #         is_health_monitoring_enabled: false,
    #         is_incident_logs_enabled: false
    #       },
    #       data_storage_size_in_t_bs: 1.0,
    #       db_node_storage_size_in_g_bs: 1,
    #       db_servers: ["String"],
    #       disk_redundancy: "HIGH" # One of: ["HIGH", "NORMAL"],
    #       gi_version: "String",
    #       hostname: "String",
    #       iorm_config_cache: {
    #         db_plans: [
    #           {
    #             db_name: "String",
    #             flash_cache_limit: "String",
    #             share: 1
    #           }
    #         ],
    #         lifecycle_details: "String",
    #         lifecycle_state: "BOOTSTRAPPING" # One of: ["BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"],
    #         objective: "AUTO" # One of: ["AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"]
    #       },
    #       is_local_backup_enabled: false,
    #       is_sparse_diskgroup_enabled: false,
    #       last_update_history_entry_id: "String",
    #       license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #       listener_port: 1,
    #       memory_size_in_g_bs: 1,
    #       node_count: 1,
    #       ocid: "String",
    #       oci_resource_anchor_name: "String",
    #       oci_url: "String",
    #       domain: "String",
    #       scan_dns_name: "String",
    #       scan_dns_record_id: "String",
    #       scan_ip_ids: ["String"],
    #       shape: "String",
    #       ssh_public_keys: ["SensitiveString"],
    #       storage_size_in_g_bs: 1,
    #       system_version: "String",
    #       created_at: Time.now,
    #       time_zone: "String",
    #       vip_ids: ["String"],
    #       odb_network_id: "ResourceIdOrArn",
    #       percent_progress: 1.0,
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"]
    #     }
    #   }
    # @return [Types::GetCloudVmClusterOutput]
    def get_cloud_vm_cluster(params = {}, options = {})
      request = build_request(:get_cloud_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified DB node.</p>
    # @param [Hash, Types::GetDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_db_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_node: {
    #       db_node_id: "ResourceId",
    #       db_node_arn: "ResourceArn",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"],
    #       status_reason: "String",
    #       additional_details: "String",
    #       backup_ip_id: "String",
    #       backup_vnic2_id: "String",
    #       backup_vnic_id: "String",
    #       cpu_core_count: 1,
    #       db_node_storage_size_in_g_bs: 1,
    #       db_server_id: "ResourceId",
    #       db_system_id: "String",
    #       fault_domain: "String",
    #       host_ip_id: "String",
    #       hostname: "String",
    #       ocid: "String",
    #       oci_resource_anchor_name: "String",
    #       maintenance_type: "VMDB_REBOOT_MIGRATION" # One of: ["VMDB_REBOOT_MIGRATION"],
    #       memory_size_in_g_bs: 1,
    #       software_storage_size_in_gb: 1,
    #       created_at: Time.now,
    #       time_maintenance_window_end: "String",
    #       time_maintenance_window_start: "String",
    #       total_cpu_core_count: 1,
    #       vnic2_id: "String",
    #       vnic_id: "String",
    #       private_ip_address: "String",
    #       floating_ip_address: "String"
    #     }
    #   }
    # @return [Types::GetDbNodeOutput]
    def get_db_node(params = {}, options = {})
      request = build_request(:get_db_node, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified database server.</p>
    # @param [Hash, Types::GetDbServerInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Oracle Exadata infrastructure that contains the database server.</p>
    # @option params [String] :db_server_id
    #   <p>The unique identifier of the database server to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_server_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_db_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_server: {
    #       db_server_id: "ResourceId",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       cpu_core_count: 1,
    #       db_node_storage_size_in_g_bs: 1,
    #       db_server_patching_details: {
    #         estimated_patch_duration: 1,
    #         patching_status: "COMPLETE" # One of: ["COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"],
    #         time_patching_ended: "String",
    #         time_patching_started: "String"
    #       },
    #       display_name: "String",
    #       exadata_infrastructure_id: "String",
    #       ocid: "String",
    #       oci_resource_anchor_name: "String",
    #       max_cpu_count: 1,
    #       max_db_node_storage_in_g_bs: 1,
    #       max_memory_in_g_bs: 1,
    #       memory_size_in_g_bs: 1,
    #       shape: "String",
    #       created_at: Time.now,
    #       vm_cluster_ids: ["String"],
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #       autonomous_vm_cluster_ids: ["String"],
    #       autonomous_virtual_machine_ids: ["String"]
    #     }
    #   }
    # @return [Types::GetDbServerOutput]
    def get_db_server(params = {}, options = {})
      request = build_request(:get_db_server, params)
      request.send_request(options)
    end

    # <p>Returns the tenancy activation link and onboarding status for your Amazon Web Services account.</p>
    # @param [Hash, Types::GetOciOnboardingStatusInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_oci_onboarding_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING_LINK_GENERATION", "PENDING_CUSTOMER_ACTION", "PENDING_INITIALIZATION", "ACTIVATING", "ACTIVE_IN_HOME_REGION", "ACTIVE", "ACTIVE_LIMITED", "FAILED", "PUBLIC_OFFER_UNSUPPORTED", "SUSPENDED", "CANCELED"],
    #     existing_tenancy_activation_link: "String",
    #     new_tenancy_activation_link: "String"
    #   }
    # @return [Types::GetOciOnboardingStatusOutput]
    def get_oci_onboarding_status(params = {}, options = {})
      request = build_request(:get_oci_onboarding_status, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified ODB network.</p>
    # @param [Hash, Types::GetOdbNetworkInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_odb_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     odb_network: {
    #       odb_network_id: "ResourceIdOrArn", # required
    #       display_name: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       odb_network_arn: "String",
    #       availability_zone: "String",
    #       availability_zone_id: "String",
    #       client_subnet_cidr: "String",
    #       backup_subnet_cidr: "String",
    #       custom_domain_name: "String",
    #       default_dns_prefix: "String",
    #       peered_cidrs: ["String"],
    #       oci_network_anchor_id: "String",
    #       oci_network_anchor_url: "String",
    #       oci_resource_anchor_name: "String",
    #       oci_vcn_id: "String",
    #       oci_vcn_url: "String",
    #       oci_dns_forwarding_configs: [
    #         {
    #           domain_name: "String",
    #           oci_dns_listener_ip: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       percent_progress: 1.0,
    #       managed_services: {
    #         service_network_arn: "ResourceArn",
    #         resource_gateway_arn: "ResourceArn",
    #         managed_services_ipv4_cidrs: ["String"],
    #         service_network_endpoint: {
    #           vpc_endpoint_id: "String",
    #           vpc_endpoint_type: "SERVICENETWORK" # One of: ["SERVICENETWORK"]
    #         },
    #         managed_s3_backup_access: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #           ipv4_addresses: ["String"]
    #         },
    #         zero_etl_access: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #           cidr: "String"
    #         },
    #         s3_access: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #           ipv4_addresses: ["String"],
    #           domain_name: "String",
    #           s3_policy_document: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetOdbNetworkOutput]
    def get_odb_network(params = {}, options = {})
      request = build_request(:get_odb_network, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an ODB peering connection.</p>
    # @param [Hash, Types::GetOdbPeeringConnectionInput] params
    # @option params [String] :odb_peering_connection_id
    #   <p>The unique identifier of the ODB peering connection to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_odb_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     odb_peering_connection: {
    #       odb_peering_connection_id: "ResourceIdOrArn", # required
    #       display_name: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       odb_peering_connection_arn: "String",
    #       odb_network_arn: "String",
    #       peer_network_arn: "String",
    #       odb_peering_connection_type: "String",
    #       created_at: Time.now,
    #       percent_progress: 1.0
    #     }
    #   }
    # @return [Types::GetOdbPeeringConnectionOutput]
    def get_odb_peering_connection(params = {}, options = {})
      request = build_request(:get_odb_peering_connection, params)
      request.send_request(options)
    end

    # <p>Initializes the ODB service for the first time in an account.</p>
    # @param [Hash, Types::InitializeServiceInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.initialize_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::InitializeServiceOutput]
    def initialize_service(params = {}, options = {})
      request = build_request(:initialize_service, params)
      request.send_request(options)
    end

    # <p>Lists all Autonomous VMs in an Autonomous VM cluster.</p>
    # @param [Hash, Types::ListAutonomousVirtualMachinesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue listing from.</p>
    # @option params [String] :cloud_autonomous_vm_cluster_id
    #   <p>The unique identifier of the Autonomous VM cluster whose virtual machines you're listing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_autonomous_virtual_machines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_virtual_machines: [ # required
    #       {
    #         autonomous_virtual_machine_id: "ResourceId",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         vm_name: "String",
    #         db_server_id: "ResourceId",
    #         db_server_display_name: "String",
    #         cpu_core_count: 1,
    #         memory_size_in_g_bs: 1,
    #         db_node_storage_size_in_g_bs: 1,
    #         client_ip_address: "String",
    #         cloud_autonomous_vm_cluster_id: "String",
    #         ocid: "String",
    #         oci_resource_anchor_name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousVirtualMachinesOutput]
    def list_autonomous_virtual_machines(params = {}, options = {})
      request = build_request(:list_autonomous_virtual_machines, params)
      request.send_request(options)
    end

    # <p>Lists all Autonomous VM clusters in a specified Cloud Exadata infrastructure.</p>
    # @param [Hash, Types::ListCloudAutonomousVmClustersInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue listing from.</p>
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Cloud Exadata Infrastructure that hosts the Autonomous VM clusters to be listed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn"
    #   }
    #   options = {}
    #   response = client.list_cloud_autonomous_vm_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     cloud_autonomous_vm_clusters: [ # required
    #       {
    #         cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #         cloud_autonomous_vm_cluster_arn: "String",
    #         odb_network_id: "ResourceIdOrArn",
    #         oci_resource_anchor_name: "String",
    #         percent_progress: 1.0,
    #         display_name: "ResourceDisplayName",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #         autonomous_data_storage_percentage: 1.0,
    #         autonomous_data_storage_size_in_t_bs: 1.0,
    #         available_autonomous_data_storage_size_in_t_bs: 1.0,
    #         available_container_databases: 1,
    #         available_cpus: 1.0,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         cpu_core_count: 1,
    #         cpu_core_count_per_node: 1,
    #         cpu_percentage: 1.0,
    #         data_storage_size_in_g_bs: 1.0,
    #         data_storage_size_in_t_bs: 1.0,
    #         db_node_storage_size_in_g_bs: 1,
    #         db_servers: ["String"],
    #         description: "String",
    #         domain: "String",
    #         exadata_storage_in_t_bs_lowest_scaled_value: 1.0,
    #         hostname: "String",
    #         ocid: "String",
    #         oci_url: "String",
    #         is_mtls_enabled_vm_cluster: false,
    #         license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #         maintenance_window: {
    #           custom_action_timeout_in_mins: 1,
    #           days_of_week: [
    #             {
    #               name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #             }
    #           ],
    #           hours_of_day: [1],
    #           is_custom_action_timeout_enabled: false,
    #           lead_time_in_weeks: 1,
    #           months: [
    #             {
    #               name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #             }
    #           ],
    #           patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #           preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #           skip_ru: false,
    #           weeks_of_month: [1]
    #         },
    #         max_acds_lowest_scaled_value: 1,
    #         memory_per_oracle_compute_unit_in_g_bs: 1,
    #         memory_size_in_g_bs: 1,
    #         node_count: 1,
    #         non_provisionable_autonomous_container_databases: 1,
    #         provisionable_autonomous_container_databases: 1,
    #         provisioned_autonomous_container_databases: 1,
    #         provisioned_cpus: 1.0,
    #         reclaimable_cpus: 1.0,
    #         reserved_cpus: 1.0,
    #         scan_listener_port_non_tls: 1,
    #         scan_listener_port_tls: 1,
    #         shape: "String",
    #         created_at: Time.now,
    #         time_database_ssl_certificate_expires: Time.now,
    #         time_ords_certificate_expires: Time.now,
    #         time_zone: "String",
    #         total_container_databases: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListCloudAutonomousVmClustersOutput]
    def list_cloud_autonomous_vm_clusters(params = {}, options = {})
      request = build_request(:list_cloud_autonomous_vm_clusters, params)
      request.send_request(options)
    end

    # <p>Returns information about the Exadata infrastructures owned by your Amazon Web Services account.</p>
    # @param [Hash, Types::ListCloudExadataInfrastructuresInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_cloud_exadata_infrastructures(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     cloud_exadata_infrastructures: [ # required
    #       {
    #         cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #         display_name: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         cloud_exadata_infrastructure_arn: "String",
    #         activated_storage_count: 1,
    #         additional_storage_count: 1,
    #         available_storage_size_in_g_bs: 1,
    #         availability_zone: "String",
    #         availability_zone_id: "String",
    #         compute_count: 1,
    #         cpu_count: 1,
    #         customer_contacts_to_send_to_oci: [
    #           {
    #             email: "SensitiveString"
    #           }
    #         ],
    #         data_storage_size_in_t_bs: 1.0,
    #         db_node_storage_size_in_g_bs: 1,
    #         db_server_version: "String",
    #         last_maintenance_run_id: "String",
    #         maintenance_window: {
    #           custom_action_timeout_in_mins: 1,
    #           days_of_week: [
    #             {
    #               name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #             }
    #           ],
    #           hours_of_day: [1],
    #           is_custom_action_timeout_enabled: false,
    #           lead_time_in_weeks: 1,
    #           months: [
    #             {
    #               name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #             }
    #           ],
    #           patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #           preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #           skip_ru: false,
    #           weeks_of_month: [1]
    #         },
    #         max_cpu_count: 1,
    #         max_data_storage_in_t_bs: 1.0,
    #         max_db_node_storage_size_in_g_bs: 1,
    #         max_memory_in_g_bs: 1,
    #         memory_size_in_g_bs: 1,
    #         monthly_db_server_version: "String",
    #         monthly_storage_server_version: "String",
    #         next_maintenance_run_id: "String",
    #         oci_resource_anchor_name: "String",
    #         oci_url: "String",
    #         ocid: "String",
    #         shape: "String",
    #         storage_count: 1,
    #         storage_server_version: "String",
    #         created_at: Time.now,
    #         total_storage_size_in_g_bs: 1,
    #         percent_progress: 1.0,
    #         database_server_type: "String",
    #         storage_server_type: "String",
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCloudExadataInfrastructuresOutput]
    def list_cloud_exadata_infrastructures(params = {}, options = {})
      request = build_request(:list_cloud_exadata_infrastructures, params)
      request.send_request(options)
    end

    # <p>Returns information about the VM clusters owned by your Amazon Web Services account or only the ones on the specified Exadata infrastructure.</p>
    # @param [Hash, Types::ListCloudVmClustersInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Oracle Exadata infrastructure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn"
    #   }
    #   options = {}
    #   response = client.list_cloud_vm_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     cloud_vm_clusters: [ # required
    #       {
    #         cloud_vm_cluster_id: "ResourceId", # required
    #         display_name: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         cloud_vm_cluster_arn: "String",
    #         cloud_exadata_infrastructure_id: "String",
    #         cluster_name: "String",
    #         cpu_core_count: 1,
    #         data_collection_options: {
    #           is_diagnostics_events_enabled: false,
    #           is_health_monitoring_enabled: false,
    #           is_incident_logs_enabled: false
    #         },
    #         data_storage_size_in_t_bs: 1.0,
    #         db_node_storage_size_in_g_bs: 1,
    #         db_servers: ["String"],
    #         disk_redundancy: "HIGH" # One of: ["HIGH", "NORMAL"],
    #         gi_version: "String",
    #         hostname: "String",
    #         iorm_config_cache: {
    #           db_plans: [
    #             {
    #               db_name: "String",
    #               flash_cache_limit: "String",
    #               share: 1
    #             }
    #           ],
    #           lifecycle_details: "String",
    #           lifecycle_state: "BOOTSTRAPPING" # One of: ["BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"],
    #           objective: "AUTO" # One of: ["AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"]
    #         },
    #         is_local_backup_enabled: false,
    #         is_sparse_diskgroup_enabled: false,
    #         last_update_history_entry_id: "String",
    #         license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #         listener_port: 1,
    #         memory_size_in_g_bs: 1,
    #         node_count: 1,
    #         ocid: "String",
    #         oci_resource_anchor_name: "String",
    #         oci_url: "String",
    #         domain: "String",
    #         scan_dns_name: "String",
    #         scan_dns_record_id: "String",
    #         scan_ip_ids: ["String"],
    #         shape: "String",
    #         ssh_public_keys: ["SensitiveString"],
    #         storage_size_in_g_bs: 1,
    #         system_version: "String",
    #         created_at: Time.now,
    #         time_zone: "String",
    #         vip_ids: ["String"],
    #         odb_network_id: "ResourceIdOrArn",
    #         percent_progress: 1.0,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCloudVmClustersOutput]
    def list_cloud_vm_clusters(params = {}, options = {})
      request = build_request(:list_cloud_vm_clusters, params)
      request.send_request(options)
    end

    # <p>Returns information about the DB nodes for the specified VM cluster.</p>
    # @param [Hash, Types::ListDbNodesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_db_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     db_nodes: [ # required
    #       {
    #         db_node_id: "ResourceId",
    #         db_node_arn: "ResourceArn",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"],
    #         status_reason: "String",
    #         additional_details: "String",
    #         backup_ip_id: "String",
    #         backup_vnic2_id: "String",
    #         backup_vnic_id: "String",
    #         cpu_core_count: 1,
    #         db_node_storage_size_in_g_bs: 1,
    #         db_server_id: "ResourceId",
    #         db_system_id: "String",
    #         fault_domain: "String",
    #         host_ip_id: "String",
    #         hostname: "String",
    #         ocid: "String",
    #         oci_resource_anchor_name: "String",
    #         maintenance_type: "VMDB_REBOOT_MIGRATION" # One of: ["VMDB_REBOOT_MIGRATION"],
    #         memory_size_in_g_bs: 1,
    #         software_storage_size_in_gb: 1,
    #         created_at: Time.now,
    #         time_maintenance_window_end: "String",
    #         time_maintenance_window_start: "String",
    #         total_cpu_core_count: 1,
    #         vnic2_id: "String",
    #         vnic_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListDbNodesOutput]
    def list_db_nodes(params = {}, options = {})
      request = build_request(:list_db_nodes, params)
      request.send_request(options)
    end

    # <p>Returns information about the database servers that belong to the specified Exadata infrastructure.</p>
    # @param [Hash, Types::ListDbServersInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Oracle Exadata infrastructure.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_db_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     db_servers: [ # required
    #       {
    #         db_server_id: "ResourceId",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         cpu_core_count: 1,
    #         db_node_storage_size_in_g_bs: 1,
    #         db_server_patching_details: {
    #           estimated_patch_duration: 1,
    #           patching_status: "COMPLETE" # One of: ["COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"],
    #           time_patching_ended: "String",
    #           time_patching_started: "String"
    #         },
    #         display_name: "String",
    #         exadata_infrastructure_id: "String",
    #         ocid: "String",
    #         oci_resource_anchor_name: "String",
    #         max_cpu_count: 1,
    #         max_db_node_storage_in_g_bs: 1,
    #         max_memory_in_g_bs: 1,
    #         memory_size_in_g_bs: 1,
    #         shape: "String",
    #         created_at: Time.now,
    #         vm_cluster_ids: ["String"],
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         autonomous_vm_cluster_ids: ["String"],
    #         autonomous_virtual_machine_ids: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::ListDbServersOutput]
    def list_db_servers(params = {}, options = {})
      request = build_request(:list_db_servers, params)
      request.send_request(options)
    end

    # <p>Returns information about the shapes that are available for an Exadata infrastructure.</p>
    # @param [Hash, Types::ListDbSystemShapesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :availability_zone
    #   <p>The logical name of the AZ, for example, us-east-1a. This name varies depending on the account.</p>
    # @option params [String] :availability_zone_id
    #   <p>The physical ID of the AZ, for example, use1-az4. This ID persists across accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     availability_zone: "String",
    #     availability_zone_id: "String"
    #   }
    #   options = {}
    #   response = client.list_db_system_shapes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     db_system_shapes: [ # required
    #       {
    #         available_core_count: 1,
    #         available_core_count_per_node: 1,
    #         available_data_storage_in_t_bs: 1,
    #         available_data_storage_per_server_in_t_bs: 1,
    #         available_db_node_per_node_in_g_bs: 1,
    #         available_db_node_storage_in_g_bs: 1,
    #         available_memory_in_g_bs: 1,
    #         available_memory_per_node_in_g_bs: 1,
    #         core_count_increment: 1,
    #         max_storage_count: 1,
    #         maximum_node_count: 1,
    #         min_core_count_per_node: 1,
    #         min_data_storage_in_t_bs: 1,
    #         min_db_node_storage_per_node_in_g_bs: 1,
    #         min_memory_per_node_in_g_bs: 1,
    #         min_storage_count: 1,
    #         minimum_core_count: 1,
    #         minimum_node_count: 1,
    #         runtime_minimum_core_count: 1,
    #         shape_family: "String",
    #         shape_type: "AMD" # One of: ["AMD", "INTEL", "INTEL_FLEX_X9", "AMPERE_FLEX_A1"],
    #         name: "String",
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         are_server_types_supported: false
    #       }
    #     ]
    #   }
    # @return [Types::ListDbSystemShapesOutput]
    def list_db_system_shapes(params = {}, options = {})
      request = build_request(:list_db_system_shapes, params)
      request.send_request(options)
    end

    # <p>Returns information about Oracle Grid Infrastructure (GI) software versions that are available for a VM cluster for the specified shape.</p>
    # @param [Hash, Types::ListGiVersionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :shape
    #   <p>The shape to return GI versions for. For a list of valid shapes, use the <code>ListDbSystemShapes</code> operation..</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     shape: "String"
    #   }
    #   options = {}
    #   response = client.list_gi_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     gi_versions: [ # required
    #       {
    #         version: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListGiVersionsOutput]
    def list_gi_versions(params = {}, options = {})
      request = build_request(:list_gi_versions, params)
      request.send_request(options)
    end

    # <p>Returns information about the ODB networks owned by your Amazon Web Services account.</p>
    # @param [Hash, Types::ListOdbNetworksInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_odb_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     odb_networks: [ # required
    #       {
    #         odb_network_id: "ResourceIdOrArn", # required
    #         display_name: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         odb_network_arn: "String",
    #         availability_zone: "String",
    #         availability_zone_id: "String",
    #         client_subnet_cidr: "String",
    #         backup_subnet_cidr: "String",
    #         custom_domain_name: "String",
    #         default_dns_prefix: "String",
    #         peered_cidrs: ["String"],
    #         oci_network_anchor_id: "String",
    #         oci_network_anchor_url: "String",
    #         oci_resource_anchor_name: "String",
    #         oci_vcn_id: "String",
    #         oci_vcn_url: "String",
    #         oci_dns_forwarding_configs: [
    #           {
    #             domain_name: "String",
    #             oci_dns_listener_ip: "String"
    #           }
    #         ],
    #         created_at: Time.now,
    #         percent_progress: 1.0,
    #         managed_services: {
    #           service_network_arn: "ResourceArn",
    #           resource_gateway_arn: "ResourceArn",
    #           managed_services_ipv4_cidrs: ["String"],
    #           service_network_endpoint: {
    #             vpc_endpoint_id: "String",
    #             vpc_endpoint_type: "SERVICENETWORK" # One of: ["SERVICENETWORK"]
    #           },
    #           managed_s3_backup_access: {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #             ipv4_addresses: ["String"]
    #           },
    #           zero_etl_access: {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #             cidr: "String"
    #           },
    #           s3_access: {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #             ipv4_addresses: ["String"],
    #             domain_name: "String",
    #             s3_policy_document: "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListOdbNetworksOutput]
    def list_odb_networks(params = {}, options = {})
      request = build_request(:list_odb_networks, params)
      request.send_request(options)
    end

    # <p>Lists all ODB peering connections or those associated with a specific ODB network.</p>
    # @param [Hash, Types::ListOdbPeeringConnectionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of ODB peering connections to return in the response.</p> <p>Default: <code>20</code> </p> <p>Constraints:</p> <ul> <li> <p>Must be between 1 and 100.</p> </li> </ul>
    # @option params [String] :next_token
    #   <p>The pagination token for the next page of ODB peering connections.</p>
    # @option params [String] :odb_network_id
    #   <p>The identifier of the ODB network to list peering connections for.</p> <p>If not specified, lists all ODB peering connections in the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     odb_network_id: "ResourceIdOrArn"
    #   }
    #   options = {}
    #   response = client.list_odb_peering_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     odb_peering_connections: [ # required
    #       {
    #         odb_peering_connection_id: "ResourceIdOrArn", # required
    #         display_name: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         odb_peering_connection_arn: "String",
    #         odb_network_arn: "String",
    #         peer_network_arn: "String",
    #         odb_peering_connection_type: "String",
    #         created_at: Time.now,
    #         percent_progress: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::ListOdbPeeringConnectionsOutput]
    def list_odb_peering_connections(params = {}, options = {})
      request = build_request(:list_odb_peering_connections, params)
      request.send_request(options)
    end

    # <p>Returns information about the system versions that are available for a VM cluster for the specified <code>giVersion</code> and <code>shape</code>.</p>
    # @param [Hash, Types::ListSystemVersionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p> <p>Default: <code>10</code> </p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :gi_version
    #   <p>The software version of the Exadata Grid Infrastructure (GI).</p>
    # @option params [String] :shape
    #   <p>The Exadata hardware system model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     gi_version: "String", # required
    #     shape: "String", # required
    #   }
    #   options = {}
    #   response = client.list_system_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     system_versions: [ # required
    #       {
    #         gi_version: "String",
    #         shape: "String",
    #         system_versions: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::ListSystemVersionsOutput]
    def list_system_versions(params = {}, options = {})
      request = build_request(:list_system_versions, params)
      request.send_request(options)
    end

    # <p>Returns information about the tags applied to this resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Reboots the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::RebootDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to reboot.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to reboot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.reboot_db_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_node_id: "String", # required
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"],
    #     status_reason: "String"
    #   }
    # @return [Types::RebootDbNodeOutput]
    def reboot_db_node(params = {}, options = {})
      request = build_request(:reboot_db_node, params)
      request.send_request(options)
    end

    # <p>Starts the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::StartDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to start.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.start_db_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_node_id: "String", # required
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"],
    #     status_reason: "String"
    #   }
    # @return [Types::StartDbNodeOutput]
    def start_db_node(params = {}, options = {})
      request = build_request(:start_db_node, params)
      request.send_request(options)
    end

    # <p>Stops the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::StopDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to stop.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.stop_db_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_node_id: "String", # required
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"],
    #     status_reason: "String"
    #   }
    # @return [Types::StopDbNodeOutput]
    def stop_db_node(params = {}, options = {})
      request = build_request(:stop_db_node, params)
      request.send_request(options)
    end

    # <p>Applies tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags to apply to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The names (keys) of the tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>Updates the properties of an Exadata infrastructure resource.</p>
    # @param [Hash, Types::UpdateCloudExadataInfrastructureInput] params
    # @option params [String] :cloud_exadata_infrastructure_id
    #   <p>The unique identifier of the Exadata infrastructure to update.</p>
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   <p>The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #         }
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #         }
    #       ],
    #       patching_mode: "ROLLING" # One of: ["ROLLING", "NONROLLING"],
    #       preference: "NO_PREFERENCE" # One of: ["NO_PREFERENCE", "CUSTOM_PREFERENCE"],
    #       skip_ru: false,
    #       weeks_of_month: [1]
    #     }
    #   }
    #   options = {}
    #   response = client.update_cloud_exadata_infrastructure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     cloud_exadata_infrastructure_id: "String", # required
    #   }
    # @return [Types::UpdateCloudExadataInfrastructureOutput]
    def update_cloud_exadata_infrastructure(params = {}, options = {})
      request = build_request(:update_cloud_exadata_infrastructure, params)
      request.send_request(options)
    end

    # <p>Updates properties of a specified ODB network.</p>
    # @param [Hash, Types::UpdateOdbNetworkInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network to update.</p>
    # @option params [String] :display_name
    #   <p>The new user-friendly name of the ODB network.</p>
    # @option params [Array<String>] :peered_cidrs_to_be_added
    #   <p>The list of CIDR ranges from the peered VPC that allow access to the ODB network.</p>
    # @option params [Array<String>] :peered_cidrs_to_be_removed
    #   <p>The list of CIDR ranges from the peered VPC to remove from the ODB network.</p>
    # @option params [String] :s3_access
    #   <p>Specifies the updated configuration for Amazon S3 access from the ODB network.</p>
    # @option params [String] :zero_etl_access
    #   <p>Specifies the updated configuration for Zero-ETL access from the ODB network.</p>
    # @option params [String] :s3_policy_document
    #   <p>Specifies the updated endpoint policy for Amazon S3 access from the ODB network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peered_cidrs_to_be_added: ["String"],
    #     peered_cidrs_to_be_removed: ["String"],
    #     s3_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     zero_etl_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     s3_policy_document: "PolicyDocument"
    #   }
    #   options = {}
    #   response = client.update_odb_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     odb_network_id: "String", # required
    #   }
    # @return [Types::UpdateOdbNetworkOutput]
    def update_odb_network(params = {}, options = {})
      request = build_request(:update_odb_network, params)
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
      context[:gem_name] = 'aws-sdk-odb'
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
