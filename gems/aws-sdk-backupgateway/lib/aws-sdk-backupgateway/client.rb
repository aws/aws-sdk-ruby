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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:backupgateway)

module Aws::BackupGateway
  # An API client for Aws::BackupGateway.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::BackupOnPremisesV20210101
    @identifier = :backupgateway

    add_plugin(::Aws::BackupGateway::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BackupGateway::EndpointProvider)
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

    # <p>Associates a backup gateway with your server. After you complete the association process,
    #       you can back up and restore your VMs through the gateway.</p>
    # @param [Hash, Types::AssociateGatewayToServerOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :server_arn
    #   <p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #     server_arn: "ServerArn", # required
    #   }
    #   options = {}
    #   response = client.associate_gateway_to_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::AssociateGatewayToServerOperationOutput]
    def associate_gateway_to_server(params = {}, options = {})
      request = build_request(:associate_gateway_to_server, params)
      request.send_request(options)
    end

    # <p>Creates a backup gateway. After you create a gateway, you can associate it with a server
    #       using the <code>AssociateGatewayToServer</code> operation.</p>
    # @param [Hash, Types::CreateGatewayOperationInput] params
    # @option params [String] :activation_key
    #   <p>The activation key of the created gateway.</p>
    # @option params [String] :gateway_display_name
    #   <p>The display name of the created gateway.</p>
    # @option params [String] :gateway_type
    #   <p>The type of created gateway.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activation_key: "ActivationKey", # required
    #     gateway_display_name: "Name", # required
    #     gateway_type: "GatewayType", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::CreateGatewayOperationOutput]
    def create_gateway(params = {}, options = {})
      request = build_request(:create_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a backup gateway.</p>
    # @param [Hash, Types::DeleteGatewayOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::DeleteGatewayOperationOutput]
    def delete_gateway(params = {}, options = {})
      request = build_request(:delete_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a hypervisor.</p>
    # @param [Hash, Types::DeleteHypervisorOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #   }
    #   options = {}
    #   response = client.delete_hypervisor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn"
    #   }
    # @return [Types::DeleteHypervisorOperationOutput]
    def delete_hypervisor(params = {}, options = {})
      request = build_request(:delete_hypervisor, params)
      request.send_request(options)
    end

    # <p>Disassociates a backup gateway from the specified server. After the disassociation process
    #       finishes, the gateway can no longer access the virtual machines on the server.</p>
    # @param [Hash, Types::DisassociateGatewayFromServerOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_gateway_from_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::DisassociateGatewayFromServerOperationOutput]
    def disassociate_gateway_from_server(params = {}, options = {})
      request = build_request(:disassociate_gateway_from_server, params)
      request.send_request(options)
    end

    # <p>Retrieves the bandwidth rate limit schedule for a specified gateway. 
    #       By default, gateways do not have bandwidth rate limit schedules, which means 
    #       no bandwidth rate limiting is in effect. Use this to get a gateway's 
    #       bandwidth rate limit schedule.</p>
    # @param [Hash, Types::GetBandwidthRateLimitScheduleOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.get_bandwidth_rate_limit_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn",
    #     bandwidth_rate_limit_intervals: [
    #       {
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         start_hour_of_day: 1, # required
    #         end_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #         end_minute_of_hour: 1, # required
    #         days_of_week: [1], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetBandwidthRateLimitScheduleOperationOutput]
    def get_bandwidth_rate_limit_schedule(params = {}, options = {})
      request = build_request(:get_bandwidth_rate_limit_schedule, params)
      request.send_request(options)
    end

    # <p>By providing the ARN (Amazon Resource Name), this
    #       API returns the gateway.</p>
    # @param [Hash, Types::GetGatewayOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.get_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway: {
    #       gateway_arn: "GatewayArn",
    #       gateway_display_name: "Name",
    #       gateway_type: "GatewayType",
    #       hypervisor_id: "HypervisorId",
    #       last_seen_time: Time.now,
    #       maintenance_start_time: {
    #         day_of_month: 1,
    #         day_of_week: 1,
    #         hour_of_day: 1, # required
    #         minute_of_hour: 1, # required
    #       },
    #       next_update_availability_time: Time.now,
    #       vpc_endpoint: "VpcEndpoint"
    #     }
    #   }
    # @return [Types::GetGatewayOperationOutput]
    def get_gateway(params = {}, options = {})
      request = build_request(:get_gateway, params)
      request.send_request(options)
    end

    # <p>This action requests information about the specified hypervisor to which the gateway will connect. 
    #       A hypervisor is hardware, software, or firmware that creates and manages virtual machines, 
    #       and allocates resources to them.</p>
    # @param [Hash, Types::GetHypervisorOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #   }
    #   options = {}
    #   response = client.get_hypervisor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor: {
    #       host: "Host",
    #       hypervisor_arn: "ServerArn",
    #       kms_key_arn: "KmsKeyArn",
    #       name: "Name",
    #       log_group_arn: "LogGroupArn",
    #       state: "HypervisorState",
    #       last_successful_metadata_sync_time: Time.now,
    #       latest_metadata_sync_status_message: "string",
    #       latest_metadata_sync_status: "SyncMetadataStatus"
    #     }
    #   }
    # @return [Types::GetHypervisorOperationOutput]
    def get_hypervisor(params = {}, options = {})
      request = build_request(:get_hypervisor, params)
      request.send_request(options)
    end

    # <p>This action retrieves the property mappings for the specified hypervisor. 
    #       A hypervisor property mapping displays the relationship of entity properties 
    #       available from the on-premises hypervisor to the properties available in Amazon Web Services.</p>
    # @param [Hash, Types::GetHypervisorPropertyMappingsOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #   }
    #   options = {}
    #   response = client.get_hypervisor_property_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn",
    #     vmware_to_aws_tag_mappings: [
    #       {
    #         vmware_category: "VmwareCategory", # required
    #         vmware_tag_name: "VmwareTagName", # required
    #         aws_tag_key: "TagKey", # required
    #         aws_tag_value: "TagValue", # required
    #       }
    #     ],
    #     iam_role_arn: "IamRoleArn"
    #   }
    # @return [Types::GetHypervisorPropertyMappingsOperationOutput]
    def get_hypervisor_property_mappings(params = {}, options = {})
      request = build_request(:get_hypervisor_property_mappings, params)
      request.send_request(options)
    end

    # <p>By providing the ARN (Amazon Resource Name), this API returns the virtual machine.</p>
    # @param [Hash, Types::GetVirtualMachineOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual machine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_virtual_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_machine: {
    #       host_name: "Name",
    #       hypervisor_id: "string",
    #       name: "Name",
    #       path: "Path",
    #       resource_arn: "ResourceArn",
    #       last_backup_date: Time.now,
    #       vmware_tags: [
    #         {
    #           vmware_category: "VmwareCategory",
    #           vmware_tag_name: "VmwareTagName",
    #           vmware_tag_description: "string"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetVirtualMachineOperationOutput]
    def get_virtual_machine(params = {}, options = {})
      request = build_request(:get_virtual_machine, params)
      request.send_request(options)
    end

    # <p>Connect to a hypervisor by importing its configuration.</p>
    # @param [Hash, Types::ImportHypervisorConfigurationOperationInput] params
    # @option params [String] :name
    #   <p>The name of the hypervisor.</p>
    # @option params [String] :host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    # @option params [String] :username
    #   <p>The username for the hypervisor.</p>
    # @option params [String] :password
    #   <p>The password for the hypervisor.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Key Management Service for the hypervisor.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags of the hypervisor configuration to import.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     host: "Host", # required
    #     username: "Username",
    #     password: "Password",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_hypervisor_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn"
    #   }
    # @return [Types::ImportHypervisorConfigurationOperationOutput]
    def import_hypervisor_configuration(params = {}, options = {})
      request = build_request(:import_hypervisor_configuration, params)
      request.send_request(options)
    end

    # <p>Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region. The returned list is ordered by gateway Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListGatewaysOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of gateways to list.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateways: [
    #       {
    #         gateway_arn: "GatewayArn",
    #         gateway_display_name: "Name",
    #         gateway_type: "GatewayType",
    #         hypervisor_id: "HypervisorId",
    #         last_seen_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGatewaysOperationOutput]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p>Lists your hypervisors.</p>
    # @param [Hash, Types::ListHypervisorsOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of hypervisors to list.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_hypervisors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisors: [
    #       {
    #         host: "Host",
    #         hypervisor_arn: "ServerArn",
    #         kms_key_arn: "KmsKeyArn",
    #         name: "Name",
    #         state: "HypervisorState"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHypervisorsOperationOutput]
    def list_hypervisors(params = {}, options = {})
      request = build_request(:list_hypervisors, params)
      request.send_request(options)
    end

    # <p>Lists the tags applied to the resource identified by its Amazon Resource Name
    #       (ARN).</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists your virtual machines.</p>
    # @param [Hash, Types::ListVirtualMachinesOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor connected to your virtual machine.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of virtual machines to list.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_virtual_machines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_machines: [
    #       {
    #         host_name: "Name",
    #         hypervisor_id: "string",
    #         name: "Name",
    #         path: "Path",
    #         resource_arn: "ResourceArn",
    #         last_backup_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVirtualMachinesOperationOutput]
    def list_virtual_machines(params = {}, options = {})
      request = build_request(:list_virtual_machines, params)
      request.send_request(options)
    end

    # <p>This action sets the bandwidth rate limit schedule for a specified gateway. 
    #       By default, gateways do not have a bandwidth rate limit schedule, which means 
    #       no bandwidth rate limiting is in effect. Use this to initiate a  
    #       gateway's bandwidth rate limit schedule.</p>
    # @param [Hash, Types::PutBandwidthRateLimitScheduleOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    # @option params [Array<Types::BandwidthRateLimitInterval>] :bandwidth_rate_limit_intervals
    #   <p>An array containing bandwidth rate limit schedule intervals for a gateway. 
    #         When no bandwidth rate limit intervals have been scheduled, the array is empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #     bandwidth_rate_limit_intervals: [ # required
    #       {
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         start_hour_of_day: 1, # required
    #         end_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #         end_minute_of_hour: 1, # required
    #         days_of_week: [1], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_bandwidth_rate_limit_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::PutBandwidthRateLimitScheduleOperationOutput]
    def put_bandwidth_rate_limit_schedule(params = {}, options = {})
      request = build_request(:put_bandwidth_rate_limit_schedule, params)
      request.send_request(options)
    end

    # <p>This action sets the property mappings for the specified hypervisor. 
    #       A hypervisor property mapping displays the relationship of entity properties 
    #       available from the on-premises hypervisor to the properties available in Amazon Web Services.</p>
    # @param [Hash, Types::PutHypervisorPropertyMappingsOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    # @option params [Array<Types::VmwareToAwsTagMapping>] :vmware_to_aws_tag_mappings
    #   <p>This action requests the mappings of on-premises VMware tags to the 
    #         Amazon Web Services tags.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #     vmware_to_aws_tag_mappings: [ # required
    #       {
    #         vmware_category: "VmwareCategory", # required
    #         vmware_tag_name: "VmwareTagName", # required
    #         aws_tag_key: "TagKey", # required
    #         aws_tag_value: "TagValue", # required
    #       }
    #     ],
    #     iam_role_arn: "IamRoleArn", # required
    #   }
    #   options = {}
    #   response = client.put_hypervisor_property_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn"
    #   }
    # @return [Types::PutHypervisorPropertyMappingsOperationOutput]
    def put_hypervisor_property_mappings(params = {}, options = {})
      request = build_request(:put_hypervisor_property_mappings, params)
      request.send_request(options)
    end

    # <p>Set the maintenance start time for a gateway.</p>
    # @param [Hash, Types::PutMaintenanceStartTimeOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start
    #         time.</p>
    # @option params [Integer] :hour_of_day
    #   <p>The hour of the day to start maintenance on a gateway.</p>
    # @option params [Integer] :minute_of_hour
    #   <p>The minute of the hour to start maintenance on a gateway.</p>
    # @option params [Integer] :day_of_week
    #   <p>The day of the week to start maintenance on a gateway.</p>
    # @option params [Integer] :day_of_month
    #   <p>The day of the month start maintenance on a gateway.</p>
    #            <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #     day_of_week: 1,
    #     day_of_month: 1
    #   }
    #   options = {}
    #   response = client.put_maintenance_start_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::PutMaintenanceStartTimeOperationOutput]
    def put_maintenance_start_time(params = {}, options = {})
      request = build_request(:put_maintenance_start_time, params)
      request.send_request(options)
    end

    # <p>This action sends a request to sync metadata across the specified virtual machines.</p>
    # @param [Hash, Types::StartVirtualMachinesMetadataSyncOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #   }
    #   options = {}
    #   response = client.start_virtual_machines_metadata_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn"
    #   }
    # @return [Types::StartVirtualMachinesMetadataSyncOperationOutput]
    def start_virtual_machines_metadata_sync(params = {}, options = {})
      request = build_request(:start_virtual_machines_metadata_sync, params)
      request.send_request(options)
    end

    # <p>Tag the resource.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
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
    #   {
    #     resource_arn: "ResourceArn"
    #   }
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Tests your hypervisor configuration to validate that backup gateway can connect with the
    #       hypervisor and its resources.</p>
    # @param [Hash, Types::TestHypervisorConfigurationOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>
    # @option params [String] :host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    # @option params [String] :username
    #   <p>The username for the hypervisor.</p>
    # @option params [String] :password
    #   <p>The password for the hypervisor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #     host: "Host", # required
    #     username: "Username",
    #     password: "Password"
    #   }
    #   options = {}
    #   response = client.test_hypervisor_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TestHypervisorConfigurationOperationOutput]
    def test_hypervisor_configuration(params = {}, options = {})
      request = build_request(:test_hypervisor_configuration, params)
      request.send_request(options)
    end

    # <p>Removes tags from the resource.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys specifying which tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn"
    #   }
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a gateway's name. Specify which gateway to update using the Amazon Resource Name
    #       (ARN) of the gateway in your request.</p>
    # @param [Hash, Types::UpdateGatewayInformationOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to update.</p>
    # @option params [String] :gateway_display_name
    #   <p>The updated display name of the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #     gateway_display_name: "Name"
    #   }
    #   options = {}
    #   response = client.update_gateway_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::UpdateGatewayInformationOperationOutput]
    def update_gateway_information(params = {}, options = {})
      request = build_request(:update_gateway_information, params)
      request.send_request(options)
    end

    # <p>Updates the gateway virtual machine (VM) software. 
    #       The request immediately triggers the software update.</p>
    #          <note>
    #             <p>When you make this request, you get a <code>200 OK</code>
    #         success response immediately. However, it might take some 
    #         time for the update to complete.</p>
    #          </note>
    # @param [Hash, Types::UpdateGatewaySoftwareNowOperationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.update_gateway_software_now(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn"
    #   }
    # @return [Types::UpdateGatewaySoftwareNowOperationOutput]
    def update_gateway_software_now(params = {}, options = {})
      request = build_request(:update_gateway_software_now, params)
      request.send_request(options)
    end

    # <p>Updates a hypervisor metadata, including its host, username, and password. Specify which
    #       hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in your
    #       request.</p>
    # @param [Hash, Types::UpdateHypervisorOperationInput] params
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>
    # @option params [String] :host
    #   <p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    # @option params [String] :username
    #   <p>The updated username for the hypervisor.</p>
    # @option params [String] :password
    #   <p>The updated password for the hypervisor.</p>
    # @option params [String] :name
    #   <p>The updated name for the hypervisor</p>
    # @option params [String] :log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the group of gateways within the requested log.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hypervisor_arn: "ServerArn", # required
    #     host: "Host",
    #     username: "Username",
    #     password: "Password",
    #     name: "Name",
    #     log_group_arn: "LogGroupArn"
    #   }
    #   options = {}
    #   response = client.update_hypervisor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hypervisor_arn: "ServerArn"
    #   }
    # @return [Types::UpdateHypervisorOperationOutput]
    def update_hypervisor(params = {}, options = {})
      request = build_request(:update_hypervisor, params)
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
      context[:gem_name] = 'aws-sdk-backupgateway'
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
