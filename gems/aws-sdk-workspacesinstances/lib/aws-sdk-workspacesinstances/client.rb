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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:workspacesinstances)

module Aws::WorkspacesInstances
  # An API client for Aws::WorkspacesInstances.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::EUCMIFrontendAPIService
    @identifier = :workspacesinstances

    add_plugin(::Aws::WorkspacesInstances::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WorkspacesInstances::EndpointProvider)
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

    # <p>Attaches a volume to a WorkSpace Instance.</p>
    # @param [Hash, Types::AssociateVolumeRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>WorkSpace Instance to attach volume to.</p>
    # @option params [String] :volume_id
    #   <p>Volume to be attached.</p>
    # @option params [String] :device
    #   <p>Device path for volume attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     volume_id: "VolumeId", # required
    #     device: "DeviceName", # required
    #   }
    #   options = {}
    #   response = client.associate_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateVolumeResponse]
    def associate_volume(params = {}, options = {})
      request = build_request(:associate_volume, params)
      request.send_request(options)
    end

    # <p>Creates a new volume for WorkSpace Instances.</p>
    # @param [Hash, Types::CreateVolumeRequest] params
    # @option params [String] :availability_zone
    #   <p>Availability zone for the volume.</p>
    # @option params [String] :client_token
    #   <p>Unique token to prevent duplicate volume creation.</p>
    # @option params [Boolean] :encrypted
    #   <p>Indicates if the volume should be encrypted.</p>
    # @option params [Integer] :iops
    #   <p>Input/output operations per second for the volume.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key for volume encryption.</p>
    # @option params [Integer] :size_in_gb
    #   <p>Volume size in gigabytes.</p>
    # @option params [String] :snapshot_id
    #   <p>Source snapshot for volume creation.</p>
    # @option params [Array<Types::TagSpecification>] :tag_specifications
    #   <p>Metadata tags for the volume.</p>
    # @option params [Integer] :throughput
    #   <p>Volume throughput performance.</p>
    # @option params [String] :volume_type
    #   <p>Type of EBS volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zone: "String64", # required
    #     client_token: "ClientToken",
    #     encrypted: false,
    #     iops: 1,
    #     kms_key_id: "KmsKeyId",
    #     size_in_gb: 1,
    #     snapshot_id: "SnapshotId",
    #     tag_specifications: [
    #       {
    #         resource_type: "instance" # One of: ["instance", "volume", "spot-instances-request", "network-interface"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     throughput: 1,
    #     volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"]
    #   }
    #   options = {}
    #   response = client.create_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_id: "VolumeId"
    #   }
    # @return [Types::CreateVolumeResponse]
    def create_volume(params = {}, options = {})
      request = build_request(:create_volume, params)
      request.send_request(options)
    end

    # <p>Launches a new WorkSpace Instance with specified configuration parameters, enabling programmatic workspace deployment.</p>
    # @param [Hash, Types::CreateWorkspaceInstanceRequest] params
    # @option params [String] :client_token
    #   <p>Unique token to ensure idempotent instance creation, preventing duplicate workspace launches.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata tags for categorizing and managing WorkSpaces Instances.</p>
    # @option params [Types::ManagedInstanceRequest] :managed_instance
    #   <p>Comprehensive configuration settings for the WorkSpaces Instance, including network, compute, and storage parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     managed_instance: { # required
    #       block_device_mappings: [
    #         {
    #           device_name: "DeviceName",
    #           ebs: {
    #             volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #             encrypted: false,
    #             kms_key_id: "KmsKeyId",
    #             iops: 1,
    #             throughput: 1,
    #             volume_size: 1
    #           },
    #           no_device: "DeviceName",
    #           virtual_name: "VirtualName"
    #         }
    #       ],
    #       capacity_reservation_specification: {
    #         capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "open", "none"],
    #         capacity_reservation_target: {
    #           capacity_reservation_id: "String128",
    #           capacity_reservation_resource_group_arn: "ARN"
    #         }
    #       },
    #       cpu_options: {
    #         amd_sev_snp: "enabled" # One of: ["enabled", "disabled"],
    #         core_count: 1,
    #         threads_per_core: 1
    #       },
    #       credit_specification: {
    #         cpu_credits: "standard" # One of: ["standard", "unlimited"]
    #       },
    #       disable_api_stop: false,
    #       ebs_optimized: false,
    #       enable_primary_ipv6: false,
    #       enclave_options: {
    #         enabled: false
    #       },
    #       hibernation_options: {
    #         configured: false
    #       },
    #       iam_instance_profile: {
    #         arn: "ARN",
    #         name: "String64"
    #       },
    #       image_id: "ImageId",
    #       instance_market_options: {
    #         market_type: "spot" # One of: ["spot", "capacity-block"],
    #         spot_options: {
    #           block_duration_minutes: 1,
    #           instance_interruption_behavior: "hibernate" # One of: ["hibernate", "stop"],
    #           max_price: "String64",
    #           spot_instance_type: "one-time" # One of: ["one-time", "persistent"],
    #           valid_until_utc: Time.now
    #         }
    #       },
    #       instance_type: "InstanceType",
    #       ipv6_addresses: [
    #         {
    #           ipv6_address: "Ipv6Address",
    #           is_primary_ipv6: false
    #         }
    #       ],
    #       ipv6_address_count: 1,
    #       kernel_id: "String128",
    #       key_name: "String64",
    #       license_specifications: [
    #         {
    #           license_configuration_arn: "ARN"
    #         }
    #       ],
    #       maintenance_options: {
    #         auto_recovery: "disabled" # One of: ["disabled", "default"]
    #       },
    #       metadata_options: {
    #         http_endpoint: "enabled" # One of: ["enabled", "disabled"],
    #         http_protocol_ipv6: "enabled" # One of: ["enabled", "disabled"],
    #         http_put_response_hop_limit: 1,
    #         http_tokens: "optional" # One of: ["optional", "required"],
    #         instance_metadata_tags: "enabled" # One of: ["enabled", "disabled"]
    #       },
    #       monitoring: {
    #         enabled: false
    #       },
    #       network_interfaces: [
    #         {
    #           associate_carrier_ip_address: false,
    #           associate_public_ip_address: false,
    #           connection_tracking_specification: {
    #             tcp_established_timeout: 1,
    #             udp_stream_timeout: 1,
    #             udp_timeout: 1
    #           },
    #           description: "Description",
    #           device_index: 1,
    #           ena_srd_specification: {
    #             ena_srd_enabled: false,
    #             ena_srd_udp_specification: {
    #               ena_srd_udp_enabled: false
    #             }
    #           },
    #           interface_type: "interface" # One of: ["interface", "efa", "efa-only"],
    #           ipv4_prefixes: [
    #             {
    #               ipv4_prefix: "Ipv4Prefix"
    #             }
    #           ],
    #           ipv4_prefix_count: 1,
    #           ipv6_address_count: 1,
    #           ipv6_addresses: [
    #             {
    #               ipv6_address: "Ipv6Address",
    #               is_primary_ipv6: false
    #             }
    #           ],
    #           ipv6_prefixes: [
    #             {
    #               ipv6_prefix: "Ipv6Prefix"
    #             }
    #           ],
    #           ipv6_prefix_count: 1,
    #           network_card_index: 1,
    #           network_interface_id: "NetworkInterfaceId",
    #           primary_ipv6: false,
    #           private_ip_address: "Ipv4Address",
    #           private_ip_addresses: [
    #             {
    #               primary: false,
    #               private_ip_address: "Ipv4Address"
    #             }
    #           ],
    #           secondary_private_ip_address_count: 1,
    #           groups: ["SecurityGroupId"],
    #           subnet_id: "SubnetId"
    #         }
    #       ],
    #       network_performance_options: {
    #         bandwidth_weighting: "default" # One of: ["default", "vpc-1", "ebs-1"]
    #       },
    #       placement: {
    #         affinity: "String64",
    #         availability_zone: "AvailabilityZone",
    #         group_id: "PlacementGroupId",
    #         group_name: "String64",
    #         host_id: "HostId",
    #         host_resource_group_arn: "ARN",
    #         partition_number: 1,
    #         tenancy: "default" # One of: ["default", "dedicated", "host"]
    #       },
    #       private_dns_name_options: {
    #         hostname_type: "ip-name" # One of: ["ip-name", "resource-name"],
    #         enable_resource_name_dns_a_record: false,
    #         enable_resource_name_dns_aaaa_record: false
    #       },
    #       private_ip_address: "Ipv4Address",
    #       ramdisk_id: "String128",
    #       security_group_ids: ["SecurityGroupId"],
    #       security_groups: ["SecurityGroupName"],
    #       subnet_id: "SubnetId",
    #       tag_specifications: [
    #         {
    #           resource_type: "instance" # One of: ["instance", "volume", "spot-instances-request", "network-interface"],
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ]
    #         }
    #       ],
    #       user_data: "UserData"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workspace_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_instance_id: "WorkspaceInstanceId"
    #   }
    # @return [Types::CreateWorkspaceInstanceResponse]
    def create_workspace_instance(params = {}, options = {})
      request = build_request(:create_workspace_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a specified volume.</p>
    # @param [Hash, Types::DeleteVolumeRequest] params
    # @option params [String] :volume_id
    #   <p>Identifier of the volume to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_id: "VolumeId", # required
    #   }
    #   options = {}
    #   response = client.delete_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVolumeResponse]
    def delete_volume(params = {}, options = {})
      request = build_request(:delete_volume, params)
      request.send_request(options)
    end

    # <p>Deletes the specified WorkSpace</p>
    # @param [Hash, Types::DeleteWorkspaceInstanceRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>Unique identifier of the WorkSpaces Instance targeted for deletion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkspaceInstanceResponse]
    def delete_workspace_instance(params = {}, options = {})
      request = build_request(:delete_workspace_instance, params)
      request.send_request(options)
    end

    # <p>Detaches a volume from a WorkSpace Instance.</p>
    # @param [Hash, Types::DisassociateVolumeRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>WorkSpace Instance to detach volume from.</p>
    # @option params [String] :volume_id
    #   <p>Volume to be detached.</p>
    # @option params [String] :device
    #   <p>Device path of volume to detach.</p>
    # @option params [String] :disassociate_mode
    #   <p>Mode for volume detachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     volume_id: "VolumeId", # required
    #     device: "DeviceName",
    #     disassociate_mode: "FORCE" # One of: ["FORCE", "NO_FORCE"]
    #   }
    #   options = {}
    #   response = client.disassociate_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateVolumeResponse]
    def disassociate_volume(params = {}, options = {})
      request = build_request(:disassociate_volume, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific WorkSpace Instance.</p>
    # @param [Hash, Types::GetWorkspaceInstanceRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_workspace_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_instance_errors: [
    #       {
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ],
    #     ec2_instance_errors: [
    #       {
    #         ec2_error_code: "String",
    #         ec2_exception_type: "String",
    #         ec2_error_message: "String"
    #       }
    #     ],
    #     provision_state: "ALLOCATING" # One of: ["ALLOCATING", "ALLOCATED", "DEALLOCATING", "DEALLOCATED", "ERROR_ALLOCATING", "ERROR_DEALLOCATING"],
    #     workspace_instance_id: "WorkspaceInstanceId",
    #     ec2_managed_instance: {
    #       instance_id: "String"
    #     }
    #   }
    # @return [Types::GetWorkspaceInstanceResponse]
    def get_workspace_instance(params = {}, options = {})
      request = build_request(:get_workspace_instance, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of instance types supported by Amazon WorkSpaces Instances, enabling precise workspace infrastructure configuration.</p>
    # @param [Hash, Types::ListInstanceTypesRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of instance types to return in a single API call. Enables pagination of instance type results.</p>
    # @option params [String] :next_token
    #   <p>Pagination token for retrieving subsequent pages of instance type results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_types: [ # required
    #       {
    #         instance_type: "InstanceType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstanceTypesResponse]
    def list_instance_types(params = {}, options = {})
      request = build_request(:list_instance_types, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of AWS regions supported by Amazon WorkSpaces Instances, enabling region discovery for workspace deployments.</p>
    # @param [Hash, Types::ListRegionsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of regions to return in a single API call. Enables pagination of region results.</p>
    # @option params [String] :next_token
    #   <p>Pagination token for retrieving subsequent pages of region results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_regions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regions: [ # required
    #       {
    #         region_name: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegionsResponse]
    def list_regions(params = {}, options = {})
      request = build_request(:list_regions, params)
      request.send_request(options)
    end

    # <p>Retrieves tags for a WorkSpace Instance.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves a collection of WorkSpaces Instances based on specified filters.</p>
    # @param [Hash, Types::ListWorkspaceInstancesRequest] params
    # @option params [Array<String>] :provision_states
    #   <p>Filter WorkSpaces Instances by their current provisioning states.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of WorkSpaces Instances to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token for retrieving subsequent pages of WorkSpaces Instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provision_states: ["ALLOCATING" # One of: ["ALLOCATING", "ALLOCATED", "DEALLOCATING", "DEALLOCATED", "ERROR_ALLOCATING", "ERROR_DEALLOCATING"]],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_workspace_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_instances: [ # required
    #       {
    #         provision_state: "ALLOCATING" # One of: ["ALLOCATING", "ALLOCATED", "DEALLOCATING", "DEALLOCATED", "ERROR_ALLOCATING", "ERROR_DEALLOCATING"],
    #         workspace_instance_id: "WorkspaceInstanceId",
    #         ec2_managed_instance: {
    #           instance_id: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkspaceInstancesResponse]
    def list_workspace_instances(params = {}, options = {})
      request = build_request(:list_workspace_instances, params)
      request.send_request(options)
    end

    # <p>Adds tags to a WorkSpace Instance.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to be added to the WorkSpace Instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Removes tags from a WorkSpace Instance.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_instance_id: "WorkspaceInstanceId", # required
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
      context[:gem_name] = 'aws-sdk-workspacesinstances'
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
