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
require 'aws-sdk-core/json_rpc'

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Odb::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Associates an Amazon Web Services Identity and Access Management (IAM) service role with a specified resource to enable Amazon Web Services service integration.</p>
    # @param [Hash, Types::AssociateIamRoleToResourceInput] params
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) service role to associate with the resource.</p>
    # @option params [String] :aws_integration
    #   <p>The Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role association.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource to associate with the Amazon Web Services Identity and Access Management (IAM) service role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde" # One of: ["KmsTde"], # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.associate_iam_role_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateIamRoleToResourceOutput]
    def associate_iam_role_to_resource(params = {}, options = {})
      request = build_request(:associate_iam_role_to_resource, params)
      request.send_request(options)
    end

    # <p>Adds virtual machines to the specified Exascale VM cluster.</p>
    # @param [Hash, Types::AssociateVirtualMachinesToExadbVmClusterInput] params
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster to add virtual machines to.</p>
    # @option params [Integer] :desired_node_count
    #   <p>The desired number of nodes in the Exascale VM cluster after the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     desired_node_count: 1, # required
    #   }
    #   options = {}
    #   response = client.associate_virtual_machines_to_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exadb_vm_cluster_id: "String", # required
    #   }
    # @return [Types::AssociateVirtualMachinesToExadbVmClusterOutput]
    def associate_virtual_machines_to_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:associate_virtual_machines_to_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new Autonomous Database.</p>
    # @param [Hash, Types::CreateAutonomousDatabaseInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network to be used for the Autonomous Database.</p>
    # @option params [String] :display_name
    #   <p>The user-friendly name for the Autonomous Database. The name does not have to be unique.</p>
    # @option params [String] :db_name
    #   <p>The name of the Autonomous Database. The name must begin with an alphabetic character and can contain a maximum of 30 alphanumeric characters. Special characters are not permitted. The name must be unique in the Amazon Web Services account.</p>
    # @option params [String] :admin_password
    #   <p>The password for the <code>ADMIN</code> user of the Autonomous Database.</p>
    # @option params [Float] :compute_count
    #   <p>The compute capacity, in number of Elastic CPUs (ECPUs) or Oracle CPUs (OCPUs), to assign to the Autonomous Database.</p>
    # @option params [Integer] :data_storage_size_in_t_bs
    #   <p>The size, in terabytes (TB), of the data volume to allocate for the Autonomous Database.</p>
    # @option params [Integer] :data_storage_size_in_g_bs
    #   <p>The size, in gigabytes (GB), of the data volume to allocate for the Autonomous Database.</p>
    # @option params [String] :db_workload
    #   <p>The intended use of the Autonomous Database, such as transaction processing, data warehouse, JSON database, or APEX.</p>
    # @option params [Boolean] :is_auto_scaling_enabled
    #   <p>Specifies whether to enable automatic scaling of the compute resources for the Autonomous Database.</p>
    # @option params [Boolean] :is_auto_scaling_for_storage_enabled
    #   <p>Specifies whether to enable automatic scaling of the storage for the Autonomous Database.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the Autonomous Database.</p>
    # @option params [String] :character_set
    #   <p>The character set to use for the Autonomous Database.</p>
    # @option params [String] :ncharacter_set
    #   <p>The national character set to use for the Autonomous Database.</p>
    # @option params [String] :db_version
    #   <p>The Oracle Database software version to use for the Autonomous Database.</p>
    # @option params [String] :database_edition
    #   <p>The Oracle Database edition to apply to the Autonomous Database.</p>
    # @option params [String] :standby_allowlisted_ips_source
    #   <p>The source of the allowlisted IP addresses for the standby Autonomous Database.</p>
    # @option params [String] :autonomous_maintenance_schedule_type
    #   <p>The maintenance schedule type for the Autonomous Database.</p>
    # @option params [Integer] :backup_retention_period_in_days
    #   <p>The retention period, in days, for automatic backups of the Autonomous Database.</p>
    # @option params [Float] :byol_compute_count_limit
    #   <p>The maximum number of compute resources that you can allocate to the Autonomous Database under the bring-your-own-license (BYOL) model.</p>
    # @option params [Integer] :cpu_core_count
    #   <p>The number of CPU cores to allocate to the Autonomous Database.</p>
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   <p>The list of customer contacts to receive operational notifications from Oracle Cloud Infrastructure (OCI) for the Autonomous Database.</p>
    # @option params [String] :private_endpoint_ip
    #   <p>The private endpoint IP address for the Autonomous Database.</p>
    # @option params [String] :private_endpoint_label
    #   <p>The private endpoint label for the Autonomous Database.</p>
    # @option params [String] :resource_pool_leader_id
    #   <p>The unique identifier of the resource pool leader Autonomous Database.</p>
    # @option params [Types::ResourcePoolSummary] :resource_pool_summary
    #   <p>The configuration of the resource pool for the Autonomous Database.</p>
    # @option params [Array<Types::ScheduledOperationDetails>] :scheduled_operations
    #   <p>The list of scheduled start and stop times for the Autonomous Database.</p>
    # @option params [Array<String>] :standby_allowlisted_ips
    #   <p>The list of IP addresses that are allowed to access the standby Autonomous Database.</p>
    # @option params [Array<String>] :allowlisted_ips
    #   <p>The list of IP addresses that are allowed to access the Autonomous Database.</p>
    # @option params [Types::TransportableTablespace] :transportable_tablespace
    #   <p>The transportable tablespace configuration to use when creating the Autonomous Database.</p>
    # @option params [Boolean] :is_backup_retention_locked
    #   <p>Specifies whether to lock the backup retention period of the Autonomous Database to prevent it from being shortened.</p>
    # @option params [Boolean] :is_local_data_guard_enabled
    #   <p>Specifies whether to enable local Oracle Data Guard for the Autonomous Database.</p>
    # @option params [Boolean] :is_mtls_connection_required
    #   <p>Specifies whether mutual TLS (mTLS) authentication is required to connect to the Autonomous Database.</p>
    # @option params [Array<Types::DatabaseTool>] :db_tools_details
    #   <p>The list of database management tools to enable for the Autonomous Database.</p>
    # @option params [String] :source
    #   <p>The source from which to create the Autonomous Database, such as a clone, backup, or cross-Region copy.</p>
    # @option params [Types::SourceConfiguration] :source_configuration
    #   <p>The configuration details for the source used to create the Autonomous Database.</p>
    # @option params [String] :encryption_key_provider
    #   <p>The provider of the encryption key to use for the Autonomous Database.</p>
    # @option params [Types::EncryptionKeyConfigurationInput] :encryption_key_configuration
    #   <p>The configuration of the encryption key to use for the Autonomous Database.</p>
    # @option params [String] :admin_password_source
    #   <p>The source of the admin password for the Autonomous Database. When set to <code>CUSTOMER_MANAGED_AWS_SECRET</code>, the admin password is retrieved from an Amazon Web Services Secrets Manager secret.</p>
    # @option params [Types::AdminPasswordSourceConfigurationInput] :admin_password_source_configuration
    #   <p>The configuration of the admin password source for the Autonomous Database.</p>
    # @option params [String] :client_token
    #   <p>A client-provided token to ensure the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the Autonomous Database. Each tag is a key-value pair with no predefined name, type, or namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn",
    #     display_name: "ResourceDisplayName",
    #     db_name: "String",
    #     admin_password: "SensitiveString",
    #     compute_count: 1.0,
    #     data_storage_size_in_t_bs: 1,
    #     data_storage_size_in_g_bs: 1,
    #     db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #     is_auto_scaling_enabled: false,
    #     is_auto_scaling_for_storage_enabled: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     character_set: "String",
    #     ncharacter_set: "String",
    #     db_version: "String",
    #     database_edition: "STANDARD_EDITION" # One of: ["STANDARD_EDITION", "ENTERPRISE_EDITION"],
    #     standby_allowlisted_ips_source: "PRIMARY" # One of: ["PRIMARY", "SEPARATE", "NOT_APPLICABLE"],
    #     autonomous_maintenance_schedule_type: "EARLY" # One of: ["EARLY", "REGULAR"],
    #     backup_retention_period_in_days: 1,
    #     byol_compute_count_limit: 1.0,
    #     cpu_core_count: 1,
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "SensitiveString"
    #       }
    #     ],
    #     private_endpoint_ip: "String",
    #     private_endpoint_label: "String",
    #     resource_pool_leader_id: "ResourceIdOrArn",
    #     resource_pool_summary: {
    #       is_disabled: false,
    #       pool_size: 1,
    #       pool_storage_size_in_t_bs: 1,
    #       available_storage_capacity_in_t_bs: 1.0,
    #       total_compute_capacity: 1,
    #       available_compute_capacity: 1
    #     },
    #     scheduled_operations: [
    #       {
    #         day_of_week: { # required
    #           name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #         },
    #         scheduled_start_time: "String",
    #         scheduled_stop_time: "String"
    #       }
    #     ],
    #     standby_allowlisted_ips: ["String"],
    #     allowlisted_ips: ["String"],
    #     transportable_tablespace: {
    #       tts_bundle_url: "String"
    #     },
    #     is_backup_retention_locked: false,
    #     is_local_data_guard_enabled: false,
    #     is_mtls_connection_required: false,
    #     db_tools_details: [
    #       {
    #         is_enabled: false,
    #         name: "String",
    #         compute_count: 1.0,
    #         max_idle_time_in_minutes: 1
    #       }
    #     ],
    #     source: "NONE" # One of: ["NONE", "DATABASE", "BACKUP_FROM_ID", "BACKUP_FROM_TIMESTAMP", "CROSS_REGION_DATAGUARD", "CROSS_REGION_DISASTER_RECOVERY", "CLONE_TO_REFRESHABLE"],
    #     source_configuration: {
    #       # One of:
    #       database_clone: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL" # One of: ["FULL", "METADATA", "PARTIAL"], # required
    #       },
    #       restore_from_backup: {
    #         autonomous_database_backup_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL" # One of: ["FULL", "METADATA", "PARTIAL"], # required
    #         clone_table_space_list: [1]
    #       },
    #       point_in_time_restore: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL" # One of: ["FULL", "METADATA", "PARTIAL"], # required
    #         timestamp: Time.now,
    #         use_latest_available_backup_timestamp: false,
    #         clone_table_space_list: [1]
    #       },
    #       cross_region_data_guard: {
    #         source_autonomous_database_arn: "Arn", # required
    #       },
    #       cross_region_disaster_recovery: {
    #         source_autonomous_database_arn: "Arn", # required
    #         remote_disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"], # required
    #         is_replicate_automatic_backups: false
    #       },
    #       clone_to_refreshable: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         refreshable_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         auto_refresh_frequency_in_seconds: 1,
    #         auto_refresh_point_lag_in_seconds: 1,
    #         time_of_auto_refresh_start: Time.now,
    #         open_mode: "READ_ONLY" # One of: ["READ_ONLY", "READ_WRITE"],
    #         clone_type: "FULL" # One of: ["FULL", "METADATA", "PARTIAL"]
    #       }
    #     },
    #     encryption_key_provider: "ORACLE_MANAGED" # One of: ["ORACLE_MANAGED", "AWS_KMS"],
    #     encryption_key_configuration: {
    #       # One of:
    #       aws_encryption_key: {
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"],
    #         kms_key_id: "KmsKeyIdOrArn"
    #       }
    #     },
    #     admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #     admin_password_source_configuration: {
    #       # One of:
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #       }
    #     },
    #     client_token: "GeneralInputString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::CreateAutonomousDatabaseOutput]
    def create_autonomous_database(params = {}, options = {})
      request = build_request(:create_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Creates a new backup of the specified Autonomous Database.</p>
    # @param [Hash, Types::CreateAutonomousDatabaseBackupInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to back up.</p>
    # @option params [String] :display_name
    #   <p>The user-friendly name for the Autonomous Database backup.</p>
    # @option params [Integer] :retention_period_in_days
    #   <p>The retention period, in days, for the Autonomous Database backup.</p>
    # @option params [String] :client_token
    #   <p>A client-provided token to ensure the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the Autonomous Database backup. Each tag is a key-value pair with no predefined name, type, or namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     retention_period_in_days: 1,
    #     client_token: "GeneralInputString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_autonomous_database_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     autonomous_database_backup_id: "String", # required
    #   }
    # @return [Types::CreateAutonomousDatabaseBackupOutput]
    def create_autonomous_database_backup(params = {}, options = {})
      request = build_request(:create_autonomous_database_backup, params)
      request.send_request(options)
    end

    # <p>Creates a new wallet for the specified Autonomous Database.</p>
    # @param [Hash, Types::CreateAutonomousDatabaseWalletInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to create a wallet for.</p>
    # @option params [String] :wallet_type
    #   <p>The type of wallet to create, either a regional wallet or an instance wallet.</p>
    # @option params [String] :password
    #   <p>The password to encrypt the keys inside the wallet.</p>
    # @option params [String] :password_source
    #   <p>The source of the password for encrypting the wallet. When set to <code>CUSTOMER_MANAGED_AWS_SECRET</code>, the password is retrieved from an Amazon Web Services Secrets Manager secret.</p>
    # @option params [Types::WalletPasswordSourceConfigurationInput] :password_source_configuration
    #   <p>The configuration of the password source for the Autonomous Database wallet.</p>
    # @option params [String] :client_token
    #   <p>A client-provided token to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     wallet_type: "REGIONAL" # One of: ["REGIONAL", "INSTANCE"],
    #     password: "SensitiveString",
    #     password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #     password_source_configuration: {
    #       # One of:
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #       }
    #     },
    #     client_token: "GeneralInputString"
    #   }
    #   options = {}
    #   response = client.create_autonomous_database_wallet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_wallet_file: "data", # required
    #   }
    # @return [Types::CreateAutonomousDatabaseWalletOutput]
    def create_autonomous_database_wallet(params = {}, options = {})
      request = build_request(:create_autonomous_database_wallet, params)
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
    #   <p>The amount of local node storage, in gigabytes (GB), to allocate for the VM cluster.</p>
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
    #   <p>The amount of memory, in gigabytes (GB), to allocate for the VM cluster.</p>
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
    #     hostname: "Hostname", # required
    #     ssh_public_keys: ["String"], # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     cluster_name: "ClusterName",
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

    # <p>Creates an Exascale VM cluster.</p>
    # @param [Hash, Types::CreateExadbVmClusterInput] params
    # @option params [String] :display_name
    #   <p>A user-friendly name for the Exascale VM cluster.</p>
    # @option params [Integer] :enabled_ecpu_count
    #   <p>The number of ECPUs to enable for the Exascale VM cluster.</p>
    # @option params [String] :exascale_db_storage_vault_id
    #   <p>The unique identifier of the Exascale storage vault for this Exascale VM cluster.</p>
    # @option params [String] :grid_image_id
    #   <p>The Grid Infrastructure software image ID for the Exascale VM cluster.</p>
    # @option params [String] :hostname
    #   <p>The host name for the Exascale VM cluster.</p>
    # @option params [Integer] :node_count
    #   <p>The number of nodes in the Exascale VM cluster.</p>
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network for the Exascale VM cluster.</p>
    # @option params [String] :shape
    #   <p>The shape of the Exascale VM cluster.</p>
    # @option params [Array<String>] :ssh_public_keys
    #   <p>The public key portion of one or more key pairs used for SSH access to the Exascale VM cluster.</p>
    # @option params [Integer] :total_ecpu_count
    #   <p>The total number of ECPUs for the Exascale VM cluster.</p>
    # @option params [Integer] :vm_file_system_storage_total_size_in_g_bs
    #   <p>The total amount of file system storage, in gigabytes (GB), for the Exascale VM cluster.</p>
    # @option params [String] :cluster_name
    #   <p>A name for the Grid Infrastructure cluster. The name isn't case sensitive.</p>
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   <p>The set of preferences for the various diagnostic collection options for the Exascale VM cluster.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the Exascale VM cluster.</p>
    # @option params [Integer] :scan_listener_port_tcp
    #   <p>The port number for TCP connections to the Single Client Access Name (SCAN) listener.</p>
    # @option params [Integer] :scan_listener_port_tcp_ssl
    #   <p>The port number for TCP connections with SSL to the Single Client Access Name (SCAN) listener.</p>
    # @option params [String] :shape_attribute
    #   <p>The shape attribute for the Exascale VM cluster.</p>
    # @option params [String] :system_version
    #   <p>The version of the operating system of the image for the Exascale VM cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the Exascale VM cluster.</p>
    # @option params [String] :time_zone
    #   <p>The time zone for the Exascale VM cluster.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the operation completes no more than one time. If you submit the same request twice with the same client token, the service ignores the second request and returns the result of the first. If you don't specify a client token, the AWS SDK automatically generates one. The client token is valid for up to 24 hours after it's first used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "ResourceDisplayName", # required
    #     enabled_ecpu_count: 1, # required
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #     grid_image_id: "String", # required
    #     hostname: "Hostname", # required
    #     node_count: 1, # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     shape: "String", # required
    #     ssh_public_keys: ["String"], # required
    #     total_ecpu_count: 1, # required
    #     vm_file_system_storage_total_size_in_g_bs: 1, # required
    #     cluster_name: "ClusterName",
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false
    #     },
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     scan_listener_port_tcp: 1,
    #     scan_listener_port_tcp_ssl: 1,
    #     shape_attribute: "SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"],
    #     system_version: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     time_zone: "String",
    #     client_token: "GeneralInputString"
    #   }
    #   options = {}
    #   response = client.create_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exadb_vm_cluster_id: "String", # required
    #   }
    # @return [Types::CreateExadbVmClusterOutput]
    def create_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:create_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Creates an Exascale storage vault.</p>
    # @param [Hash, Types::CreateExascaleDbStorageVaultInput] params
    # @option params [String] :display_name
    #   <p>A user-friendly name for the Exascale storage vault.</p>
    # @option params [Integer] :high_capacity_database_storage_total_size_in_g_bs
    #   <p>The total size of the high-capacity database storage, in gigabytes (GB), for the Exascale storage vault.</p>
    # @option params [Integer] :additional_flash_cache_in_percent
    #   <p>The additional flash cache percentage for the Exascale storage vault.</p>
    # @option params [Integer] :autoscale_limit_in_g_bs
    #   <p>The autoscale limit in gigabytes (GB) for the Exascale storage vault.</p>
    # @option params [String] :availability_zone_id
    #   <p>The Availability Zone ID for the Exascale storage vault.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone for the Exascale storage vault.</p>
    # @option params [String] :description
    #   <p>A description of the Exascale storage vault.</p>
    # @option params [Boolean] :is_autoscale_enabled
    #   <p>Specifies whether autoscaling is enabled for the Exascale storage vault.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of resource tags to apply to the Exascale storage vault.</p>
    # @option params [String] :time_zone
    #   <p>The time zone for the Exascale storage vault.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the operation completes no more than one time. If you submit the same request twice with the same client token, the service ignores the second request and returns the result of the first. If you don't specify a client token, the AWS SDK automatically generates one. The client token is valid for up to 24 hours after it's first used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "ResourceDisplayName", # required
    #     high_capacity_database_storage_total_size_in_g_bs: 1, # required
    #     additional_flash_cache_in_percent: 1,
    #     autoscale_limit_in_g_bs: 1,
    #     availability_zone_id: "String",
    #     availability_zone: "String",
    #     description: "String",
    #     is_autoscale_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     time_zone: "String",
    #     client_token: "GeneralInputString"
    #   }
    #   options = {}
    #   response = client.create_exascale_db_storage_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exascale_db_storage_vault_id: "String", # required
    #   }
    # @return [Types::CreateExascaleDbStorageVaultOutput]
    def create_exascale_db_storage_vault(params = {}, options = {})
      request = build_request(:create_exascale_db_storage_vault, params)
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
    # @option params [String] :sts_access
    #   <p>The Amazon Web Services Security Token Service (STS) access configuration for the ODB network.</p>
    # @option params [String] :kms_access
    #   <p>The Amazon Web Services Key Management Service (KMS) access configuration for the ODB network.</p>
    # @option params [String] :s3_policy_document
    #   <p>Specifies the endpoint policy for Amazon S3 access from the ODB network.</p>
    # @option params [String] :sts_policy_document
    #   <p>The Amazon Web Services Security Token Service (STS) policy document that defines permissions for token service usage within the ODB network.</p>
    # @option params [String] :kms_policy_document
    #   <p>The Amazon Web Services Key Management Service (KMS) policy document that defines permissions for key usage within the ODB network.</p>
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   <p>The cross-Region Amazon S3 restore sources to enable for the ODB network.</p>
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
    #     sts_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     kms_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
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

    # <p>Creates a peering connection between an ODB network and a VPC.</p> <p>A peering connection enables private connectivity between the networks for application-tier communication.</p>
    # @param [Hash, Types::CreateOdbPeeringConnectionInput] params
    # @option params [String] :odb_network_id
    #   <p>The unique identifier of the ODB network that initiates the peering connection.</p>
    # @option params [String] :peer_network_id
    #   <p>The unique identifier of the peer network. This can be either a VPC ID or another ODB network ID.</p>
    # @option params [String] :display_name
    #   <p>The display name for the ODB peering connection.</p>
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   <p>A list of CIDR blocks to add to the peering connection. These CIDR blocks define the IP address ranges that can communicate through the peering connection.</p>
    # @option params [Array<String>] :peer_network_route_table_ids
    #   <p>The unique identifier of the VPC route table for which a route to the ODB network is automatically created during peering connection establishment.</p>
    # @option params [String] :client_token
    #   <p>The client token for the ODB peering connection request.</p> <p>Constraints:</p> <ul> <li> <p>Must be unique for each request.</p> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the ODB peering connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #     peer_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     peer_network_route_table_ids: ["PeerNetworkRouteTableId"],
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

    # <p>Deletes the specified Autonomous Database.</p>
    # @param [Hash, Types::DeleteAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutonomousDatabaseOutput]
    def delete_autonomous_database(params = {}, options = {})
      request = build_request(:delete_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Autonomous Database backup.</p>
    # @param [Hash, Types::DeleteAutonomousDatabaseBackupInput] params
    # @option params [String] :autonomous_database_backup_id
    #   <p>The unique identifier of the Autonomous Database backup to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_backup_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_autonomous_database_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutonomousDatabaseBackupOutput]
    def delete_autonomous_database_backup(params = {}, options = {})
      request = build_request(:delete_autonomous_database_backup, params)
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

    # <p>Deletes the specified Exascale VM cluster.</p>
    # @param [Hash, Types::DeleteExadbVmClusterInput] params
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteExadbVmClusterOutput]
    def delete_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:delete_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Exascale storage vault.</p>
    # @param [Hash, Types::DeleteExascaleDbStorageVaultInput] params
    # @option params [String] :exascale_db_storage_vault_id
    #   <p>The unique identifier of the Exascale storage vault to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_exascale_db_storage_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteExascaleDbStorageVaultOutput]
    def delete_exascale_db_storage_vault(params = {}, options = {})
      request = build_request(:delete_exascale_db_storage_vault, params)
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

    # <p>Disassociates an Amazon Web Services Identity and Access Management (IAM) service role from a specified resource to disable Amazon Web Services service integration.</p>
    # @param [Hash, Types::DisassociateIamRoleFromResourceInput] params
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) service role to disassociate from the resource.</p>
    # @option params [String] :aws_integration
    #   <p>The Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role disassociation.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource to disassociate from the Amazon Web Services Identity and Access Management (IAM) service role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde" # One of: ["KmsTde"], # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_iam_role_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateIamRoleFromResourceOutput]
    def disassociate_iam_role_from_resource(params = {}, options = {})
      request = build_request(:disassociate_iam_role_from_resource, params)
      request.send_request(options)
    end

    # <p>Removes virtual machines from the specified Exascale VM cluster.</p>
    # @param [Hash, Types::DisassociateVirtualMachinesFromExadbVmClusterInput] params
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster to remove virtual machines from.</p>
    # @option params [Array<String>] :db_node_ids
    #   <p>The list of DB node IDs to remove from the Exascale VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     db_node_ids: ["ResourceId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_virtual_machines_from_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exadb_vm_cluster_id: "String", # required
    #   }
    # @return [Types::DisassociateVirtualMachinesFromExadbVmClusterOutput]
    def disassociate_virtual_machines_from_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:disassociate_virtual_machines_from_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Initiates a failover of the specified Autonomous Database to a standby peer database.</p>
    # @param [Hash, Types::FailoverAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to fail over.</p>
    # @option params [String] :peer_db_arn
    #   <p>The Amazon Resource Name (ARN) of the peer Autonomous Database to fail over to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     peer_db_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.failover_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::FailoverAutonomousDatabaseOutput]
    def failover_autonomous_database(params = {}, options = {})
      request = build_request(:failover_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific Autonomous Database.</p>
    # @param [Hash, Types::GetAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database: { # required
    #       autonomous_database_id: "ResourceIdOrArn",
    #       autonomous_database_arn: "ResourceArn",
    #       oci_resource_anchor_name: "String",
    #       percent_progress: 1.0,
    #       ocid: "String",
    #       oci_url: "String",
    #       display_name: "String",
    #       db_name: "String",
    #       source_id: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #       status_reason: "String",
    #       database_type: "REGULAR" # One of: ["REGULAR", "CLONE"],
    #       db_version: "String",
    #       db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #       character_set: "String",
    #       ncharacter_set: "String",
    #       database_edition: "STANDARD_EDITION" # One of: ["STANDARD_EDITION", "ENTERPRISE_EDITION"],
    #       license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #       open_mode: "READ_ONLY" # One of: ["READ_ONLY", "READ_WRITE"],
    #       permission_level: "RESTRICTED" # One of: ["RESTRICTED", "UNRESTRICTED"],
    #       is_mtls_connection_required: false,
    #       autonomous_maintenance_schedule_type: "EARLY" # One of: ["EARLY", "REGULAR"],
    #       net_services_architecture: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #       available_upgrade_versions: ["String"],
    #       byol_compute_count_limit: 1,
    #       connection_string_details: {
    #         all_connection_strings: {
    #           "String" => "String"
    #         },
    #         dedicated: "String",
    #         high: "String",
    #         medium: "String",
    #         low: "String",
    #         profiles: [
    #           {
    #             consumer_group: "String",
    #             display_name: "String",
    #             host_format: "String",
    #             is_regional: false,
    #             protocol: "String",
    #             session_mode: "String",
    #             syntax_format: "String",
    #             tls_authentication: "String",
    #             value: "String"
    #           }
    #         ]
    #       },
    #       service_console_url: "String",
    #       sql_web_developer_url: "String",
    #       customer_contacts: [
    #         {
    #           email: "SensitiveString"
    #         }
    #       ],
    #       apex_details: {
    #         apex_version: "String",
    #         ords_version: "String"
    #       },
    #       standby_db: {
    #         availability_domain: "String",
    #         lag_time_in_seconds: 1,
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #         status_reason: "String",
    #         maintenance_target_component: "String",
    #         time_data_guard_role_changed: Time.now,
    #         time_disaster_recovery_role_changed: Time.now,
    #         time_maintenance_begin: Time.now,
    #         time_maintenance_end: Time.now
    #       },
    #       local_standby_db: {
    #         availability_domain: "String",
    #         lag_time_in_seconds: 1,
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #         status_reason: "String",
    #         maintenance_target_component: "String",
    #         time_data_guard_role_changed: Time.now,
    #         time_disaster_recovery_role_changed: Time.now,
    #         time_maintenance_begin: Time.now,
    #         time_maintenance_end: Time.now
    #       },
    #       data_safe_status: "REGISTERING" # One of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"],
    #       database_management_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #       operations_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #       availability_zone: "String",
    #       availability_zone_id: "String",
    #       maintenance_target_component: "String",
    #       connection_urls: {
    #         apex_url: "String",
    #         database_transforms_url: "String",
    #         graph_studio_url: "String",
    #         machine_learning_notebook_url: "String",
    #         machine_learning_user_management_url: "String",
    #         mongo_db_url: "String",
    #         ords_url: "String",
    #         spatial_studio_url: "String",
    #         sql_dev_web_url: "String"
    #       },
    #       db_tools_details: [
    #         {
    #           is_enabled: false,
    #           name: "String",
    #           compute_count: 1.0,
    #           max_idle_time_in_minutes: 1
    #         }
    #       ],
    #       scheduled_operations: [
    #         {
    #           day_of_week: { # required
    #             name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #           },
    #           scheduled_start_time: "String",
    #           scheduled_stop_time: "String"
    #         }
    #       ],
    #       resource_pool_leader_id: "String",
    #       compute_count: 1.0,
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #       cpu_core_count: 1,
    #       memory_per_oracle_compute_unit_in_g_bs: 1,
    #       provisionable_cpus: [1],
    #       is_auto_scaling_enabled: false,
    #       data_storage_size_in_t_bs: 1.0,
    #       data_storage_size_in_g_bs: 1,
    #       used_data_storage_size_in_t_bs: 1.0,
    #       used_data_storage_size_in_g_bs: 1,
    #       actual_used_data_storage_size_in_t_bs: 1.0,
    #       allocated_storage_size_in_t_bs: 1.0,
    #       in_memory_area_in_g_bs: 1,
    #       is_auto_scaling_for_storage_enabled: false,
    #       odb_network_id: "ResourceId",
    #       odb_network_arn: "ResourceArn",
    #       private_endpoint: "String",
    #       private_endpoint_ip: "String",
    #       private_endpoint_label: "String",
    #       allowlisted_ips: ["String"],
    #       standby_allowlisted_ips: ["String"],
    #       standby_allowlisted_ips_source: "PRIMARY" # One of: ["PRIMARY", "SEPARATE", "NOT_APPLICABLE"],
    #       is_local_data_guard_enabled: false,
    #       is_remote_data_guard_enabled: false,
    #       local_disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #       role: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"],
    #       peer_db_ids: ["String"],
    #       failed_data_recovery_in_seconds: 1,
    #       local_adg_auto_failover_max_data_loss_limit: 1,
    #       remote_disaster_recovery_configuration: {
    #         disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #         is_replicate_automatic_backups: false,
    #         is_snapshot_standby: false,
    #         time_snapshot_standby_enabled_till: Time.now
    #       },
    #       is_refreshable_clone: false,
    #       refreshable_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       refreshable_status: "REFRESHING" # One of: ["REFRESHING", "NOT_REFRESHING"],
    #       auto_refresh_frequency_in_seconds: 1,
    #       auto_refresh_point_lag_in_seconds: 1,
    #       is_reconnect_clone_enabled: false,
    #       clone_table_space_list: [1],
    #       backup_retention_period_in_days: 1,
    #       long_term_backup_schedule: {
    #         is_disabled: false,
    #         repeat_cadence: "ONE_TIME" # One of: ["ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"],
    #         retention_period_in_days: 1,
    #         time_of_backup: Time.now
    #       },
    #       is_backup_retention_locked: false,
    #       total_backup_storage_size_in_g_bs: 1.0,
    #       resource_pool_summary: {
    #         is_disabled: false,
    #         pool_size: 1,
    #         pool_storage_size_in_t_bs: 1,
    #         available_storage_capacity_in_t_bs: 1.0,
    #         total_compute_capacity: 1,
    #         available_compute_capacity: 1
    #       },
    #       encryption_summary: {
    #         encryption_key_provider: "ORACLE_MANAGED" # One of: ["ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"],
    #         encryption_key_configuration: {
    #           # One of:
    #           aws_encryption_key: {
    #             iam_role_arn: "RoleArn",
    #             external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"],
    #             kms_key_id: "KmsKeyIdOrArn"
    #           },
    #           oci_encryption_key: {
    #             kms_key_id: "String", # required
    #             vault_id: "String", # required
    #           },
    #           okv_encryption_key: {
    #             certificate_directory_name: "String", # required
    #             certificate_id: "String",
    #             directory_name: "String", # required
    #             okv_kms_key: "String", # required
    #             okv_uri: "String", # required
    #           }
    #         }
    #       },
    #       created_at: Time.now,
    #       time_of_last_backup: Time.now,
    #       time_maintenance_begin: Time.now,
    #       time_maintenance_end: Time.now,
    #       time_local_data_guard_enabled: Time.now,
    #       time_data_guard_role_changed: Time.now,
    #       time_of_last_switchover: Time.now,
    #       time_of_last_failover: Time.now,
    #       time_of_last_refresh: Time.now,
    #       time_of_last_refresh_point: Time.now,
    #       time_of_next_refresh: Time.now,
    #       time_of_auto_refresh_start: Time.now,
    #       time_deletion_of_free_autonomous_database: Time.now,
    #       time_reclamation_of_free_autonomous_database: Time.now,
    #       time_disaster_recovery_role_changed: Time.now,
    #       time_until_reconnect_clone_enabled: Time.now,
    #       next_long_term_backup_time_stamp: Time.now,
    #       time_undeleted: Time.now,
    #       admin_password_source_summary: {
    #         admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #         admin_password_source_configuration: {
    #           # One of:
    #           customer_managed_aws_secret: {
    #             iam_role_arn: "RoleArn",
    #             secret_id: "SecretIdOrArn",
    #             external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetAutonomousDatabaseOutput]
    def get_autonomous_database(params = {}, options = {})
      request = build_request(:get_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific Autonomous Database backup.</p>
    # @param [Hash, Types::GetAutonomousDatabaseBackupInput] params
    # @option params [String] :autonomous_database_backup_id
    #   <p>The unique identifier of the Autonomous Database backup to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_backup_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_autonomous_database_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_backup: {
    #       autonomous_database_backup_id: "ResourceId",
    #       autonomous_database_backup_arn: "ResourceArn",
    #       autonomous_database_id: "ResourceId",
    #       ocid: "String",
    #       display_name: "String",
    #       db_version: "String",
    #       status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"],
    #       status_reason: "String",
    #       is_automatic: false,
    #       retention_period_in_days: 1,
    #       size_in_t_bs: 1.0,
    #       time_available_till: Time.now,
    #       time_started: Time.now,
    #       time_ended: Time.now,
    #       type: "INCREMENTAL" # One of: ["INCREMENTAL", "FULL", "LONGTERM", "VIRTUAL_FULL", "CUMULATIVE_INCREMENTAL", "ROLL_FORWARD_IMAGE_COPY"]
    #     }
    #   }
    # @return [Types::GetAutonomousDatabaseBackupOutput]
    def get_autonomous_database_backup(params = {}, options = {})
      request = build_request(:get_autonomous_database_backup, params)
      request.send_request(options)
    end

    # <p>Gets the wallet details for the specified Autonomous Database.</p>
    # @param [Hash, Types::GetAutonomousDatabaseWalletDetailsInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to retrieve wallet details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_autonomous_database_wallet_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_wallet_details: { # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "UPDATING"],
    #       time_rotated: Time.now,
    #       password_source_summary: {
    #         password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #         password_source_configuration: {
    #           # One of:
    #           customer_managed_aws_secret: {
    #             iam_role_arn: "RoleArn",
    #             secret_id: "SecretIdOrArn",
    #             external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetAutonomousDatabaseWalletDetailsOutput]
    def get_autonomous_database_wallet_details(params = {}, options = {})
      request = build_request(:get_autonomous_database_wallet_details, params)
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
    #       odb_network_arn: "ResourceArn",
    #       oci_resource_anchor_name: "String",
    #       percent_progress: 1.0,
    #       display_name: "ResourceDisplayName",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #       cloud_exadata_infrastructure_arn: "ResourceArn",
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
    #       total_container_databases: 1,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "RoleArn",
    #           status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #           status_reason: "String",
    #           aws_integration: "KmsTde" # One of: ["KmsTde"]
    #         }
    #       ]
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
    #       cloud_exadata_infrastructure_arn: "ResourceArn",
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
    #       odb_network_arn: "ResourceArn",
    #       percent_progress: 1.0,
    #       compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #       iam_roles: [
    #         {
    #           iam_role_arn: "RoleArn",
    #           status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #           status_reason: "String",
    #           aws_integration: "KmsTde" # One of: ["KmsTde"]
    #         }
    #       ]
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
    #   <p>The unique identifier of the VM cluster that contains the DB node. You must specify either this parameter or <code>exadbVmClusterId</code>.</p>
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster that contains the DB node. You must specify either this parameter or <code>cloudVmClusterId</code>.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
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

    # <p>Returns information about the specified Exascale VM cluster.</p>
    # @param [Hash, Types::GetExadbVmClusterInput] params
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exadb_vm_cluster: { # required
    #       exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #       cluster_name: "ClusterName",
    #       created_at: Time.now,
    #       data_collection_options: {
    #         is_diagnostics_events_enabled: false,
    #         is_health_monitoring_enabled: false,
    #         is_incident_logs_enabled: false
    #       },
    #       display_name: "ResourceDisplayName",
    #       domain: "String",
    #       enabled_ecpu_count: 1,
    #       exadb_vm_cluster_arn: "ResourceArn",
    #       exascale_db_storage_vault_arn: "ResourceArn",
    #       exascale_db_storage_vault_id: "ResourceIdOrArn",
    #       gi_version: "String",
    #       grid_image_id: "String",
    #       grid_image_type: "RELEASE_UPDATE" # One of: ["RELEASE_UPDATE", "CUSTOM_IMAGE"],
    #       hostname: "Hostname",
    #       iam_roles: [
    #         {
    #           iam_role_arn: "RoleArn",
    #           status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #           status_reason: "String",
    #           aws_integration: "KmsTde" # One of: ["KmsTde"]
    #         }
    #       ],
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
    #       last_update_history_entry_id: "String",
    #       license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #       listener_port: 1,
    #       memory_size_in_g_bs: 1,
    #       node_count: 1,
    #       ocid: "String",
    #       oci_resource_anchor_name: "String",
    #       oci_url: "String",
    #       odb_network_arn: "ResourceArn",
    #       odb_network_id: "ResourceIdOrArn",
    #       percent_progress: 1.0,
    #       scan_dns_name: "String",
    #       scan_dns_record_id: "String",
    #       scan_ip_ids: ["String"],
    #       scan_listener_port_tcp: 1,
    #       scan_listener_port_tcp_ssl: 1,
    #       shape: "String",
    #       shape_attribute: "SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"],
    #       snapshot_file_system_storage: {
    #         total_size_in_g_bs: 1
    #       },
    #       ssh_public_keys: ["String"],
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       system_version: "String",
    #       time_zone: "String",
    #       total_ecpu_count: 1,
    #       total_file_system_storage: {
    #         total_size_in_g_bs: 1
    #       },
    #       vip_ids: ["String"],
    #       vm_file_system_storage: {
    #         total_size_in_g_bs: 1
    #       }
    #     }
    #   }
    # @return [Types::GetExadbVmClusterOutput]
    def get_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:get_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Exascale storage vault.</p>
    # @param [Hash, Types::GetExascaleDbStorageVaultInput] params
    # @option params [String] :exascale_db_storage_vault_id
    #   <p>The unique identifier of the Exascale storage vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_exascale_db_storage_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exascale_db_storage_vault: { # required
    #       exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #       additional_flash_cache_in_percent: 1,
    #       attached_shape_attributes: ["SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"]],
    #       autoscale_limit_in_g_bs: 1,
    #       availability_zone: "String",
    #       availability_zone_id: "String",
    #       created_at: Time.now,
    #       description: "String",
    #       display_name: "String",
    #       vm_cluster_arns: ["ResourceArn"],
    #       vm_cluster_count: 1,
    #       vm_cluster_ids: ["ResourceId"],
    #       exascale_db_storage_vault_arn: "ResourceArn",
    #       high_capacity_database_storage: {
    #         available_size_in_g_bs: 1,
    #         total_size_in_g_bs: 1
    #       },
    #       is_autoscale_enabled: false,
    #       ocid: "String",
    #       oci_resource_anchor_name: "String",
    #       oci_url: "String",
    #       percent_progress: 1.0,
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       time_zone: "String"
    #     }
    #   }
    # @return [Types::GetExascaleDbStorageVaultOutput]
    def get_exascale_db_storage_vault(params = {}, options = {})
      request = build_request(:get_exascale_db_storage_vault, params)
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
    #     new_tenancy_activation_link: "String",
    #     oci_identity_domain: {
    #       oci_identity_domain_id: "String",
    #       oci_identity_domain_resource_url: "String",
    #       oci_identity_domain_url: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #       status_reason: "String",
    #       account_setup_cloud_formation_url: "String"
    #     },
    #     autonomous_database_oci_integration_iam_roles: [
    #       {
    #         iam_role_arn: "RoleArn",
    #         aws_integration: "KmsTde" # One of: ["KmsTde", "SecretsManager"],
    #         status: "PROVISIONING" # One of: ["PROVISIONING", "AVAILABLE", "PROVISION_FAILED", "TERMINATING", "TERMINATE_FAILED"],
    #         status_reason: "String"
    #       }
    #     ],
    #     linked_oci_tenancy_id: "String",
    #     linked_oci_compartment_id: "String",
    #     subscription_errors: [
    #       {
    #         error_message: "String"
    #       }
    #     ]
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
    #         },
    #         sts_access: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #           ipv4_addresses: ["String"],
    #           domain_name: "String",
    #           sts_policy_document: "String"
    #         },
    #         kms_access: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #           ipv4_addresses: ["String"],
    #           domain_name: "String",
    #           kms_policy_document: "String"
    #         },
    #         cross_region_s3_restore_sources_access: [
    #           {
    #             region: "String",
    #             ipv4_addresses: ["String"],
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #           }
    #         ]
    #       },
    #       ec2_placement_group_ids: ["ResourceId"]
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
    #       peer_network_cidrs: ["PeeredCidr"],
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
    # @option params [Boolean] :oci_identity_domain
    #   <p>The Oracle Cloud Infrastructure (OCI) identity domain configuration for service initialization.</p>
    # @option params [String] :autonomous_database_oci_aws_secrets_manager_integration
    #   <p>Specifies whether to enable or disable the OCI service-account role for Amazon Web Services Secrets Manager integration with Autonomous Database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     oci_identity_domain: false,
    #     autonomous_database_oci_aws_secrets_manager_integration: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
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

    # <p>Lists the backups of the specified Autonomous Database.</p>
    # @param [Hash, Types::ListAutonomousDatabaseBackupsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database whose backups you want to list.</p>
    # @option params [String] :status
    #   <p>The status of the Autonomous Database backups to return results for.</p>
    # @option params [String] :type
    #   <p>The type of the Autonomous Database backups to return results for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     autonomous_database_id: "ResourceId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"],
    #     type: "INCREMENTAL" # One of: ["INCREMENTAL", "FULL", "LONGTERM", "VIRTUAL_FULL", "CUMULATIVE_INCREMENTAL", "ROLL_FORWARD_IMAGE_COPY"]
    #   }
    #   options = {}
    #   response = client.list_autonomous_database_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_database_backups: [ # required
    #       {
    #         autonomous_database_backup_id: "ResourceId",
    #         autonomous_database_backup_arn: "ResourceArn",
    #         autonomous_database_id: "ResourceId",
    #         ocid: "String",
    #         display_name: "String",
    #         db_version: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"],
    #         status_reason: "String",
    #         is_automatic: false,
    #         retention_period_in_days: 1,
    #         size_in_t_bs: 1.0,
    #         time_available_till: Time.now,
    #         time_started: Time.now,
    #         time_ended: Time.now,
    #         type: "INCREMENTAL" # One of: ["INCREMENTAL", "FULL", "LONGTERM", "VIRTUAL_FULL", "CUMULATIVE_INCREMENTAL", "ROLL_FORWARD_IMAGE_COPY"]
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabaseBackupsOutput]
    def list_autonomous_database_backups(params = {}, options = {})
      request = build_request(:list_autonomous_database_backups, params)
      request.send_request(options)
    end

    # <p>Lists the available character sets for Autonomous Databases.</p>
    # @param [Hash, Types::ListAutonomousDatabaseCharacterSetsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :character_set_type
    #   <p>The type of character set to return results for, either the database character set or the national character set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     character_set_type: "DATABASE" # One of: ["DATABASE", "NATIONAL"]
    #   }
    #   options = {}
    #   response = client.list_autonomous_database_character_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_database_character_sets: [ # required
    #       {
    #         character_set: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabaseCharacterSetsOutput]
    def list_autonomous_database_character_sets(params = {}, options = {})
      request = build_request(:list_autonomous_database_character_sets, params)
      request.send_request(options)
    end

    # <p>Lists the clones of the specified Autonomous Database.</p>
    # @param [Hash, Types::ListAutonomousDatabaseClonesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the source Autonomous Database whose clones you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_autonomous_database_clones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_database_clones: [ # required
    #       {
    #         autonomous_database_id: "ResourceIdOrArn",
    #         autonomous_database_arn: "ResourceArn",
    #         oci_resource_anchor_name: "String",
    #         percent_progress: 1.0,
    #         ocid: "String",
    #         oci_url: "String",
    #         display_name: "String",
    #         db_name: "String",
    #         source_id: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #         status_reason: "String",
    #         database_type: "REGULAR" # One of: ["REGULAR", "CLONE"],
    #         db_version: "String",
    #         db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #         character_set: "String",
    #         ncharacter_set: "String",
    #         database_edition: "STANDARD_EDITION" # One of: ["STANDARD_EDITION", "ENTERPRISE_EDITION"],
    #         license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #         open_mode: "READ_ONLY" # One of: ["READ_ONLY", "READ_WRITE"],
    #         permission_level: "RESTRICTED" # One of: ["RESTRICTED", "UNRESTRICTED"],
    #         is_mtls_connection_required: false,
    #         autonomous_maintenance_schedule_type: "EARLY" # One of: ["EARLY", "REGULAR"],
    #         net_services_architecture: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #         available_upgrade_versions: ["String"],
    #         byol_compute_count_limit: 1,
    #         connection_string_details: {
    #           all_connection_strings: {
    #             "String" => "String"
    #           },
    #           dedicated: "String",
    #           high: "String",
    #           medium: "String",
    #           low: "String",
    #           profiles: [
    #             {
    #               consumer_group: "String",
    #               display_name: "String",
    #               host_format: "String",
    #               is_regional: false,
    #               protocol: "String",
    #               session_mode: "String",
    #               syntax_format: "String",
    #               tls_authentication: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         service_console_url: "String",
    #         sql_web_developer_url: "String",
    #         customer_contacts: [
    #           {
    #             email: "SensitiveString"
    #           }
    #         ],
    #         apex_details: {
    #           apex_version: "String",
    #           ords_version: "String"
    #         },
    #         standby_db: {
    #           availability_domain: "String",
    #           lag_time_in_seconds: 1,
    #           status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #           status_reason: "String",
    #           maintenance_target_component: "String",
    #           time_data_guard_role_changed: Time.now,
    #           time_disaster_recovery_role_changed: Time.now,
    #           time_maintenance_begin: Time.now,
    #           time_maintenance_end: Time.now
    #         },
    #         local_standby_db: {
    #           availability_domain: "String",
    #           lag_time_in_seconds: 1,
    #           status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #           status_reason: "String",
    #           maintenance_target_component: "String",
    #           time_data_guard_role_changed: Time.now,
    #           time_disaster_recovery_role_changed: Time.now,
    #           time_maintenance_begin: Time.now,
    #           time_maintenance_end: Time.now
    #         },
    #         data_safe_status: "REGISTERING" # One of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"],
    #         database_management_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #         operations_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #         availability_zone: "String",
    #         availability_zone_id: "String",
    #         maintenance_target_component: "String",
    #         connection_urls: {
    #           apex_url: "String",
    #           database_transforms_url: "String",
    #           graph_studio_url: "String",
    #           machine_learning_notebook_url: "String",
    #           machine_learning_user_management_url: "String",
    #           mongo_db_url: "String",
    #           ords_url: "String",
    #           spatial_studio_url: "String",
    #           sql_dev_web_url: "String"
    #         },
    #         db_tools_details: [
    #           {
    #             is_enabled: false,
    #             name: "String",
    #             compute_count: 1.0,
    #             max_idle_time_in_minutes: 1
    #           }
    #         ],
    #         scheduled_operations: [
    #           {
    #             day_of_week: { # required
    #               name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #             },
    #             scheduled_start_time: "String",
    #             scheduled_stop_time: "String"
    #           }
    #         ],
    #         resource_pool_leader_id: "String",
    #         compute_count: 1.0,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         cpu_core_count: 1,
    #         memory_per_oracle_compute_unit_in_g_bs: 1,
    #         provisionable_cpus: [1],
    #         is_auto_scaling_enabled: false,
    #         data_storage_size_in_t_bs: 1.0,
    #         data_storage_size_in_g_bs: 1,
    #         used_data_storage_size_in_t_bs: 1.0,
    #         used_data_storage_size_in_g_bs: 1,
    #         actual_used_data_storage_size_in_t_bs: 1.0,
    #         allocated_storage_size_in_t_bs: 1.0,
    #         in_memory_area_in_g_bs: 1,
    #         is_auto_scaling_for_storage_enabled: false,
    #         odb_network_id: "ResourceId",
    #         odb_network_arn: "ResourceArn",
    #         private_endpoint: "String",
    #         private_endpoint_ip: "String",
    #         private_endpoint_label: "String",
    #         allowlisted_ips: ["String"],
    #         standby_allowlisted_ips: ["String"],
    #         standby_allowlisted_ips_source: "PRIMARY" # One of: ["PRIMARY", "SEPARATE", "NOT_APPLICABLE"],
    #         is_local_data_guard_enabled: false,
    #         is_remote_data_guard_enabled: false,
    #         local_disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #         role: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"],
    #         peer_db_ids: ["String"],
    #         failed_data_recovery_in_seconds: 1,
    #         local_adg_auto_failover_max_data_loss_limit: 1,
    #         remote_disaster_recovery_configuration: {
    #           disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #           is_replicate_automatic_backups: false,
    #           is_snapshot_standby: false,
    #           time_snapshot_standby_enabled_till: Time.now
    #         },
    #         is_refreshable_clone: false,
    #         refreshable_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         refreshable_status: "REFRESHING" # One of: ["REFRESHING", "NOT_REFRESHING"],
    #         auto_refresh_frequency_in_seconds: 1,
    #         auto_refresh_point_lag_in_seconds: 1,
    #         is_reconnect_clone_enabled: false,
    #         clone_table_space_list: [1],
    #         backup_retention_period_in_days: 1,
    #         long_term_backup_schedule: {
    #           is_disabled: false,
    #           repeat_cadence: "ONE_TIME" # One of: ["ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"],
    #           retention_period_in_days: 1,
    #           time_of_backup: Time.now
    #         },
    #         is_backup_retention_locked: false,
    #         total_backup_storage_size_in_g_bs: 1.0,
    #         resource_pool_summary: {
    #           is_disabled: false,
    #           pool_size: 1,
    #           pool_storage_size_in_t_bs: 1,
    #           available_storage_capacity_in_t_bs: 1.0,
    #           total_compute_capacity: 1,
    #           available_compute_capacity: 1
    #         },
    #         encryption_summary: {
    #           encryption_key_provider: "ORACLE_MANAGED" # One of: ["ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"],
    #           encryption_key_configuration: {
    #             # One of:
    #             aws_encryption_key: {
    #               iam_role_arn: "RoleArn",
    #               external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"],
    #               kms_key_id: "KmsKeyIdOrArn"
    #             },
    #             oci_encryption_key: {
    #               kms_key_id: "String", # required
    #               vault_id: "String", # required
    #             },
    #             okv_encryption_key: {
    #               certificate_directory_name: "String", # required
    #               certificate_id: "String",
    #               directory_name: "String", # required
    #               okv_kms_key: "String", # required
    #               okv_uri: "String", # required
    #             }
    #           }
    #         },
    #         created_at: Time.now,
    #         time_of_last_backup: Time.now,
    #         time_maintenance_begin: Time.now,
    #         time_maintenance_end: Time.now,
    #         time_local_data_guard_enabled: Time.now,
    #         time_data_guard_role_changed: Time.now,
    #         time_of_last_switchover: Time.now,
    #         time_of_last_failover: Time.now,
    #         time_of_last_refresh: Time.now,
    #         time_of_last_refresh_point: Time.now,
    #         time_of_next_refresh: Time.now,
    #         time_of_auto_refresh_start: Time.now,
    #         time_deletion_of_free_autonomous_database: Time.now,
    #         time_reclamation_of_free_autonomous_database: Time.now,
    #         time_disaster_recovery_role_changed: Time.now,
    #         time_until_reconnect_clone_enabled: Time.now,
    #         next_long_term_backup_time_stamp: Time.now,
    #         time_undeleted: Time.now,
    #         admin_password_source_summary: {
    #           admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #           admin_password_source_configuration: {
    #             # One of:
    #             customer_managed_aws_secret: {
    #               iam_role_arn: "RoleArn",
    #               secret_id: "SecretIdOrArn",
    #               external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabaseClonesOutput]
    def list_autonomous_database_clones(params = {}, options = {})
      request = build_request(:list_autonomous_database_clones, params)
      request.send_request(options)
    end

    # <p>Lists the peer databases of the specified Autonomous Database.</p>
    # @param [Hash, Types::ListAutonomousDatabasePeersInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database whose peer databases you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.list_autonomous_database_peers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_database_peers: [ # required
    #       {
    #         autonomous_database_id: "ResourceId",
    #         autonomous_database_arn: "ResourceArn",
    #         ocid: "String",
    #         region: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabasePeersOutput]
    def list_autonomous_database_peers(params = {}, options = {})
      request = build_request(:list_autonomous_database_peers, params)
      request.send_request(options)
    end

    # <p>Lists the available Oracle Database software versions for Autonomous Databases.</p>
    # @param [Hash, Types::ListAutonomousDatabaseVersionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :db_workload
    #   <p>The intended use of the Autonomous Database to return versions for, such as transaction processing, data warehouse, JSON database, or APEX.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"]
    #   }
    #   options = {}
    #   response = client.list_autonomous_database_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_database_versions: [ # required
    #       {
    #         db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #         details: "String",
    #         version: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabaseVersionsOutput]
    def list_autonomous_database_versions(params = {}, options = {})
      request = build_request(:list_autonomous_database_versions, params)
      request.send_request(options)
    end

    # <p>Returns information about the Autonomous Databases owned by your Amazon Web Services account in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::ListAutonomousDatabasesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_autonomous_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     autonomous_databases: [ # required
    #       {
    #         autonomous_database_id: "ResourceIdOrArn",
    #         autonomous_database_arn: "ResourceArn",
    #         oci_resource_anchor_name: "String",
    #         percent_progress: 1.0,
    #         ocid: "String",
    #         oci_url: "String",
    #         display_name: "String",
    #         db_name: "String",
    #         source_id: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #         status_reason: "String",
    #         database_type: "REGULAR" # One of: ["REGULAR", "CLONE"],
    #         db_version: "String",
    #         db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #         character_set: "String",
    #         ncharacter_set: "String",
    #         database_edition: "STANDARD_EDITION" # One of: ["STANDARD_EDITION", "ENTERPRISE_EDITION"],
    #         license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #         open_mode: "READ_ONLY" # One of: ["READ_ONLY", "READ_WRITE"],
    #         permission_level: "RESTRICTED" # One of: ["RESTRICTED", "UNRESTRICTED"],
    #         is_mtls_connection_required: false,
    #         autonomous_maintenance_schedule_type: "EARLY" # One of: ["EARLY", "REGULAR"],
    #         net_services_architecture: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #         available_upgrade_versions: ["String"],
    #         byol_compute_count_limit: 1,
    #         connection_string_details: {
    #           all_connection_strings: {
    #             "String" => "String"
    #           },
    #           dedicated: "String",
    #           high: "String",
    #           medium: "String",
    #           low: "String",
    #           profiles: [
    #             {
    #               consumer_group: "String",
    #               display_name: "String",
    #               host_format: "String",
    #               is_regional: false,
    #               protocol: "String",
    #               session_mode: "String",
    #               syntax_format: "String",
    #               tls_authentication: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         service_console_url: "String",
    #         sql_web_developer_url: "String",
    #         customer_contacts: [
    #           {
    #             email: "SensitiveString"
    #           }
    #         ],
    #         apex_details: {
    #           apex_version: "String",
    #           ords_version: "String"
    #         },
    #         standby_db: {
    #           availability_domain: "String",
    #           lag_time_in_seconds: 1,
    #           status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #           status_reason: "String",
    #           maintenance_target_component: "String",
    #           time_data_guard_role_changed: Time.now,
    #           time_disaster_recovery_role_changed: Time.now,
    #           time_maintenance_begin: Time.now,
    #           time_maintenance_end: Time.now
    #         },
    #         local_standby_db: {
    #           availability_domain: "String",
    #           lag_time_in_seconds: 1,
    #           status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #           status_reason: "String",
    #           maintenance_target_component: "String",
    #           time_data_guard_role_changed: Time.now,
    #           time_disaster_recovery_role_changed: Time.now,
    #           time_maintenance_begin: Time.now,
    #           time_maintenance_end: Time.now
    #         },
    #         data_safe_status: "REGISTERING" # One of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"],
    #         database_management_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #         operations_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"],
    #         availability_zone: "String",
    #         availability_zone_id: "String",
    #         maintenance_target_component: "String",
    #         connection_urls: {
    #           apex_url: "String",
    #           database_transforms_url: "String",
    #           graph_studio_url: "String",
    #           machine_learning_notebook_url: "String",
    #           machine_learning_user_management_url: "String",
    #           mongo_db_url: "String",
    #           ords_url: "String",
    #           spatial_studio_url: "String",
    #           sql_dev_web_url: "String"
    #         },
    #         db_tools_details: [
    #           {
    #             is_enabled: false,
    #             name: "String",
    #             compute_count: 1.0,
    #             max_idle_time_in_minutes: 1
    #           }
    #         ],
    #         scheduled_operations: [
    #           {
    #             day_of_week: { # required
    #               name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #             },
    #             scheduled_start_time: "String",
    #             scheduled_stop_time: "String"
    #           }
    #         ],
    #         resource_pool_leader_id: "String",
    #         compute_count: 1.0,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         cpu_core_count: 1,
    #         memory_per_oracle_compute_unit_in_g_bs: 1,
    #         provisionable_cpus: [1],
    #         is_auto_scaling_enabled: false,
    #         data_storage_size_in_t_bs: 1.0,
    #         data_storage_size_in_g_bs: 1,
    #         used_data_storage_size_in_t_bs: 1.0,
    #         used_data_storage_size_in_g_bs: 1,
    #         actual_used_data_storage_size_in_t_bs: 1.0,
    #         allocated_storage_size_in_t_bs: 1.0,
    #         in_memory_area_in_g_bs: 1,
    #         is_auto_scaling_for_storage_enabled: false,
    #         odb_network_id: "ResourceId",
    #         odb_network_arn: "ResourceArn",
    #         private_endpoint: "String",
    #         private_endpoint_ip: "String",
    #         private_endpoint_label: "String",
    #         allowlisted_ips: ["String"],
    #         standby_allowlisted_ips: ["String"],
    #         standby_allowlisted_ips_source: "PRIMARY" # One of: ["PRIMARY", "SEPARATE", "NOT_APPLICABLE"],
    #         is_local_data_guard_enabled: false,
    #         is_remote_data_guard_enabled: false,
    #         local_disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #         role: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"],
    #         peer_db_ids: ["String"],
    #         failed_data_recovery_in_seconds: 1,
    #         local_adg_auto_failover_max_data_loss_limit: 1,
    #         remote_disaster_recovery_configuration: {
    #           disaster_recovery_type: "ADG" # One of: ["ADG", "BACKUP_BASED"],
    #           is_replicate_automatic_backups: false,
    #           is_snapshot_standby: false,
    #           time_snapshot_standby_enabled_till: Time.now
    #         },
    #         is_refreshable_clone: false,
    #         refreshable_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         refreshable_status: "REFRESHING" # One of: ["REFRESHING", "NOT_REFRESHING"],
    #         auto_refresh_frequency_in_seconds: 1,
    #         auto_refresh_point_lag_in_seconds: 1,
    #         is_reconnect_clone_enabled: false,
    #         clone_table_space_list: [1],
    #         backup_retention_period_in_days: 1,
    #         long_term_backup_schedule: {
    #           is_disabled: false,
    #           repeat_cadence: "ONE_TIME" # One of: ["ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"],
    #           retention_period_in_days: 1,
    #           time_of_backup: Time.now
    #         },
    #         is_backup_retention_locked: false,
    #         total_backup_storage_size_in_g_bs: 1.0,
    #         resource_pool_summary: {
    #           is_disabled: false,
    #           pool_size: 1,
    #           pool_storage_size_in_t_bs: 1,
    #           available_storage_capacity_in_t_bs: 1.0,
    #           total_compute_capacity: 1,
    #           available_compute_capacity: 1
    #         },
    #         encryption_summary: {
    #           encryption_key_provider: "ORACLE_MANAGED" # One of: ["ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"],
    #           encryption_key_configuration: {
    #             # One of:
    #             aws_encryption_key: {
    #               iam_role_arn: "RoleArn",
    #               external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"],
    #               kms_key_id: "KmsKeyIdOrArn"
    #             },
    #             oci_encryption_key: {
    #               kms_key_id: "String", # required
    #               vault_id: "String", # required
    #             },
    #             okv_encryption_key: {
    #               certificate_directory_name: "String", # required
    #               certificate_id: "String",
    #               directory_name: "String", # required
    #               okv_kms_key: "String", # required
    #               okv_uri: "String", # required
    #             }
    #           }
    #         },
    #         created_at: Time.now,
    #         time_of_last_backup: Time.now,
    #         time_maintenance_begin: Time.now,
    #         time_maintenance_end: Time.now,
    #         time_local_data_guard_enabled: Time.now,
    #         time_data_guard_role_changed: Time.now,
    #         time_of_last_switchover: Time.now,
    #         time_of_last_failover: Time.now,
    #         time_of_last_refresh: Time.now,
    #         time_of_last_refresh_point: Time.now,
    #         time_of_next_refresh: Time.now,
    #         time_of_auto_refresh_start: Time.now,
    #         time_deletion_of_free_autonomous_database: Time.now,
    #         time_reclamation_of_free_autonomous_database: Time.now,
    #         time_disaster_recovery_role_changed: Time.now,
    #         time_until_reconnect_clone_enabled: Time.now,
    #         next_long_term_backup_time_stamp: Time.now,
    #         time_undeleted: Time.now,
    #         admin_password_source_summary: {
    #           admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #           admin_password_source_configuration: {
    #             # One of:
    #             customer_managed_aws_secret: {
    #               iam_role_arn: "RoleArn",
    #               secret_id: "SecretIdOrArn",
    #               external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListAutonomousDatabasesOutput]
    def list_autonomous_databases(params = {}, options = {})
      request = build_request(:list_autonomous_databases, params)
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
    #         odb_network_arn: "ResourceArn",
    #         oci_resource_anchor_name: "String",
    #         percent_progress: 1.0,
    #         display_name: "ResourceDisplayName",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #         cloud_exadata_infrastructure_arn: "ResourceArn",
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
    #         total_container_databases: 1,
    #         iam_roles: [
    #           {
    #             iam_role_arn: "RoleArn",
    #             status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #             status_reason: "String",
    #             aws_integration: "KmsTde" # One of: ["KmsTde"]
    #           }
    #         ]
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
    #         cloud_exadata_infrastructure_arn: "ResourceArn",
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
    #         odb_network_arn: "ResourceArn",
    #         percent_progress: 1.0,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         iam_roles: [
    #           {
    #             iam_role_arn: "RoleArn",
    #             status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #             status_reason: "String",
    #             aws_integration: "KmsTde" # One of: ["KmsTde"]
    #           }
    #         ]
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
    #   <p>The unique identifier of the VM cluster. You must specify either this parameter or <code>exadbVmClusterId</code>.</p>
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster. You must specify either this parameter or <code>cloudVmClusterId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId"
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
    # @option params [String] :shape_family
    #   <p>The shape family to filter results by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     shape_family: "String"
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
    #         shape_attributes: ["SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"]],
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

    # <p>Returns information about the Exascale VM clusters owned by your Amazon Web Services account.</p>
    # @param [Hash, Types::ListExadbVmClustersInput] params
    # @option params [String] :exascale_db_storage_vault_id
    #   <p>The unique identifier of the Exascale storage vault to list the associated Exascale VM clusters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exascale_db_storage_vault_id: "ResourceIdOrArn",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_exadb_vm_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     exadb_vm_clusters: [ # required
    #       {
    #         exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #         cluster_name: "ClusterName",
    #         created_at: Time.now,
    #         data_collection_options: {
    #           is_diagnostics_events_enabled: false,
    #           is_health_monitoring_enabled: false,
    #           is_incident_logs_enabled: false
    #         },
    #         display_name: "ResourceDisplayName",
    #         domain: "String",
    #         enabled_ecpu_count: 1,
    #         exadb_vm_cluster_arn: "ResourceArn",
    #         exascale_db_storage_vault_arn: "ResourceArn",
    #         exascale_db_storage_vault_id: "ResourceIdOrArn",
    #         gi_version: "String",
    #         grid_image_id: "String",
    #         grid_image_type: "RELEASE_UPDATE" # One of: ["RELEASE_UPDATE", "CUSTOM_IMAGE"],
    #         hostname: "Hostname",
    #         iam_roles: [
    #           {
    #             iam_role_arn: "RoleArn",
    #             status: "ASSOCIATING" # One of: ["ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"],
    #             status_reason: "String",
    #             aws_integration: "KmsTde" # One of: ["KmsTde"]
    #           }
    #         ],
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
    #         last_update_history_entry_id: "String",
    #         license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #         listener_port: 1,
    #         memory_size_in_g_bs: 1,
    #         node_count: 1,
    #         ocid: "String",
    #         oci_resource_anchor_name: "String",
    #         oci_url: "String",
    #         odb_network_arn: "ResourceArn",
    #         odb_network_id: "ResourceIdOrArn",
    #         percent_progress: 1.0,
    #         scan_dns_name: "String",
    #         scan_dns_record_id: "String",
    #         scan_ip_ids: ["String"],
    #         scan_listener_port_tcp: 1,
    #         scan_listener_port_tcp_ssl: 1,
    #         shape: "String",
    #         shape_attribute: "SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"],
    #         snapshot_file_system_storage: {
    #           total_size_in_g_bs: 1
    #         },
    #         ssh_public_keys: ["String"],
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         system_version: "String",
    #         time_zone: "String",
    #         total_ecpu_count: 1,
    #         total_file_system_storage: {
    #           total_size_in_g_bs: 1
    #         },
    #         vip_ids: ["String"],
    #         vm_file_system_storage: {
    #           total_size_in_g_bs: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListExadbVmClustersOutput]
    def list_exadb_vm_clusters(params = {}, options = {})
      request = build_request(:list_exadb_vm_clusters, params)
      request.send_request(options)
    end

    # <p>Returns information about the Exascale storage vaults owned by your Amazon Web Services account.</p>
    # @param [Hash, Types::ListExascaleDbStorageVaultsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_exascale_db_storage_vaults(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     exascale_db_storage_vaults: [ # required
    #       {
    #         exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #         additional_flash_cache_in_percent: 1,
    #         attached_shape_attributes: ["SMART_STORAGE" # One of: ["SMART_STORAGE", "BLOCK_STORAGE"]],
    #         autoscale_limit_in_g_bs: 1,
    #         availability_zone: "String",
    #         availability_zone_id: "String",
    #         created_at: Time.now,
    #         description: "String",
    #         display_name: "String",
    #         vm_cluster_arns: ["ResourceArn"],
    #         vm_cluster_count: 1,
    #         vm_cluster_ids: ["ResourceId"],
    #         exascale_db_storage_vault_arn: "ResourceArn",
    #         high_capacity_database_storage: {
    #           available_size_in_g_bs: 1,
    #           total_size_in_g_bs: 1
    #         },
    #         is_autoscale_enabled: false,
    #         ocid: "String",
    #         oci_resource_anchor_name: "String",
    #         oci_url: "String",
    #         percent_progress: 1.0,
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #         status_reason: "String",
    #         time_zone: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListExascaleDbStorageVaultsOutput]
    def list_exascale_db_storage_vaults(params = {}, options = {})
      request = build_request(:list_exascale_db_storage_vaults, params)
      request.send_request(options)
    end

    # <p>Returns information about the flex components that are available for an Exadata infrastructure.</p>
    # @param [Hash, Types::ListFlexComponentsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :shape
    #   <p>The shape to return flex components for. For a list of valid shapes, use the <code>ListDbSystemShapes</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     shape: "String"
    #   }
    #   options = {}
    #   response = client.list_flex_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     flex_components: [ # required
    #       {
    #         available_core_count: 1,
    #         available_db_storage_in_g_bs: 1,
    #         available_local_storage_in_g_bs: 1,
    #         available_memory_in_g_bs: 1,
    #         compute_model: "ECPU" # One of: ["ECPU", "OCPU"],
    #         description_summary: "String",
    #         hardware_type: "COMPUTE" # One of: ["COMPUTE", "CELL"],
    #         minimum_core_count: 1,
    #         name: "String",
    #         runtime_minimum_core_count: 1,
    #         shape: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListFlexComponentsOutput]
    def list_flex_components(params = {}, options = {})
      request = build_request(:list_flex_components, params)
      request.send_request(options)
    end

    # <p>Returns a list of the Oracle Grid Infrastructure (GI) minor versions for the specified major version.</p>
    # @param [Hash, Types::ListGiMinorVersionsInput] params
    # @option params [String] :gi_version
    #   <p>The Oracle Grid Infrastructure (GI) major version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.</p>
    # @option params [String] :shape_family
    #   <p>The shape family for the GI minor version.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone to filter GI minor versions.</p>
    # @option params [String] :availability_zone_id
    #   <p>The Availability Zone ID to filter GI minor versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gi_version: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     shape_family: "String",
    #     availability_zone: "String",
    #     availability_zone_id: "String"
    #   }
    #   options = {}
    #   response = client.list_gi_minor_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     gi_minor_versions: [ # required
    #       {
    #         version: "String", # required
    #         grid_image_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListGiMinorVersionsOutput]
    def list_gi_minor_versions(params = {}, options = {})
      request = build_request(:list_gi_minor_versions, params)
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
    #           },
    #           sts_access: {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #             ipv4_addresses: ["String"],
    #             domain_name: "String",
    #             sts_policy_document: "String"
    #           },
    #           kms_access: {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"],
    #             ipv4_addresses: ["String"],
    #             domain_name: "String",
    #             kms_policy_document: "String"
    #           },
    #           cross_region_s3_restore_sources_access: [
    #             {
    #               region: "String",
    #               ipv4_addresses: ["String"],
    #               status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #             }
    #           ]
    #         },
    #         ec2_placement_group_ids: ["ResourceId"]
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
    #         peer_network_cidrs: ["PeeredCidr"],
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

    # <p>Reboots the specified Autonomous Database.</p>
    # @param [Hash, Types::RebootAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to reboot.</p>
    # @option params [Boolean] :is_online_reboot
    #   <p>Specifies whether to perform an online reboot of the Autonomous Database without interrupting active connections.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     is_online_reboot: false
    #   }
    #   options = {}
    #   response = client.reboot_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::RebootAutonomousDatabaseOutput]
    def reboot_autonomous_database(params = {}, options = {})
      request = build_request(:reboot_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Reboots the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::RebootDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to reboot. You must specify either this parameter or <code>exadbVmClusterId</code>.</p>
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster that contains the DB node to reboot. You must specify either this parameter or <code>cloudVmClusterId</code>.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to reboot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
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

    # <p>Restores the specified Autonomous Database to a point in time.</p>
    # @param [Hash, Types::RestoreAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to restore.</p>
    # @option params [Time] :timestamp
    #   <p>The date and time to which to restore the Autonomous Database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     timestamp: Time.now, # required
    #   }
    #   options = {}
    #   response = client.restore_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::RestoreAutonomousDatabaseOutput]
    def restore_autonomous_database(params = {}, options = {})
      request = build_request(:restore_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Shrinks the storage of the specified Autonomous Database to reclaim unused space.</p>
    # @param [Hash, Types::ShrinkAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to shrink.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.shrink_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::ShrinkAutonomousDatabaseOutput]
    def shrink_autonomous_database(params = {}, options = {})
      request = build_request(:shrink_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Starts the specified Autonomous Database.</p>
    # @param [Hash, Types::StartAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.start_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::StartAutonomousDatabaseOutput]
    def start_autonomous_database(params = {}, options = {})
      request = build_request(:start_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Starts the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::StartDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to start. You must specify either this parameter or <code>exadbVmClusterId</code>.</p>
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster that contains the DB node to start. You must specify either this parameter or <code>cloudVmClusterId</code>.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
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

    # <p>Stops the specified Autonomous Database.</p>
    # @param [Hash, Types::StopAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.stop_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::StopAutonomousDatabaseOutput]
    def stop_autonomous_database(params = {}, options = {})
      request = build_request(:stop_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Stops the specified DB node in a VM cluster.</p>
    # @param [Hash, Types::StopDbNodeInput] params
    # @option params [String] :cloud_vm_cluster_id
    #   <p>The unique identifier of the VM cluster that contains the DB node to stop. You must specify either this parameter or <code>exadbVmClusterId</code>.</p>
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster that contains the DB node to stop. You must specify either this parameter or <code>cloudVmClusterId</code>.</p>
    # @option params [String] :db_node_id
    #   <p>The unique identifier of the DB node to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
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

    # <p>Performs a switchover of the specified Autonomous Database to a standby peer database.</p>
    # @param [Hash, Types::SwitchoverAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to switch over.</p>
    # @option params [String] :peer_db_arn
    #   <p>The Amazon Resource Name (ARN) of the peer Autonomous Database to switch over to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     peer_db_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.switchover_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::SwitchoverAutonomousDatabaseOutput]
    def switchover_autonomous_database(params = {}, options = {})
      request = build_request(:switchover_autonomous_database, params)
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

    # <p>Updates the properties of an Autonomous Database.</p>
    # @param [Hash, Types::UpdateAutonomousDatabaseInput] params
    # @option params [String] :autonomous_database_id
    #   <p>The unique identifier of the Autonomous Database to update.</p>
    # @option params [String] :admin_password
    #   <p>The new password for the <code>ADMIN</code> user of the Autonomous Database.</p>
    # @option params [Float] :compute_count
    #   <p>The compute capacity, in number of ECPUs or OCPUs, to assign to the Autonomous Database.</p>
    # @option params [Integer] :cpu_core_count
    #   <p>The number of CPU cores to allocate to the Autonomous Database.</p>
    # @option params [Integer] :data_storage_size_in_t_bs
    #   <p>The size, in terabytes (TB), of the data volume to allocate for the Autonomous Database.</p>
    # @option params [Integer] :data_storage_size_in_g_bs
    #   <p>The size, in gigabytes (GB), of the data volume to allocate for the Autonomous Database.</p>
    # @option params [String] :display_name
    #   <p>The new user-friendly name for the Autonomous Database.</p>
    # @option params [String] :db_name
    #   <p>The new name of the Autonomous Database.</p>
    # @option params [String] :db_version
    #   <p>The Oracle Database software version to use for the Autonomous Database.</p>
    # @option params [String] :db_workload
    #   <p>The intended use of the Autonomous Database, such as transaction processing, data warehouse, JSON database, or APEX.</p>
    # @option params [Array<Types::DatabaseTool>] :db_tools_details
    #   <p>The list of database management tools to enable for the Autonomous Database.</p>
    # @option params [String] :database_edition
    #   <p>The Oracle Database edition to apply to the Autonomous Database.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the Autonomous Database.</p>
    # @option params [Boolean] :is_auto_scaling_enabled
    #   <p>Specifies whether to enable automatic scaling of the compute resources for the Autonomous Database.</p>
    # @option params [Boolean] :is_auto_scaling_for_storage_enabled
    #   <p>Specifies whether to enable automatic scaling of the storage for the Autonomous Database.</p>
    # @option params [Boolean] :is_backup_retention_locked
    #   <p>Specifies whether to lock the backup retention period of the Autonomous Database to prevent it from being shortened.</p>
    # @option params [Boolean] :is_local_data_guard_enabled
    #   <p>Specifies whether to enable local Oracle Data Guard for the Autonomous Database.</p>
    # @option params [Boolean] :is_mtls_connection_required
    #   <p>Specifies whether mutual TLS (mTLS) authentication is required to connect to the Autonomous Database.</p>
    # @option params [Boolean] :is_refreshable_clone
    #   <p>Specifies whether the Autonomous Database is a refreshable clone.</p>
    # @option params [Boolean] :is_disconnect_peer
    #   <p>Specifies whether to disconnect the Autonomous Database from its peer database.</p>
    # @option params [Integer] :backup_retention_period_in_days
    #   <p>The retention period, in days, for automatic backups of the Autonomous Database.</p>
    # @option params [Float] :byol_compute_count_limit
    #   <p>The maximum number of compute resources that you can allocate to the Autonomous Database under the bring-your-own-license (BYOL) model.</p>
    # @option params [Integer] :local_adg_auto_failover_max_data_loss_limit
    #   <p>The maximum data loss limit, in seconds, for automatic failover to the local Oracle Data Guard standby database.</p>
    # @option params [String] :autonomous_maintenance_schedule_type
    #   <p>The maintenance schedule type for the Autonomous Database.</p>
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   <p>The list of customer contacts to receive operational notifications from OCI for the Autonomous Database.</p>
    # @option params [Array<Types::ScheduledOperationDetails>] :scheduled_operations
    #   <p>The list of scheduled start and stop times for the Autonomous Database.</p>
    # @option params [Types::LongTermBackupSchedule] :long_term_backup_schedule
    #   <p>The long-term backup schedule for the Autonomous Database.</p>
    # @option params [String] :open_mode
    #   <p>The mode in which to open the Autonomous Database, either read-only or read/write.</p>
    # @option params [String] :permission_level
    #   <p>The permission level of the Autonomous Database.</p>
    # @option params [String] :refreshable_mode
    #   <p>The refresh mode of the refreshable clone Autonomous Database.</p>
    # @option params [String] :private_endpoint_ip
    #   <p>The private endpoint IP address for the Autonomous Database.</p>
    # @option params [String] :private_endpoint_label
    #   <p>The private endpoint label for the Autonomous Database.</p>
    # @option params [String] :peer_db_id
    #   <p>The unique identifier of the peer Autonomous Database.</p>
    # @option params [String] :resource_pool_leader_id
    #   <p>The unique identifier of the resource pool leader Autonomous Database.</p>
    # @option params [Types::ResourcePoolSummary] :resource_pool_summary
    #   <p>The configuration of the resource pool for the Autonomous Database.</p>
    # @option params [String] :standby_allowlisted_ips_source
    #   <p>The source of the allowlisted IP addresses for the standby Autonomous Database.</p>
    # @option params [Array<String>] :standby_allowlisted_ips
    #   <p>The list of IP addresses that are allowed to access the standby Autonomous Database.</p>
    # @option params [Array<String>] :allowlisted_ips
    #   <p>The list of IP addresses that are allowed to access the Autonomous Database.</p>
    # @option params [Integer] :auto_refresh_frequency_in_seconds
    #   <p>The frequency, in seconds, at which the refreshable clone Autonomous Database is automatically refreshed.</p>
    # @option params [Integer] :auto_refresh_point_lag_in_seconds
    #   <p>The time lag, in seconds, between the refreshable clone and its source Autonomous Database.</p>
    # @option params [Time] :time_of_auto_refresh_start
    #   <p>The date and time at which the automatic refresh of the refreshable clone Autonomous Database starts.</p>
    # @option params [String] :encryption_key_provider
    #   <p>The provider of the encryption key to use for the Autonomous Database.</p>
    # @option params [Types::EncryptionKeyConfigurationInput] :encryption_key_configuration
    #   <p>The configuration of the encryption key to use for the Autonomous Database.</p>
    # @option params [String] :admin_password_source
    #   <p>The source of the admin password for the Autonomous Database. When set to <code>CUSTOMER_MANAGED_AWS_SECRET</code>, the admin password is retrieved from an Amazon Web Services Secrets Manager secret.</p>
    # @option params [Types::AdminPasswordSourceConfigurationInput] :admin_password_source_configuration
    #   <p>The configuration of the admin password source for the Autonomous Database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     admin_password: "SensitiveString",
    #     compute_count: 1.0,
    #     cpu_core_count: 1,
    #     data_storage_size_in_t_bs: 1,
    #     data_storage_size_in_g_bs: 1,
    #     display_name: "ResourceDisplayName",
    #     db_name: "String",
    #     db_version: "String",
    #     db_workload: "OLTP" # One of: ["OLTP", "AJD", "APEX", "LH"],
    #     db_tools_details: [
    #       {
    #         is_enabled: false,
    #         name: "String",
    #         compute_count: 1.0,
    #         max_idle_time_in_minutes: 1
    #       }
    #     ],
    #     database_edition: "STANDARD_EDITION" # One of: ["STANDARD_EDITION", "ENTERPRISE_EDITION"],
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     is_auto_scaling_enabled: false,
    #     is_auto_scaling_for_storage_enabled: false,
    #     is_backup_retention_locked: false,
    #     is_local_data_guard_enabled: false,
    #     is_mtls_connection_required: false,
    #     is_refreshable_clone: false,
    #     is_disconnect_peer: false,
    #     backup_retention_period_in_days: 1,
    #     byol_compute_count_limit: 1.0,
    #     local_adg_auto_failover_max_data_loss_limit: 1,
    #     autonomous_maintenance_schedule_type: "EARLY" # One of: ["EARLY", "REGULAR"],
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "SensitiveString"
    #       }
    #     ],
    #     scheduled_operations: [
    #       {
    #         day_of_week: { # required
    #           name: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #         },
    #         scheduled_start_time: "String",
    #         scheduled_stop_time: "String"
    #       }
    #     ],
    #     long_term_backup_schedule: {
    #       is_disabled: false,
    #       repeat_cadence: "ONE_TIME" # One of: ["ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"],
    #       retention_period_in_days: 1,
    #       time_of_backup: Time.now
    #     },
    #     open_mode: "READ_ONLY" # One of: ["READ_ONLY", "READ_WRITE"],
    #     permission_level: "RESTRICTED" # One of: ["RESTRICTED", "UNRESTRICTED"],
    #     refreshable_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #     private_endpoint_ip: "String",
    #     private_endpoint_label: "String",
    #     peer_db_id: "ResourceIdOrArn",
    #     resource_pool_leader_id: "ResourceIdOrArn",
    #     resource_pool_summary: {
    #       is_disabled: false,
    #       pool_size: 1,
    #       pool_storage_size_in_t_bs: 1,
    #       available_storage_capacity_in_t_bs: 1.0,
    #       total_compute_capacity: 1,
    #       available_compute_capacity: 1
    #     },
    #     standby_allowlisted_ips_source: "PRIMARY" # One of: ["PRIMARY", "SEPARATE", "NOT_APPLICABLE"],
    #     standby_allowlisted_ips: ["String"],
    #     allowlisted_ips: ["String"],
    #     auto_refresh_frequency_in_seconds: 1,
    #     auto_refresh_point_lag_in_seconds: 1,
    #     time_of_auto_refresh_start: Time.now,
    #     encryption_key_provider: "ORACLE_MANAGED" # One of: ["ORACLE_MANAGED", "AWS_KMS"],
    #     encryption_key_configuration: {
    #       # One of:
    #       aws_encryption_key: {
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"],
    #         kms_key_id: "KmsKeyIdOrArn"
    #       }
    #     },
    #     admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET" # One of: ["CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"],
    #     admin_password_source_configuration: {
    #       # One of:
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid" # One of: ["database_ocid", "compartment_ocid", "tenant_ocid"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_autonomous_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     autonomous_database_id: "String", # required
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"],
    #     status_reason: "String"
    #   }
    # @return [Types::UpdateAutonomousDatabaseOutput]
    def update_autonomous_database(params = {}, options = {})
      request = build_request(:update_autonomous_database, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an Autonomous Database backup.</p>
    # @param [Hash, Types::UpdateAutonomousDatabaseBackupInput] params
    # @option params [String] :autonomous_database_backup_id
    #   <p>The unique identifier of the Autonomous Database backup to update.</p>
    # @option params [Integer] :retention_period_in_days
    #   <p>The retention period, in days, for the Autonomous Database backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     autonomous_database_backup_id: "ResourceId", # required
    #     retention_period_in_days: 1
    #   }
    #   options = {}
    #   response = client.update_autonomous_database_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     autonomous_database_backup_id: "String", # required
    #   }
    # @return [Types::UpdateAutonomousDatabaseBackupOutput]
    def update_autonomous_database_backup(params = {}, options = {})
      request = build_request(:update_autonomous_database_backup, params)
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

    # <p>Updates the specified Exascale VM cluster.</p>
    # @param [Hash, Types::UpdateExadbVmClusterInput] params
    # @option params [String] :exadb_vm_cluster_id
    #   <p>The unique identifier of the Exascale VM cluster to update.</p>
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   <p>The set of preferences for the various diagnostic collection options for the Exascale VM cluster.</p>
    # @option params [String] :display_name
    #   <p>A new user-friendly name for the Exascale VM cluster.</p>
    # @option params [Integer] :enabled_ecpu_count
    #   <p>The number of ECPUs to enable for the Exascale VM cluster.</p>
    # @option params [String] :grid_image_id
    #   <p>The Grid Infrastructure software image ID for the Exascale VM cluster.</p>
    # @option params [String] :license_model
    #   <p>The Oracle license model to apply to the Exascale VM cluster.</p>
    # @option params [Array<String>] :ssh_public_keys
    #   <p>The public key portion of one or more key pairs used for SSH access to the Exascale VM cluster.</p>
    # @option params [String] :system_version
    #   <p>The version of the operating system of the image for the Exascale VM cluster.</p>
    # @option params [Integer] :total_ecpu_count
    #   <p>The total number of ECPUs for the Exascale VM cluster.</p>
    # @option params [String] :update_action
    #   <p>The update action to perform on the Exascale VM cluster.</p>
    # @option params [Integer] :vm_file_system_storage_total_size_in_g_bs
    #   <p>The total amount of file system storage, in gigabytes (GB), for the Exascale VM cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false
    #     },
    #     display_name: "ResourceDisplayName",
    #     enabled_ecpu_count: 1,
    #     grid_image_id: "String",
    #     license_model: "BRING_YOUR_OWN_LICENSE" # One of: ["BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"],
    #     ssh_public_keys: ["String"],
    #     system_version: "String",
    #     total_ecpu_count: 1,
    #     update_action: "ROLLING_APPLY" # One of: ["ROLLING_APPLY", "NON_ROLLING_APPLY", "PRECHECK", "ROLLBACK"],
    #     vm_file_system_storage_total_size_in_g_bs: 1
    #   }
    #   options = {}
    #   response = client.update_exadb_vm_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exadb_vm_cluster_id: "String", # required
    #   }
    # @return [Types::UpdateExadbVmClusterOutput]
    def update_exadb_vm_cluster(params = {}, options = {})
      request = build_request(:update_exadb_vm_cluster, params)
      request.send_request(options)
    end

    # <p>Updates the specified Exascale storage vault.</p>
    # @param [Hash, Types::UpdateExascaleDbStorageVaultInput] params
    # @option params [String] :exascale_db_storage_vault_id
    #   <p>The unique identifier of the Exascale storage vault to update.</p>
    # @option params [Integer] :additional_flash_cache_in_percent
    #   <p>The additional flash cache percentage for the Exascale storage vault.</p>
    # @option params [Integer] :autoscale_limit_in_g_bs
    #   <p>The autoscale limit in gigabytes (GB) for the Exascale storage vault.</p>
    # @option params [String] :description
    #   <p>A new description for the Exascale storage vault.</p>
    # @option params [String] :display_name
    #   <p>A new user-friendly name for the Exascale storage vault.</p>
    # @option params [Integer] :high_capacity_database_storage_total_size_in_g_bs
    #   <p>The total size of the high-capacity database storage, in gigabytes (GB), for the Exascale storage vault.</p>
    # @option params [Boolean] :is_autoscale_enabled
    #   <p>Specifies whether autoscaling is enabled for the Exascale storage vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #     additional_flash_cache_in_percent: 1,
    #     autoscale_limit_in_g_bs: 1,
    #     description: "String",
    #     display_name: "ResourceDisplayName",
    #     high_capacity_database_storage_total_size_in_g_bs: 1,
    #     is_autoscale_enabled: false
    #   }
    #   options = {}
    #   response = client.update_exascale_db_storage_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     exascale_db_storage_vault_id: "String", # required
    #   }
    # @return [Types::UpdateExascaleDbStorageVaultOutput]
    def update_exascale_db_storage_vault(params = {}, options = {})
      request = build_request(:update_exascale_db_storage_vault, params)
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
    # @option params [String] :sts_access
    #   <p>The Amazon Web Services Security Token Service (STS) access configuration for the ODB network.</p>
    # @option params [String] :kms_access
    #   <p>The Amazon Web Services Key Management Service (KMS) access configuration for the ODB network.</p>
    # @option params [String] :s3_policy_document
    #   <p>Specifies the updated endpoint policy for Amazon S3 access from the ODB network.</p>
    # @option params [String] :sts_policy_document
    #   <p>The Amazon Web Services Security Token Service (STS) policy document that defines permissions for token service usage within the ODB network.</p>
    # @option params [String] :kms_policy_document
    #   <p>The Amazon Web Services Key Management Service (KMS) policy document that defines permissions for key usage within the ODB network.</p>
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   <p>The cross-Region Amazon S3 restore sources to enable for the ODB network.</p>
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_disable
    #   <p>The cross-Region Amazon S3 restore sources to disable for the ODB network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peered_cidrs_to_be_added: ["String"],
    #     peered_cidrs_to_be_removed: ["String"],
    #     s3_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     zero_etl_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     sts_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     kms_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
    #     cross_region_s3_restore_sources_to_disable: ["String"]
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

    # <p>Modifies the settings of an Oracle Database@Amazon Web Services peering connection. You can update the display name and add or remove CIDR blocks from the peering connection.</p>
    # @param [Hash, Types::UpdateOdbPeeringConnectionInput] params
    # @option params [String] :odb_peering_connection_id
    #   <p>The identifier of the Oracle Database@Amazon Web Services peering connection to update.</p>
    # @option params [String] :display_name
    #   <p>A new display name for the peering connection.</p>
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   <p>A list of CIDR blocks to add to the peering connection. These CIDR blocks define the IP address ranges that can communicate through the peering connection. The CIDR blocks must not overlap with existing CIDR blocks in the Oracle Database@Amazon Web Services network.</p>
    # @option params [Array<String>] :peer_network_cidrs_to_be_removed
    #   <p>A list of CIDR blocks to remove from the peering connection. The CIDR blocks must currently exist in the peering connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     peer_network_cidrs_to_be_removed: ["PeeredCidr"]
    #   }
    #   options = {}
    #   response = client.update_odb_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"],
    #     status_reason: "String",
    #     odb_peering_connection_id: "String", # required
    #   }
    # @return [Types::UpdateOdbPeeringConnectionOutput]
    def update_odb_peering_connection(params = {}, options = {})
      request = build_request(:update_odb_peering_connection, params)
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
