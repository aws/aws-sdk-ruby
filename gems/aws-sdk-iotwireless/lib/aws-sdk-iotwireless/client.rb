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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::IoTWireless
  # An API client for Aws::IoTWireless.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Iotwireless

    add_plugin(::Aws::IoTWireless::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::IoTWireless::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates a partner account with your AWS account.</p>
    # @param [Hash, Types::AssociateAwsAccountWithPartnerAccountRequest] params
    # @option params [Types::SidewalkAccountInfo] :sidewalk
    #   <p>The Sidewalk account credentials.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sidewalk: { # required
    #       amazon_id: "AmazonId",
    #       app_server_private_key: "AppServerPrivateKey"
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_aws_account_with_partner_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sidewalk: {
    #       amazon_id: "AmazonId",
    #       app_server_private_key: "AppServerPrivateKey"
    #     },
    #     arn: "PartnerAccountArn"
    #   }
    # @return [Types::AssociateAwsAccountWithPartnerAccountResponse]
    def associate_aws_account_with_partner_account(params = {}, options = {})
      request = build_request(:associate_aws_account_with_partner_account, params)
      request.send_request(options)
    end

    # <p>Associate a multicast group with a FUOTA task.</p>
    # @param [Hash, Types::AssociateMulticastGroupWithFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     multicast_group_id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.associate_multicast_group_with_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMulticastGroupWithFuotaTaskResponse]
    def associate_multicast_group_with_fuota_task(params = {}, options = {})
      request = build_request(:associate_multicast_group_with_fuota_task, params)
      request.send_request(options)
    end

    # <p>Associate a wireless device with a FUOTA task.</p>
    # @param [Hash, Types::AssociateWirelessDeviceWithFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.associate_wireless_device_with_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateWirelessDeviceWithFuotaTaskResponse]
    def associate_wireless_device_with_fuota_task(params = {}, options = {})
      request = build_request(:associate_wireless_device_with_fuota_task, params)
      request.send_request(options)
    end

    # <p>Associates a wireless device with a multicast group.</p>
    # @param [Hash, Types::AssociateWirelessDeviceWithMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.associate_wireless_device_with_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateWirelessDeviceWithMulticastGroupResponse]
    def associate_wireless_device_with_multicast_group(params = {}, options = {})
      request = build_request(:associate_wireless_device_with_multicast_group, params)
      request.send_request(options)
    end

    # <p>Associates a wireless device with a thing.</p>
    # @param [Hash, Types::AssociateWirelessDeviceWithThingRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to associate with the wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #     thing_arn: "ThingArn", # required
    #   }
    #   options = {}
    #   response = client.associate_wireless_device_with_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateWirelessDeviceWithThingResponse]
    def associate_wireless_device_with_thing(params = {}, options = {})
      request = build_request(:associate_wireless_device_with_thing, params)
      request.send_request(options)
    end

    # <p>Associates a wireless gateway with a certificate.</p>
    # @param [Hash, Types::AssociateWirelessGatewayWithCertificateRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :iot_certificate_id
    #   <p>The ID of the certificate to associate with the wireless gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #     iot_certificate_id: "IotCertificateId", # required
    #   }
    #   options = {}
    #   response = client.associate_wireless_gateway_with_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     iot_certificate_id: "IotCertificateId"
    #   }
    # @return [Types::AssociateWirelessGatewayWithCertificateResponse]
    def associate_wireless_gateway_with_certificate(params = {}, options = {})
      request = build_request(:associate_wireless_gateway_with_certificate, params)
      request.send_request(options)
    end

    # <p>Associates a wireless gateway with a thing.</p>
    # @param [Hash, Types::AssociateWirelessGatewayWithThingRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to associate with the wireless gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #     thing_arn: "ThingArn", # required
    #   }
    #   options = {}
    #   response = client.associate_wireless_gateway_with_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateWirelessGatewayWithThingResponse]
    def associate_wireless_gateway_with_thing(params = {}, options = {})
      request = build_request(:associate_wireless_gateway_with_thing, params)
      request.send_request(options)
    end

    # <p>Cancels an existing multicast group session.</p>
    # @param [Hash, Types::CancelMulticastGroupSessionRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.cancel_multicast_group_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelMulticastGroupSessionResponse]
    def cancel_multicast_group_session(params = {}, options = {})
      request = build_request(:cancel_multicast_group_session, params)
      request.send_request(options)
    end

    # <p>Creates a new destination that maps a device message to an AWS IoT rule.</p>
    # @param [Hash, Types::CreateDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    # @option params [String] :expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    # @option params [String] :expression
    #   <p>The rule name or topic rule to send messages to.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new destination. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #     expression_type: "RuleName" # One of: ["RuleName", "MqttTopic"], # required
    #     expression: "Expression", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DestinationArn",
    #     name: "DestinationName"
    #   }
    # @return [Types::CreateDestinationResponse]
    def create_destination(params = {}, options = {})
      request = build_request(:create_destination, params)
      request.send_request(options)
    end

    # <p>Creates a new device profile.</p>
    # @param [Hash, Types::CreateDeviceProfileRequest] params
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [Types::LoRaWANDeviceProfile] :lo_ra_wan
    #   <p>The device profile information to use to create the device profile.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new device profile. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Types::SidewalkCreateDeviceProfile] :sidewalk
    #   <p>The Sidewalk-related information for creating the Sidewalk device profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeviceProfileName",
    #     lo_ra_wan: {
    #       supports_class_b: false,
    #       class_b_timeout: 1,
    #       ping_slot_period: 1,
    #       ping_slot_dr: 1,
    #       ping_slot_freq: 1,
    #       supports_class_c: false,
    #       class_c_timeout: 1,
    #       mac_version: "MacVersion",
    #       reg_params_revision: "RegParamsRevision",
    #       rx_delay1: 1,
    #       rx_dr_offset1: 1,
    #       rx_data_rate2: 1,
    #       rx_freq2: 1,
    #       factory_preset_freqs_list: [1],
    #       max_eirp: 1,
    #       max_duty_cycle: 1,
    #       rf_region: "RfRegion",
    #       supports_join: false,
    #       supports32_bit_f_cnt: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     sidewalk: {
    #     }
    #   }
    #   options = {}
    #   response = client.create_device_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DeviceProfileArn",
    #     id: "DeviceProfileId"
    #   }
    # @return [Types::CreateDeviceProfileResponse]
    def create_device_profile(params = {}, options = {})
      request = build_request(:create_device_profile, params)
      request.send_request(options)
    end

    # <p>Creates a FUOTA task.</p>
    # @param [Hash, Types::CreateFuotaTaskRequest] params
    # @option params [String] :name
    #   <p>The name of a FUOTA task.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Types::LoRaWANFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    # @option params [String] :firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA
    #               task.</p>
    # @option params [String] :firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [Integer] :redundancy_percent
    #   <p>The percentage of the added fragments that are redundant. For example, if the size of
    #               the firmware image file is 100 bytes and the fragment size is 10 bytes, with
    #                   <code>RedundancyPercent</code> set to 50(%), the final number of encoded fragments
    #               is (100 / 10) + (100 / 10 * 50%) = 15.</p>
    # @option params [Integer] :fragment_size_bytes
    #   <p>The size of each fragment in bytes. This parameter is supported only for FUOTA tasks
    #               with multicast groups.</p>
    # @option params [Integer] :fragment_interval_ms
    #   <p>The interval for sending fragments in milliseconds, rounded to the nearest
    #               second.</p>
    #            <note>
    #               <p>This interval only determines the timing for when the Cloud sends down the
    #                   fragments to yor device. There can be a delay for when your device will receive
    #                   these fragments. This delay depends on the device's class and the communication
    #                   delay with the cloud.</p>
    #            </note>
    # @option params [String] :descriptor
    #   <p>The descriptor is the metadata about the file that is transferred to the device using
    #               FUOTA, such as the software version. It is a binary field encoded in base64.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FuotaTaskName",
    #     description: "Description",
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: {
    #       rf_region: "EU868" # One of: ["EU868", "US915", "AU915", "AS923-1", "AS923-2", "AS923-3", "AS923-4", "EU433", "CN470", "CN779", "RU864", "KR920", "IN865"]
    #     },
    #     firmware_update_image: "FirmwareUpdateImage", # required
    #     firmware_update_role: "FirmwareUpdateRole", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     redundancy_percent: 1,
    #     fragment_size_bytes: 1,
    #     fragment_interval_ms: 1,
    #     descriptor: "FileDescriptor"
    #   }
    #   options = {}
    #   response = client.create_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FuotaTaskArn",
    #     id: "FuotaTaskId"
    #   }
    # @return [Types::CreateFuotaTaskResponse]
    def create_fuota_task(params = {}, options = {})
      request = build_request(:create_fuota_task, params)
      request.send_request(options)
    end

    # <p>Creates a multicast group.</p>
    # @param [Hash, Types::CreateMulticastGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the multicast group.</p>
    # @option params [String] :description
    #   <p>The description of the multicast group.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Types::LoRaWANMulticast] :lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MulticastGroupName",
    #     description: "Description",
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: { # required
    #       rf_region: "EU868" # One of: ["EU868", "US915", "AU915", "AS923-1", "AS923-2", "AS923-3", "AS923-4", "EU433", "CN470", "CN779", "RU864", "KR920", "IN865"],
    #       dl_class: "ClassB" # One of: ["ClassB", "ClassC"],
    #       participating_gateways: {
    #         gateway_list: ["WirelessGatewayId"],
    #         transmission_interval: 1
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "MulticastGroupArn",
    #     id: "MulticastGroupId"
    #   }
    # @return [Types::CreateMulticastGroupResponse]
    def create_multicast_group(params = {}, options = {})
      request = build_request(:create_multicast_group, params)
      request.send_request(options)
    end

    # <p>Creates a new network analyzer configuration.</p>
    # @param [Hash, Types::CreateNetworkAnalyzerConfigurationRequest] params
    # @option params [String] :name
    #   <p>Name of the network analyzer configuration.</p>
    # @option params [Types::TraceContent] :trace_content
    #   <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    # @option params [Array<String>] :wireless_devices
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    # @option params [Array<String>] :wireless_gateways
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Array<String>] :multicast_groups
    #   <p>Multicast Group resources to add to the network analyzer configruation. Provide the
    #                   <code>MulticastGroupId</code> of the resource to add in the input array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NetworkAnalyzerConfigurationName", # required
    #     trace_content: {
    #       wireless_device_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"],
    #       multicast_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     wireless_devices: ["WirelessDeviceId"],
    #     wireless_gateways: ["WirelessGatewayId"],
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     multicast_groups: ["MulticastGroupId"]
    #   }
    #   options = {}
    #   response = client.create_network_analyzer_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NetworkAnalyzerConfigurationArn",
    #     name: "NetworkAnalyzerConfigurationName"
    #   }
    # @return [Types::CreateNetworkAnalyzerConfigurationResponse]
    def create_network_analyzer_configuration(params = {}, options = {})
      request = build_request(:create_network_analyzer_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new service profile.</p>
    # @param [Hash, Types::CreateServiceProfileRequest] params
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [Types::LoRaWANServiceProfile] :lo_ra_wan
    #   <p>The service profile information to use to create the service profile.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new service profile. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceProfileName",
    #     lo_ra_wan: {
    #       add_gw_metadata: false,
    #       dr_min: 1,
    #       dr_max: 1,
    #       pr_allowed: false,
    #       ra_allowed: false,
    #       tx_power_index_min: 1,
    #       tx_power_index_max: 1,
    #       nb_trans_min: 1,
    #       nb_trans_max: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_service_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ServiceProfileArn",
    #     id: "ServiceProfileId"
    #   }
    # @return [Types::CreateServiceProfileResponse]
    def create_service_profile(params = {}, options = {})
      request = build_request(:create_service_profile, params)
      request.send_request(options)
    end

    # <p>Provisions a wireless device.</p>
    # @param [Hash, Types::CreateWirelessDeviceRequest] params
    # @option params [String] :type
    #   <p>The wireless device type.</p>
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [String] :destination_name
    #   <p>The name of the destination to assign to the new wireless device.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Types::LoRaWANDevice] :lo_ra_wan
    #   <p>The device configuration information to use to create the wireless device.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new wireless device. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    # @option params [Types::SidewalkCreateWirelessDevice] :sidewalk
    #   <p>The device configuration information to use to create the Sidewalk device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"], # required
    #     name: "WirelessDeviceName",
    #     description: "Description",
    #     destination_name: "DestinationName", # required
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: {
    #       dev_eui: "DevEui",
    #       device_profile_id: "DeviceProfileId",
    #       service_profile_id: "ServiceProfileId",
    #       otaa_v1_1: {
    #         app_key: "AppKey",
    #         nwk_key: "NwkKey",
    #         join_eui: "JoinEui"
    #       },
    #       otaa_v1_0_x: {
    #         app_key: "AppKey",
    #         app_eui: "AppEui",
    #         join_eui: "JoinEui",
    #         gen_app_key: "GenAppKey"
    #       },
    #       abp_v1_1: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           f_nwk_s_int_key: "FNwkSIntKey",
    #           s_nwk_s_int_key: "SNwkSIntKey",
    #           nwk_s_enc_key: "NwkSEncKey",
    #           app_s_key: "AppSKey"
    #         },
    #         f_cnt_start: 1
    #       },
    #       abp_v1_0_x: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           nwk_s_key: "NwkSKey",
    #           app_s_key: "AppSKey"
    #         },
    #         f_cnt_start: 1
    #       },
    #       f_ports: {
    #         fuota: 1,
    #         multicast: 1,
    #         clock_sync: 1,
    #         positioning: {
    #           clock_sync: 1,
    #           stream: 1,
    #           gnss: 1
    #         },
    #         applications: [
    #           {
    #             f_port: 1,
    #             type: "SemtechGeolocation" # One of: ["SemtechGeolocation"],
    #             destination_name: "DestinationName"
    #           }
    #         ]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     positioning: "Enabled" # One of: ["Enabled", "Disabled"],
    #     sidewalk: {
    #       device_profile_id: "DeviceProfileId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WirelessDeviceArn",
    #     id: "WirelessDeviceId"
    #   }
    # @return [Types::CreateWirelessDeviceResponse]
    def create_wireless_device(params = {}, options = {})
      request = build_request(:create_wireless_device, params)
      request.send_request(options)
    end

    # <p>Provisions a wireless gateway.</p>
    #          <note>
    #             <p>When provisioning a wireless gateway, you might run into duplication errors for
    #                 the following reasons.</p>
    #             <ul>
    #                <li>
    #                   <p>If you specify a <code>GatewayEui</code> value that already exists.</p>
    #                </li>
    #                <li>
    #                   <p>If you used a <code>ClientRequestToken</code> with the same parameters
    #                         within the last 10 minutes.</p>
    #                </li>
    #             </ul>
    #             <p>To avoid this error, make sure that you use unique identifiers and parameters for
    #                 each request within the specified time period.</p>
    #          </note>
    # @param [Hash, Types::CreateWirelessGatewayRequest] params
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [Types::LoRaWANGateway] :lo_ra_wan
    #   <p>The gateway configuration information to use to create the wireless gateway.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new wireless gateway. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WirelessGatewayName",
    #     description: "Description",
    #     lo_ra_wan: { # required
    #       gateway_eui: "GatewayEui",
    #       rf_region: "RfRegion",
    #       join_eui_filters: [
    #         ["JoinEui"]
    #       ],
    #       net_id_filters: ["NetId"],
    #       sub_bands: [1],
    #       beaconing: {
    #         data_rate: 1,
    #         frequencies: [1]
    #       },
    #       max_eirp: 1.0
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_wireless_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WirelessGatewayArn",
    #     id: "WirelessDeviceId"
    #   }
    # @return [Types::CreateWirelessGatewayResponse]
    def create_wireless_gateway(params = {}, options = {})
      request = build_request(:create_wireless_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a task for a wireless gateway.</p>
    # @param [Hash, Types::CreateWirelessGatewayTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #     wireless_gateway_task_definition_id: "WirelessGatewayTaskDefinitionId", # required
    #   }
    #   options = {}
    #   response = client.create_wireless_gateway_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wireless_gateway_task_definition_id: "WirelessGatewayTaskDefinitionId",
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #   }
    # @return [Types::CreateWirelessGatewayTaskResponse]
    def create_wireless_gateway_task(params = {}, options = {})
      request = build_request(:create_wireless_gateway_task, params)
      request.send_request(options)
    end

    # <p>Creates a gateway task definition.</p>
    # @param [Hash, Types::CreateWirelessGatewayTaskDefinitionRequest] params
    # @option params [Boolean] :auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with
    #               the specified current version. If <code>false</code>, the task must me created by
    #               calling <code>CreateWirelessGatewayTask</code>.</p>
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    # @option params [Types::UpdateWirelessGatewayTaskCreate] :update
    #   <p>Information about the gateways to update.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_create_tasks: false, # required
    #     name: "WirelessGatewayTaskName",
    #     update: {
    #       update_data_source: "UpdateDataSource",
    #       update_data_role: "UpdateDataSource",
    #       lo_ra_wan: {
    #         update_signature: "UpdateSignature",
    #         sig_key_crc: 1,
    #         current_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station"
    #         },
    #         update_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station"
    #         }
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_wireless_gateway_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "WirelessGatewayTaskDefinitionId",
    #     arn: "WirelessGatewayTaskDefinitionArn"
    #   }
    # @return [Types::CreateWirelessGatewayTaskDefinitionResponse]
    def create_wireless_gateway_task_definition(params = {}, options = {})
      request = build_request(:create_wireless_gateway_task_definition, params)
      request.send_request(options)
    end

    # <p>Deletes a destination.</p>
    # @param [Hash, Types::DeleteDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDestinationResponse]
    def delete_destination(params = {}, options = {})
      request = build_request(:delete_destination, params)
      request.send_request(options)
    end

    # <p>Deletes a device profile.</p>
    # @param [Hash, Types::DeleteDeviceProfileRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_device_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDeviceProfileResponse]
    def delete_device_profile(params = {}, options = {})
      request = build_request(:delete_device_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a FUOTA task.</p>
    # @param [Hash, Types::DeleteFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #   }
    #   options = {}
    #   response = client.delete_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFuotaTaskResponse]
    def delete_fuota_task(params = {}, options = {})
      request = build_request(:delete_fuota_task, params)
      request.send_request(options)
    end

    # <p>Deletes a multicast group if it is not in use by a FUOTA task.</p>
    # @param [Hash, Types::DeleteMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.delete_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMulticastGroupResponse]
    def delete_multicast_group(params = {}, options = {})
      request = build_request(:delete_multicast_group, params)
      request.send_request(options)
    end

    # <p>Deletes a network analyzer configuration.</p>
    # @param [Hash, Types::DeleteNetworkAnalyzerConfigurationRequest] params
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_name: "NetworkAnalyzerConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.delete_network_analyzer_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNetworkAnalyzerConfigurationResponse]
    def delete_network_analyzer_configuration(params = {}, options = {})
      request = build_request(:delete_network_analyzer_configuration, params)
      request.send_request(options)
    end

    # <p>Remove queued messages from the downlink queue.</p>
    # @param [Hash, Types::DeleteQueuedMessagesRequest] params
    # @option params [String] :id
    #   <p>The ID of a given wireless device for which downlink messages will be deleted.</p>
    # @option params [String] :message_id
    #   <p>If message ID is <code>"*"</code>, it cleares the entire downlink queue for a given
    #               device, specified by the wireless device ID. Otherwise, the downlink message with the
    #               specified message ID will be deleted.</p>
    # @option params [String] :wireless_device_type
    #   <p>The wireless device type, which can be either Sidewalk or LoRaWAN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #     message_id: "MessageId", # required
    #     wireless_device_type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"]
    #   }
    #   options = {}
    #   response = client.delete_queued_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueuedMessagesResponse]
    def delete_queued_messages(params = {}, options = {})
      request = build_request(:delete_queued_messages, params)
      request.send_request(options)
    end

    # <p>Deletes a service profile.</p>
    # @param [Hash, Types::DeleteServiceProfileRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_service_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceProfileResponse]
    def delete_service_profile(params = {}, options = {})
      request = build_request(:delete_service_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a wireless device.</p>
    # @param [Hash, Types::DeleteWirelessDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.delete_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWirelessDeviceResponse]
    def delete_wireless_device(params = {}, options = {})
      request = build_request(:delete_wireless_device, params)
      request.send_request(options)
    end

    # <p>Delete an import task.</p>
    # @param [Hash, Types::DeleteWirelessDeviceImportTaskRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the import task to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportTaskId", # required
    #   }
    #   options = {}
    #   response = client.delete_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWirelessDeviceImportTaskResponse]
    def delete_wireless_device_import_task(params = {}, options = {})
      request = build_request(:delete_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>Deletes a wireless gateway.</p>
    #          <note>
    #             <p>When deleting a wireless gateway, you might run into duplication errors for the
    #                 following reasons.</p>
    #             <ul>
    #                <li>
    #                   <p>If you specify a <code>GatewayEui</code> value that already exists.</p>
    #                </li>
    #                <li>
    #                   <p>If you used a <code>ClientRequestToken</code> with the same parameters
    #                         within the last 10 minutes.</p>
    #                </li>
    #             </ul>
    #             <p>To avoid this error, make sure that you use unique identifiers and parameters for
    #                 each request within the specified time period.</p>
    #          </note>
    # @param [Hash, Types::DeleteWirelessGatewayRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.delete_wireless_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWirelessGatewayResponse]
    def delete_wireless_gateway(params = {}, options = {})
      request = build_request(:delete_wireless_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a wireless gateway task.</p>
    # @param [Hash, Types::DeleteWirelessGatewayTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.delete_wireless_gateway_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWirelessGatewayTaskResponse]
    def delete_wireless_gateway_task(params = {}, options = {})
      request = build_request(:delete_wireless_gateway_task, params)
      request.send_request(options)
    end

    # <p>Deletes a wireless gateway task definition. Deleting this task definition does not
    #             affect tasks that are currently in progress.</p>
    # @param [Hash, Types::DeleteWirelessGatewayTaskDefinitionRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayTaskDefinitionId", # required
    #   }
    #   options = {}
    #   response = client.delete_wireless_gateway_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWirelessGatewayTaskDefinitionResponse]
    def delete_wireless_gateway_task_definition(params = {}, options = {})
      request = build_request(:delete_wireless_gateway_task_definition, params)
      request.send_request(options)
    end

    # <p>Deregister a wireless device from AWS IoT Wireless.</p>
    # @param [Hash, Types::DeregisterWirelessDeviceRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the wireless device to deregister from AWS IoT Wireless.</p>
    # @option params [String] :wireless_device_type
    #   <p>The type of wireless device to deregister from AWS IoT Wireless, which can be
    #                   <code>LoRaWAN</code> or <code>Sidewalk</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     wireless_device_type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"]
    #   }
    #   options = {}
    #   response = client.deregister_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterWirelessDeviceResponse]
    def deregister_wireless_device(params = {}, options = {})
      request = build_request(:deregister_wireless_device, params)
      request.send_request(options)
    end

    # <p>Disassociates your AWS account from a partner account. If
    #                 <code>PartnerAccountId</code> and <code>PartnerType</code> are <code>null</code>,
    #             disassociates your AWS account from all partner accounts.</p>
    # @param [Hash, Types::DisassociateAwsAccountFromPartnerAccountRequest] params
    # @option params [String] :partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk" # One of: ["Sidewalk"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_aws_account_from_partner_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAwsAccountFromPartnerAccountResponse]
    def disassociate_aws_account_from_partner_account(params = {}, options = {})
      request = build_request(:disassociate_aws_account_from_partner_account, params)
      request.send_request(options)
    end

    # <p>Disassociates a multicast group from a FUOTA task.</p>
    # @param [Hash, Types::DisassociateMulticastGroupFromFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     multicast_group_id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_multicast_group_from_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMulticastGroupFromFuotaTaskResponse]
    def disassociate_multicast_group_from_fuota_task(params = {}, options = {})
      request = build_request(:disassociate_multicast_group_from_fuota_task, params)
      request.send_request(options)
    end

    # <p>Disassociates a wireless device from a FUOTA task.</p>
    # @param [Hash, Types::DisassociateWirelessDeviceFromFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_wireless_device_from_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWirelessDeviceFromFuotaTaskResponse]
    def disassociate_wireless_device_from_fuota_task(params = {}, options = {})
      request = build_request(:disassociate_wireless_device_from_fuota_task, params)
      request.send_request(options)
    end

    # <p>Disassociates a wireless device from a multicast group.</p>
    # @param [Hash, Types::DisassociateWirelessDeviceFromMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_wireless_device_from_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWirelessDeviceFromMulticastGroupResponse]
    def disassociate_wireless_device_from_multicast_group(params = {}, options = {})
      request = build_request(:disassociate_wireless_device_from_multicast_group, params)
      request.send_request(options)
    end

    # <p>Disassociates a wireless device from its currently associated thing.</p>
    # @param [Hash, Types::DisassociateWirelessDeviceFromThingRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_wireless_device_from_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWirelessDeviceFromThingResponse]
    def disassociate_wireless_device_from_thing(params = {}, options = {})
      request = build_request(:disassociate_wireless_device_from_thing, params)
      request.send_request(options)
    end

    # <p>Disassociates a wireless gateway from its currently associated certificate.</p>
    # @param [Hash, Types::DisassociateWirelessGatewayFromCertificateRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_wireless_gateway_from_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWirelessGatewayFromCertificateResponse]
    def disassociate_wireless_gateway_from_certificate(params = {}, options = {})
      request = build_request(:disassociate_wireless_gateway_from_certificate, params)
      request.send_request(options)
    end

    # <p>Disassociates a wireless gateway from its currently associated thing.</p>
    # @param [Hash, Types::DisassociateWirelessGatewayFromThingRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_wireless_gateway_from_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWirelessGatewayFromThingResponse]
    def disassociate_wireless_gateway_from_thing(params = {}, options = {})
      request = build_request(:disassociate_wireless_gateway_from_thing, params)
      request.send_request(options)
    end

    # <p>Gets information about a destination.</p>
    # @param [Hash, Types::GetDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.get_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DestinationArn",
    #     name: "DestinationName",
    #     expression: "Expression",
    #     expression_type: "RuleName" # One of: ["RuleName", "MqttTopic"],
    #     description: "Description",
    #     role_arn: "RoleArn"
    #   }
    # @return [Types::GetDestinationResponse]
    def get_destination(params = {}, options = {})
      request = build_request(:get_destination, params)
      request.send_request(options)
    end

    # <p>Gets information about a device profile.</p>
    # @param [Hash, Types::GetDeviceProfileRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeviceProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_device_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DeviceProfileArn",
    #     name: "DeviceProfileName",
    #     id: "DeviceProfileId",
    #     lo_ra_wan: {
    #       supports_class_b: false,
    #       class_b_timeout: 1,
    #       ping_slot_period: 1,
    #       ping_slot_dr: 1,
    #       ping_slot_freq: 1,
    #       supports_class_c: false,
    #       class_c_timeout: 1,
    #       mac_version: "MacVersion",
    #       reg_params_revision: "RegParamsRevision",
    #       rx_delay1: 1,
    #       rx_dr_offset1: 1,
    #       rx_data_rate2: 1,
    #       rx_freq2: 1,
    #       factory_preset_freqs_list: [1],
    #       max_eirp: 1,
    #       max_duty_cycle: 1,
    #       rf_region: "RfRegion",
    #       supports_join: false,
    #       supports32_bit_f_cnt: false
    #     },
    #     sidewalk: {
    #       application_server_public_key: "ApplicationServerPublicKey",
    #       qualification_status: false,
    #       dak_certificate_metadata: [
    #         {
    #           certificate_id: "DakCertificateId", # required
    #           max_allowed_signature: 1,
    #           factory_support: false,
    #           ap_id: "ApId",
    #           device_type_id: "DeviceTypeId"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetDeviceProfileResponse]
    def get_device_profile(params = {}, options = {})
      request = build_request(:get_device_profile, params)
      request.send_request(options)
    end

    # <p>Get the event configuration based on resource types.</p>
    # @param [Hash, Types::GetEventConfigurationByResourceTypesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_event_configuration_by_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_registration_state: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     proximity: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         wireless_gateway_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     message_delivery_status: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     }
    #   }
    # @return [Types::GetEventConfigurationByResourceTypesResponse]
    def get_event_configuration_by_resource_types(params = {}, options = {})
      request = build_request(:get_event_configuration_by_resource_types, params)
      request.send_request(options)
    end

    # <p>Gets information about a FUOTA task.</p>
    # @param [Hash, Types::GetFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "FuotaTaskArn",
    #     id: "FuotaTaskId",
    #     status: "Pending" # One of: ["Pending", "FuotaSession_Waiting", "In_FuotaSession", "FuotaDone", "Delete_Waiting"],
    #     name: "FuotaTaskName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       rf_region: "RfRegion",
    #       start_time: Time.now
    #     },
    #     firmware_update_image: "FirmwareUpdateImage",
    #     firmware_update_role: "FirmwareUpdateRole",
    #     created_at: Time.now,
    #     redundancy_percent: 1,
    #     fragment_size_bytes: 1,
    #     fragment_interval_ms: 1,
    #     descriptor: "FileDescriptor"
    #   }
    # @return [Types::GetFuotaTaskResponse]
    def get_fuota_task(params = {}, options = {})
      request = build_request(:get_fuota_task, params)
      request.send_request(options)
    end

    # <p>Returns current default log levels or log levels by resource types. Based on the
    #             resource type, log levels can be returned for wireless device, wireless gateway, or
    #             FUOTA task log options.</p>
    # @param [Hash, Types::GetLogLevelsByResourceTypesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_log_levels_by_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"],
    #     wireless_gateway_log_options: [
    #       {
    #         type: "LoRaWAN" # One of: ["LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "CUPS_Request" # One of: ["CUPS_Request", "Certificate"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     wireless_device_log_options: [
    #       {
    #         type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "Join" # One of: ["Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     fuota_task_log_options: [
    #       {
    #         type: "LoRaWAN" # One of: ["LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "Fuota" # One of: ["Fuota"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetLogLevelsByResourceTypesResponse]
    def get_log_levels_by_resource_types(params = {}, options = {})
      request = build_request(:get_log_levels_by_resource_types, params)
      request.send_request(options)
    end

    # <p>Get the metric configuration status for this AWS account.</p>
    # @param [Hash, Types::GetMetricConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_metric_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_metric: {
    #       status: "Enabled" # One of: ["Enabled", "Disabled"]
    #     }
    #   }
    # @return [Types::GetMetricConfigurationResponse]
    def get_metric_configuration(params = {}, options = {})
      request = build_request(:get_metric_configuration, params)
      request.send_request(options)
    end

    # <p>Get the summary metrics for this AWS account.</p>
    # @param [Hash, Types::GetMetricsRequest] params
    # @option params [Array<Types::SummaryMetricQuery>] :summary_metric_queries
    #   <p>The list of queries to retrieve the summary metrics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     summary_metric_queries: [
    #       {
    #         query_id: "MetricQueryId",
    #         metric_name: "DeviceRSSI" # One of: ["DeviceRSSI", "DeviceSNR", "DeviceRoamingRSSI", "DeviceRoamingSNR", "DeviceUplinkCount", "DeviceDownlinkCount", "DeviceUplinkLostCount", "DeviceUplinkLostRate", "DeviceJoinRequestCount", "DeviceJoinAcceptCount", "DeviceRoamingUplinkCount", "DeviceRoamingDownlinkCount", "GatewayUpTime", "GatewayDownTime", "GatewayRSSI", "GatewaySNR", "GatewayUplinkCount", "GatewayDownlinkCount", "GatewayJoinRequestCount", "GatewayJoinAcceptCount", "AwsAccountUplinkCount", "AwsAccountDownlinkCount", "AwsAccountUplinkLostCount", "AwsAccountUplinkLostRate", "AwsAccountJoinRequestCount", "AwsAccountJoinAcceptCount", "AwsAccountRoamingUplinkCount", "AwsAccountRoamingDownlinkCount", "AwsAccountDeviceCount", "AwsAccountGatewayCount", "AwsAccountActiveDeviceCount", "AwsAccountActiveGatewayCount"],
    #         dimensions: [
    #           {
    #             name: "DeviceId" # One of: ["DeviceId", "GatewayId"],
    #             value: "DimensionValue"
    #           }
    #         ],
    #         aggregation_period: "OneHour" # One of: ["OneHour", "OneDay", "OneWeek"],
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_metric_query_results: [
    #       {
    #         query_id: "MetricQueryId",
    #         query_status: "Succeeded" # One of: ["Succeeded", "Failed"],
    #         error: "MetricQueryError",
    #         metric_name: "DeviceRSSI" # One of: ["DeviceRSSI", "DeviceSNR", "DeviceRoamingRSSI", "DeviceRoamingSNR", "DeviceUplinkCount", "DeviceDownlinkCount", "DeviceUplinkLostCount", "DeviceUplinkLostRate", "DeviceJoinRequestCount", "DeviceJoinAcceptCount", "DeviceRoamingUplinkCount", "DeviceRoamingDownlinkCount", "GatewayUpTime", "GatewayDownTime", "GatewayRSSI", "GatewaySNR", "GatewayUplinkCount", "GatewayDownlinkCount", "GatewayJoinRequestCount", "GatewayJoinAcceptCount", "AwsAccountUplinkCount", "AwsAccountDownlinkCount", "AwsAccountUplinkLostCount", "AwsAccountUplinkLostRate", "AwsAccountJoinRequestCount", "AwsAccountJoinAcceptCount", "AwsAccountRoamingUplinkCount", "AwsAccountRoamingDownlinkCount", "AwsAccountDeviceCount", "AwsAccountGatewayCount", "AwsAccountActiveDeviceCount", "AwsAccountActiveGatewayCount"],
    #         dimensions: [
    #           {
    #             name: "DeviceId" # One of: ["DeviceId", "GatewayId"],
    #             value: "DimensionValue"
    #           }
    #         ],
    #         aggregation_period: "OneHour" # One of: ["OneHour", "OneDay", "OneWeek"],
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #         timestamps: [Time.now],
    #         values: [
    #           {
    #             min: 1.0,
    #             max: 1.0,
    #             sum: 1.0,
    #             avg: 1.0,
    #             std: 1.0,
    #             p90: 1.0
    #           }
    #         ],
    #         unit: "MetricUnit"
    #       }
    #     ]
    #   }
    # @return [Types::GetMetricsResponse]
    def get_metrics(params = {}, options = {})
      request = build_request(:get_metrics, params)
      request.send_request(options)
    end

    # <p>Gets information about a multicast group.</p>
    # @param [Hash, Types::GetMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "MulticastGroupArn",
    #     id: "MulticastGroupId",
    #     name: "MulticastGroupName",
    #     description: "Description",
    #     status: "MulticastGroupStatus",
    #     lo_ra_wan: {
    #       rf_region: "EU868" # One of: ["EU868", "US915", "AU915", "AS923-1", "AS923-2", "AS923-3", "AS923-4", "EU433", "CN470", "CN779", "RU864", "KR920", "IN865"],
    #       dl_class: "ClassB" # One of: ["ClassB", "ClassC"],
    #       number_of_devices_requested: 1,
    #       number_of_devices_in_group: 1,
    #       participating_gateways: {
    #         gateway_list: ["WirelessGatewayId"],
    #         transmission_interval: 1
    #       }
    #     },
    #     created_at: Time.now
    #   }
    # @return [Types::GetMulticastGroupResponse]
    def get_multicast_group(params = {}, options = {})
      request = build_request(:get_multicast_group, params)
      request.send_request(options)
    end

    # <p>Gets information about a multicast group session.</p>
    # @param [Hash, Types::GetMulticastGroupSessionRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_multicast_group_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lo_ra_wan: {
    #       dl_dr: 1,
    #       dl_freq: 1,
    #       session_start_time: Time.now,
    #       session_timeout: 1,
    #       ping_slot_period: 1
    #     }
    #   }
    # @return [Types::GetMulticastGroupSessionResponse]
    def get_multicast_group_session(params = {}, options = {})
      request = build_request(:get_multicast_group_session, params)
      request.send_request(options)
    end

    # <p>Get network analyzer configuration.</p>
    # @param [Hash, Types::GetNetworkAnalyzerConfigurationRequest] params
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_name: "NetworkAnalyzerConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.get_network_analyzer_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trace_content: {
    #       wireless_device_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"],
    #       multicast_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     wireless_devices: ["WirelessDeviceId"],
    #     wireless_gateways: ["WirelessGatewayId"],
    #     description: "Description",
    #     arn: "NetworkAnalyzerConfigurationArn",
    #     name: "NetworkAnalyzerConfigurationName",
    #     multicast_groups: ["MulticastGroupId"]
    #   }
    # @return [Types::GetNetworkAnalyzerConfigurationResponse]
    def get_network_analyzer_configuration(params = {}, options = {})
      request = build_request(:get_network_analyzer_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about a partner account. If <code>PartnerAccountId</code> and
    #                 <code>PartnerType</code> are <code>null</code>, returns all partner accounts.</p>
    # @param [Hash, Types::GetPartnerAccountRequest] params
    # @option params [String] :partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk" # One of: ["Sidewalk"], # required
    #   }
    #   options = {}
    #   response = client.get_partner_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sidewalk: {
    #       amazon_id: "AmazonId",
    #       fingerprint: "Fingerprint",
    #       arn: "PartnerAccountArn"
    #     },
    #     account_linked: false
    #   }
    # @return [Types::GetPartnerAccountResponse]
    def get_partner_account(params = {}, options = {})
      request = build_request(:get_partner_account, params)
      request.send_request(options)
    end

    # <p>Get the position information for a given resource.</p>
    #          <important>
    #             <p>This action is no longer supported. Calls to retrieve the position information
    #                 should use the <a href="https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html">GetResourcePosition</a> API operation instead.</p>
    #          </important>
    # @param [Hash, Types::GetPositionRequest] params
    # @option params [String] :resource_identifier
    #   <p>Resource identifier used to retrieve the position information.</p>
    # @option params [String] :resource_type
    #   <p>Resource type of the resource for which position information is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #   }
    #   options = {}
    #   response = client.get_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     position: [1.0],
    #     accuracy: {
    #       horizontal_accuracy: 1.0,
    #       vertical_accuracy: 1.0
    #     },
    #     solver_type: "GNSS" # One of: ["GNSS"],
    #     solver_provider: "Semtech" # One of: ["Semtech"],
    #     solver_version: "PositionSolverVersion",
    #     timestamp: "ISODateTimeString"
    #   }
    # @deprecated
    #   This operation is no longer supported.
    # @return [Types::GetPositionResponse]
    def get_position(params = {}, options = {})
      request = build_request(:get_position, params)
      request.send_request(options)
    end

    # <p>Get position configuration for a given resource.</p>
    #          <important>
    #             <p>This action is no longer supported. Calls to retrieve the position configuration
    #                 should use the <a href="https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html">GetResourcePosition</a> API operation instead.</p>
    #          </important>
    # @param [Hash, Types::GetPositionConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>Resource identifier used in a position configuration.</p>
    # @option params [String] :resource_type
    #   <p>Resource type of the resource for which position configuration is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #   }
    #   options = {}
    #   response = client.get_position_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solvers: {
    #       semtech_gnss: {
    #         provider: "Semtech" # One of: ["Semtech"],
    #         type: "GNSS" # One of: ["GNSS"],
    #         status: "Enabled" # One of: ["Enabled", "Disabled"],
    #         fec: "ROSE" # One of: ["ROSE", "NONE"]
    #       }
    #     },
    #     destination: "DestinationName"
    #   }
    # @deprecated
    #   This operation is no longer supported.
    # @return [Types::GetPositionConfigurationResponse]
    def get_position_configuration(params = {}, options = {})
      request = build_request(:get_position_configuration, params)
      request.send_request(options)
    end

    # <p>Get estimated position information as a payload in GeoJSON format. The payload
    #             measurement data is resolved using solvers that are provided by third-party
    #             vendors.</p>
    # @param [Hash, Types::GetPositionEstimateRequest] params
    # @option params [Array<Types::WiFiAccessPoint>] :wi_fi_access_points
    #   <p>Retrieves an estimated device position by resolving WLAN measurement data. The
    #               position is resolved using HERE's Wi-Fi based solver.</p>
    # @option params [Types::CellTowers] :cell_towers
    #   <p>Retrieves an estimated device position by resolving measurement data from cellular
    #               radio towers. The position is resolved using HERE's cellular-based solver.</p>
    # @option params [Types::Ip] :ip
    #   <p>Retrieves an estimated device position by resolving the IP address information from
    #               the device. The position is resolved using MaxMind's IP-based solver.</p>
    # @option params [Types::Gnss] :gnss
    #   <p>Retrieves an estimated device position by resolving the global navigation satellite
    #               system (GNSS) scan data. The position is resolved using the GNSS solver powered by LoRa
    #               Cloud.</p>
    # @option params [Time] :timestamp
    #   <p>Optional information that specifies the time when the position information will be
    #               resolved. It uses the Unix timestamp format. If not specified, the time at which the
    #               request was received will be used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wi_fi_access_points: [
    #       {
    #         mac_address: "MacAddress", # required
    #         rss: 1, # required
    #       }
    #     ],
    #     cell_towers: {
    #       gsm: [
    #         {
    #           mcc: 1, # required
    #           mnc: 1, # required
    #           lac: 1, # required
    #           geran_cid: 1, # required
    #           gsm_local_id: {
    #             bsic: 1, # required
    #             bcch: 1, # required
    #           },
    #           gsm_timing_advance: 1,
    #           rx_level: 1,
    #           gsm_nmr: [
    #             {
    #               bsic: 1, # required
    #               bcch: 1, # required
    #               rx_level: 1,
    #               global_identity: {
    #                 lac: 1, # required
    #                 geran_cid: 1, # required
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       wcdma: [
    #         {
    #           mcc: 1, # required
    #           mnc: 1, # required
    #           lac: 1,
    #           utran_cid: 1, # required
    #           wcdma_local_id: {
    #             uarfcndl: 1, # required
    #             psc: 1, # required
    #           },
    #           rscp: 1,
    #           path_loss: 1,
    #           wcdma_nmr: [
    #             {
    #               uarfcndl: 1, # required
    #               psc: 1, # required
    #               utran_cid: 1, # required
    #               rscp: 1,
    #               path_loss: 1
    #             }
    #           ]
    #         }
    #       ],
    #       tdscdma: [
    #         {
    #           mcc: 1, # required
    #           mnc: 1, # required
    #           lac: 1,
    #           utran_cid: 1, # required
    #           tdscdma_local_id: {
    #             uarfcn: 1, # required
    #             cell_params: 1, # required
    #           },
    #           tdscdma_timing_advance: 1,
    #           rscp: 1,
    #           path_loss: 1,
    #           tdscdma_nmr: [
    #             {
    #               uarfcn: 1, # required
    #               cell_params: 1, # required
    #               utran_cid: 1,
    #               rscp: 1,
    #               path_loss: 1
    #             }
    #           ]
    #         }
    #       ],
    #       lte: [
    #         {
    #           mcc: 1, # required
    #           mnc: 1, # required
    #           eutran_cid: 1, # required
    #           tac: 1,
    #           lte_local_id: {
    #             pci: 1, # required
    #             earfcn: 1, # required
    #           },
    #           lte_timing_advance: 1,
    #           rsrp: 1,
    #           rsrq: 1.0,
    #           nr_capable: false,
    #           lte_nmr: [
    #             {
    #               pci: 1, # required
    #               earfcn: 1, # required
    #               eutran_cid: 1,
    #               rsrp: 1,
    #               rsrq: 1.0
    #             }
    #           ]
    #         }
    #       ],
    #       cdma: [
    #         {
    #           system_id: 1, # required
    #           network_id: 1, # required
    #           base_station_id: 1, # required
    #           registration_zone: 1,
    #           cdma_local_id: {
    #             pn_offset: 1, # required
    #             cdma_channel: 1, # required
    #           },
    #           pilot_power: 1,
    #           base_lat: 1.0,
    #           base_lng: 1.0,
    #           cdma_nmr: [
    #             {
    #               pn_offset: 1, # required
    #               cdma_channel: 1, # required
    #               pilot_power: 1,
    #               base_station_id: 1
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     ip: {
    #       ip_address: "IPAddress", # required
    #     },
    #     gnss: {
    #       payload: "GnssNav", # required
    #       capture_time: 1.0,
    #       capture_time_accuracy: 1.0,
    #       assist_position: [1.0],
    #       assist_altitude: 1.0,
    #       use2_d_solver: false
    #     },
    #     timestamp: Time.now
    #   }
    #   options = {}
    #   response = client.get_position_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_json_payload: "data"
    #   }
    # @return [Types::GetPositionEstimateResponse]
    def get_position_estimate(params = {}, options = {})
      request = build_request(:get_position_estimate, params)
      request.send_request(options)
    end

    # <p>Get the event configuration for a particular resource identifier.</p>
    # @param [Hash, Types::GetResourceEventConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    # @option params [String] :identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    # @option params [String] :partner_type
    #   <p>Partner type of the resource if the identifier type is
    #               <code>PartnerAccountId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     identifier_type: "PartnerAccountId" # One of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"], # required
    #     partner_type: "Sidewalk" # One of: ["Sidewalk"]
    #   }
    #   options = {}
    #   response = client.get_resource_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_registration_state: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     proximity: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         dev_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         gateway_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_gateway_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     message_delivery_status: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     }
    #   }
    # @return [Types::GetResourceEventConfigurationResponse]
    def get_resource_event_configuration(params = {}, options = {})
      request = build_request(:get_resource_event_configuration, params)
      request.send_request(options)
    end

    # <p>Fetches the log-level override, if any, for a given resource ID and resource
    #             type..</p>
    # @param [Hash, Types::GetResourceLogLevelRequest] params
    # @option params [String] :resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.get_resource_log_level(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"]
    #   }
    # @return [Types::GetResourceLogLevelResponse]
    def get_resource_log_level(params = {}, options = {})
      request = build_request(:get_resource_log_level, params)
      request.send_request(options)
    end

    # <p>Get the position information for a given wireless device or a wireless gateway
    #             resource. The position information uses the <a href="https://gisgeography.com/wgs84-world-geodetic-system/"> World Geodetic System
    #                 (WGS84)</a>.</p>
    # @param [Hash, Types::GetResourcePositionRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource for which position information is retrieved. It can be
    #               the wireless device ID or the wireless gateway ID, depending on the resource
    #               type.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource for which position information is retrieved, which can be a
    #               wireless device or a wireless gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #   }
    #   options = {}
    #   response = client.get_resource_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_json_payload: "data"
    #   }
    # @return [Types::GetResourcePositionResponse]
    def get_resource_position(params = {}, options = {})
      request = build_request(:get_resource_position, params)
      request.send_request(options)
    end

    # <p>Gets the account-specific endpoint for Configuration and Update Server (CUPS) protocol
    #             or LoRaWAN Network Server (LNS) connections.</p>
    # @param [Hash, Types::GetServiceEndpointRequest] params
    # @option params [String] :service_type
    #   <p>The service type for which to get endpoint information about. Can be <code>CUPS</code>
    #               for the Configuration and Update Server endpoint, or <code>LNS</code> for the LoRaWAN
    #               Network Server endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "CUPS" # One of: ["CUPS", "LNS"]
    #   }
    #   options = {}
    #   response = client.get_service_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_type: "CUPS" # One of: ["CUPS", "LNS"],
    #     service_endpoint: "EndPoint",
    #     server_trust: "CertificatePEM"
    #   }
    # @return [Types::GetServiceEndpointResponse]
    def get_service_endpoint(params = {}, options = {})
      request = build_request(:get_service_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets information about a service profile.</p>
    # @param [Hash, Types::GetServiceProfileRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_service_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ServiceProfileArn",
    #     name: "ServiceProfileName",
    #     id: "ServiceProfileId",
    #     lo_ra_wan: {
    #       ul_rate: 1,
    #       ul_bucket_size: 1,
    #       ul_rate_policy: "UlRatePolicy",
    #       dl_rate: 1,
    #       dl_bucket_size: 1,
    #       dl_rate_policy: "DlRatePolicy",
    #       add_gw_metadata: false,
    #       dev_status_req_freq: 1,
    #       report_dev_status_battery: false,
    #       report_dev_status_margin: false,
    #       dr_min: 1,
    #       dr_max: 1,
    #       channel_mask: "ChannelMask",
    #       pr_allowed: false,
    #       hr_allowed: false,
    #       ra_allowed: false,
    #       nwk_geo_loc: false,
    #       target_per: 1,
    #       min_gw_diversity: 1,
    #       tx_power_index_min: 1,
    #       tx_power_index_max: 1,
    #       nb_trans_min: 1,
    #       nb_trans_max: 1
    #     }
    #   }
    # @return [Types::GetServiceProfileResponse]
    def get_service_profile(params = {}, options = {})
      request = build_request(:get_service_profile, params)
      request.send_request(options)
    end

    # <p>Gets information about a wireless device.</p>
    # @param [Hash, Types::GetWirelessDeviceRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the wireless device to get.</p>
    # @option params [String] :identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     identifier_type: "WirelessDeviceId" # One of: ["WirelessDeviceId", "DevEui", "ThingName", "SidewalkManufacturingSn"], # required
    #   }
    #   options = {}
    #   response = client.get_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"],
    #     name: "WirelessDeviceName",
    #     description: "Description",
    #     destination_name: "DestinationName",
    #     id: "WirelessDeviceId",
    #     arn: "WirelessDeviceArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #     lo_ra_wan: {
    #       dev_eui: "DevEui",
    #       device_profile_id: "DeviceProfileId",
    #       service_profile_id: "ServiceProfileId",
    #       otaa_v1_1: {
    #         app_key: "AppKey",
    #         nwk_key: "NwkKey",
    #         join_eui: "JoinEui"
    #       },
    #       otaa_v1_0_x: {
    #         app_key: "AppKey",
    #         app_eui: "AppEui",
    #         join_eui: "JoinEui",
    #         gen_app_key: "GenAppKey"
    #       },
    #       abp_v1_1: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           f_nwk_s_int_key: "FNwkSIntKey",
    #           s_nwk_s_int_key: "SNwkSIntKey",
    #           nwk_s_enc_key: "NwkSEncKey",
    #           app_s_key: "AppSKey"
    #         },
    #         f_cnt_start: 1
    #       },
    #       abp_v1_0_x: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           nwk_s_key: "NwkSKey",
    #           app_s_key: "AppSKey"
    #         },
    #         f_cnt_start: 1
    #       },
    #       f_ports: {
    #         fuota: 1,
    #         multicast: 1,
    #         clock_sync: 1,
    #         positioning: {
    #           clock_sync: 1,
    #           stream: 1,
    #           gnss: 1
    #         },
    #         applications: [
    #           {
    #             f_port: 1,
    #             type: "SemtechGeolocation" # One of: ["SemtechGeolocation"],
    #             destination_name: "DestinationName"
    #           }
    #         ]
    #       }
    #     },
    #     sidewalk: {
    #       amazon_id: "AmazonId",
    #       sidewalk_id: "SidewalkId",
    #       sidewalk_manufacturing_sn: "SidewalkManufacturingSn",
    #       device_certificates: [
    #         {
    #           signing_alg: "Ed25519" # One of: ["Ed25519", "P256r1"], # required
    #           value: "CertificateValue", # required
    #         }
    #       ],
    #       private_keys: [
    #         {
    #           signing_alg: "Ed25519" # One of: ["Ed25519", "P256r1"], # required
    #           value: "CertificateValue", # required
    #         }
    #       ],
    #       device_profile_id: "DeviceProfileId",
    #       certificate_id: "DakCertificateId",
    #       status: "PROVISIONED" # One of: ["PROVISIONED", "REGISTERED", "ACTIVATED", "UNKNOWN"]
    #     },
    #     positioning: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    # @return [Types::GetWirelessDeviceResponse]
    def get_wireless_device(params = {}, options = {})
      request = build_request(:get_wireless_device, params)
      request.send_request(options)
    end

    # <p>Get information about an import task and count of device onboarding summary
    #             information for the import task.</p>
    # @param [Hash, Types::GetWirelessDeviceImportTaskRequest] params
    # @option params [String] :id
    #   <p>The identifier of the import task for which information is requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportTaskId",
    #     arn: "ImportTaskArn",
    #     destination_name: "DestinationName",
    #     sidewalk: {
    #       device_creation_file_list: ["DeviceCreationFile"],
    #       role: "Role"
    #     },
    #     creation_time: Time.now,
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "INITIALIZED", "PENDING", "COMPLETE", "FAILED", "DELETING"],
    #     status_reason: "StatusReason",
    #     initialized_imported_device_count: 1,
    #     pending_imported_device_count: 1,
    #     onboarded_imported_device_count: 1,
    #     failed_imported_device_count: 1
    #   }
    # @return [Types::GetWirelessDeviceImportTaskResponse]
    def get_wireless_device_import_task(params = {}, options = {})
      request = build_request(:get_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>Gets operating information about a wireless device.</p>
    # @param [Hash, Types::GetWirelessDeviceStatisticsRequest] params
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device for which to get the data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wireless_device_id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_device_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wireless_device_id: "WirelessDeviceId",
    #     last_uplink_received_at: "ISODateTimeString",
    #     lo_ra_wan: {
    #       dev_eui: "DevEui",
    #       f_port: 1,
    #       data_rate: 1,
    #       frequency: 1,
    #       timestamp: "ISODateTimeString",
    #       gateways: [
    #         {
    #           gateway_eui: "GatewayEui",
    #           snr: 1.0,
    #           rssi: 1.0
    #         }
    #       ],
    #       public_gateways: [
    #         {
    #           provider_net_id: "ProviderNetId",
    #           id: "Id",
    #           rssi: 1.0,
    #           snr: 1.0,
    #           rf_region: "RfRegion",
    #           dl_allowed: false
    #         }
    #       ]
    #     },
    #     sidewalk: {
    #       rssi: 1,
    #       battery_level: "normal" # One of: ["normal", "low", "critical"],
    #       event: "discovered" # One of: ["discovered", "lost", "ack", "nack", "passthrough"],
    #       device_state: "Provisioned" # One of: ["Provisioned", "RegisteredNotSeen", "RegisteredReachable", "RegisteredUnreachable"]
    #     }
    #   }
    # @return [Types::GetWirelessDeviceStatisticsResponse]
    def get_wireless_device_statistics(params = {}, options = {})
      request = build_request(:get_wireless_device_statistics, params)
      request.send_request(options)
    end

    # <p>Gets information about a wireless gateway.</p>
    # @param [Hash, Types::GetWirelessGatewayRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the wireless gateway to get.</p>
    # @option params [String] :identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     identifier_type: "GatewayEui" # One of: ["GatewayEui", "WirelessGatewayId", "ThingName"], # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "WirelessGatewayName",
    #     id: "WirelessGatewayId",
    #     description: "Description",
    #     lo_ra_wan: {
    #       gateway_eui: "GatewayEui",
    #       rf_region: "RfRegion",
    #       join_eui_filters: [
    #         ["JoinEui"]
    #       ],
    #       net_id_filters: ["NetId"],
    #       sub_bands: [1],
    #       beaconing: {
    #         data_rate: 1,
    #         frequencies: [1]
    #       },
    #       max_eirp: 1.0
    #     },
    #     arn: "WirelessGatewayArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn"
    #   }
    # @return [Types::GetWirelessGatewayResponse]
    def get_wireless_gateway(params = {}, options = {})
      request = build_request(:get_wireless_gateway, params)
      request.send_request(options)
    end

    # <p>Gets the ID of the certificate that is currently associated with a wireless
    #             gateway.</p>
    # @param [Hash, Types::GetWirelessGatewayCertificateRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     iot_certificate_id: "IotCertificateId",
    #     lo_ra_wan_network_server_certificate_id: "IotCertificateId"
    #   }
    # @return [Types::GetWirelessGatewayCertificateResponse]
    def get_wireless_gateway_certificate(params = {}, options = {})
      request = build_request(:get_wireless_gateway_certificate, params)
      request.send_request(options)
    end

    # <p>Gets the firmware version and other information about a wireless gateway.</p>
    # @param [Hash, Types::GetWirelessGatewayFirmwareInformationRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway_firmware_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lo_ra_wan: {
    #       current_version: {
    #         package_version: "PackageVersion",
    #         model: "Model",
    #         station: "Station"
    #       }
    #     }
    #   }
    # @return [Types::GetWirelessGatewayFirmwareInformationResponse]
    def get_wireless_gateway_firmware_information(params = {}, options = {})
      request = build_request(:get_wireless_gateway_firmware_information, params)
      request.send_request(options)
    end

    # <p>Gets operating information about a wireless gateway.</p>
    # @param [Hash, Types::GetWirelessGatewayStatisticsRequest] params
    # @option params [String] :wireless_gateway_id
    #   <p>The ID of the wireless gateway for which to get the data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wireless_gateway_id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wireless_gateway_id: "WirelessGatewayId",
    #     last_uplink_received_at: "ISODateTimeString",
    #     connection_status: "Connected" # One of: ["Connected", "Disconnected"]
    #   }
    # @return [Types::GetWirelessGatewayStatisticsResponse]
    def get_wireless_gateway_statistics(params = {}, options = {})
      request = build_request(:get_wireless_gateway_statistics, params)
      request.send_request(options)
    end

    # <p>Gets information about a wireless gateway task.</p>
    # @param [Hash, Types::GetWirelessGatewayTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wireless_gateway_id: "WirelessGatewayId",
    #     wireless_gateway_task_definition_id: "WirelessGatewayTaskDefinitionId",
    #     last_uplink_received_at: "ISODateTimeString",
    #     task_created_at: "ISODateTimeString",
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #   }
    # @return [Types::GetWirelessGatewayTaskResponse]
    def get_wireless_gateway_task(params = {}, options = {})
      request = build_request(:get_wireless_gateway_task, params)
      request.send_request(options)
    end

    # <p>Gets information about a wireless gateway task definition.</p>
    # @param [Hash, Types::GetWirelessGatewayTaskDefinitionRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayTaskDefinitionId", # required
    #   }
    #   options = {}
    #   response = client.get_wireless_gateway_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_create_tasks: false,
    #     name: "WirelessGatewayTaskName",
    #     update: {
    #       update_data_source: "UpdateDataSource",
    #       update_data_role: "UpdateDataSource",
    #       lo_ra_wan: {
    #         update_signature: "UpdateSignature",
    #         sig_key_crc: 1,
    #         current_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station"
    #         },
    #         update_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station"
    #         }
    #       }
    #     },
    #     arn: "WirelessGatewayTaskDefinitionArn"
    #   }
    # @return [Types::GetWirelessGatewayTaskDefinitionResponse]
    def get_wireless_gateway_task_definition(params = {}, options = {})
      request = build_request(:get_wireless_gateway_task_definition, params)
      request.send_request(options)
    end

    # <p>Lists the destinations registered to your AWS account.</p>
    # @param [Hash, Types::ListDestinationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     destination_list: [
    #       {
    #         arn: "DestinationArn",
    #         name: "DestinationName",
    #         expression_type: "RuleName" # One of: ["RuleName", "MqttTopic"],
    #         expression: "Expression",
    #         description: "Description",
    #         role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListDestinationsResponse]
    def list_destinations(params = {}, options = {})
      request = build_request(:list_destinations, params)
      request.send_request(options)
    end

    # <p>Lists the device profiles registered to your AWS account.</p>
    # @param [Hash, Types::ListDeviceProfilesRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :device_profile_type
    #   <p>A filter to list only device profiles that use this type, which can be
    #                   <code>LoRaWAN</code> or <code>Sidewalk</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     device_profile_type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"]
    #   }
    #   options = {}
    #   response = client.list_device_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     device_profile_list: [
    #       {
    #         arn: "DeviceProfileArn",
    #         name: "DeviceProfileName",
    #         id: "DeviceProfileId"
    #       }
    #     ]
    #   }
    # @return [Types::ListDeviceProfilesResponse]
    def list_device_profiles(params = {}, options = {})
      request = build_request(:list_device_profiles, params)
      request.send_request(options)
    end

    # <p>List the Sidewalk devices in an import task and their onboarding status.</p>
    # @param [Hash, Types::ListDevicesForWirelessDeviceImportTaskRequest] params
    # @option params [String] :id
    #   <p>The identifier of the import task for which wireless devices are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    # @option params [String] :status
    #   <p>The status of the devices in the import task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportTaskId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "ONBOARDED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_devices_for_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     destination_name: "DestinationName",
    #     imported_wireless_device_list: [
    #       {
    #         sidewalk: {
    #           sidewalk_manufacturing_sn: "SidewalkManufacturingSn",
    #           onboarding_status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "ONBOARDED", "FAILED"],
    #           onboarding_status_reason: "OnboardStatusReason",
    #           last_update_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListDevicesForWirelessDeviceImportTaskResponse]
    def list_devices_for_wireless_device_import_task(params = {}, options = {})
      request = build_request(:list_devices_for_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>List event configurations where at least one event topic has been enabled.</p>
    # @param [Hash, Types::ListEventConfigurationsRequest] params
    # @option params [String] :resource_type
    #   <p>Resource type to filter event configurations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "SidewalkAccount" # One of: ["SidewalkAccount", "WirelessDevice", "WirelessGateway"], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_event_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     event_configurations_list: [
    #       {
    #         identifier: "Identifier",
    #         identifier_type: "PartnerAccountId" # One of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"],
    #         partner_type: "Sidewalk" # One of: ["Sidewalk"],
    #         events: {
    #           device_registration_state: {
    #             sidewalk: {
    #               amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #             },
    #             wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           proximity: {
    #             sidewalk: {
    #               amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #             },
    #             wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           join: {
    #             lo_ra_wan: {
    #               dev_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #             },
    #             wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           connection_status: {
    #             lo_ra_wan: {
    #               gateway_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #             },
    #             wireless_gateway_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           message_delivery_status: {
    #             sidewalk: {
    #               amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #             },
    #             wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListEventConfigurationsResponse]
    def list_event_configurations(params = {}, options = {})
      request = build_request(:list_event_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the FUOTA tasks registered to your AWS account.</p>
    # @param [Hash, Types::ListFuotaTasksRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fuota_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     fuota_task_list: [
    #       {
    #         id: "FuotaTaskId",
    #         arn: "FuotaTaskArn",
    #         name: "FuotaTaskName"
    #       }
    #     ]
    #   }
    # @return [Types::ListFuotaTasksResponse]
    def list_fuota_tasks(params = {}, options = {})
      request = build_request(:list_fuota_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the multicast groups registered to your AWS account.</p>
    # @param [Hash, Types::ListMulticastGroupsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_multicast_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     multicast_group_list: [
    #       {
    #         id: "MulticastGroupId",
    #         arn: "MulticastGroupArn",
    #         name: "MulticastGroupName"
    #       }
    #     ]
    #   }
    # @return [Types::ListMulticastGroupsResponse]
    def list_multicast_groups(params = {}, options = {})
      request = build_request(:list_multicast_groups, params)
      request.send_request(options)
    end

    # <p>List all multicast groups associated with a FUOTA task.</p>
    # @param [Hash, Types::ListMulticastGroupsByFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_multicast_groups_by_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     multicast_group_list: [
    #       {
    #         id: "MulticastGroupId"
    #       }
    #     ]
    #   }
    # @return [Types::ListMulticastGroupsByFuotaTaskResponse]
    def list_multicast_groups_by_fuota_task(params = {}, options = {})
      request = build_request(:list_multicast_groups_by_fuota_task, params)
      request.send_request(options)
    end

    # <p>Lists the network analyzer configurations.</p>
    # @param [Hash, Types::ListNetworkAnalyzerConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_network_analyzer_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     network_analyzer_configuration_list: [
    #       {
    #         arn: "NetworkAnalyzerConfigurationArn",
    #         name: "NetworkAnalyzerConfigurationName"
    #       }
    #     ]
    #   }
    # @return [Types::ListNetworkAnalyzerConfigurationsResponse]
    def list_network_analyzer_configurations(params = {}, options = {})
      request = build_request(:list_network_analyzer_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the partner accounts associated with your AWS account.</p>
    # @param [Hash, Types::ListPartnerAccountsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_partner_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     sidewalk: [
    #       {
    #         amazon_id: "AmazonId",
    #         fingerprint: "Fingerprint",
    #         arn: "PartnerAccountArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListPartnerAccountsResponse]
    def list_partner_accounts(params = {}, options = {})
      request = build_request(:list_partner_accounts, params)
      request.send_request(options)
    end

    # <p>List position configurations for a given resource, such as positioning solvers.</p>
    #          <important>
    #             <p>This action is no longer supported. Calls to retrieve position information should
    #                 use the <a href="https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html">GetResourcePosition</a> API operation instead.</p>
    #          </important>
    # @param [Hash, Types::ListPositionConfigurationsRequest] params
    # @option params [String] :resource_type
    #   <p>Resource type for which position configurations are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_position_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     position_configuration_list: [
    #       {
    #         resource_identifier: "PositionResourceIdentifier",
    #         resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"],
    #         solvers: {
    #           semtech_gnss: {
    #             provider: "Semtech" # One of: ["Semtech"],
    #             type: "GNSS" # One of: ["GNSS"],
    #             status: "Enabled" # One of: ["Enabled", "Disabled"],
    #             fec: "ROSE" # One of: ["ROSE", "NONE"]
    #           }
    #         },
    #         destination: "DestinationName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   This operation is no longer supported.
    # @return [Types::ListPositionConfigurationsResponse]
    def list_position_configurations(params = {}, options = {})
      request = build_request(:list_position_configurations, params)
      request.send_request(options)
    end

    # <p>List queued messages in the downlink queue.</p>
    # @param [Hash, Types::ListQueuedMessagesRequest] params
    # @option params [String] :id
    #   <p>The ID of a given wireless device which the downlink message packets are being
    #               sent.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :wireless_device_type
    #   <p>The wireless device type, whic can be either Sidewalk or LoRaWAN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     wireless_device_type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"]
    #   }
    #   options = {}
    #   response = client.list_queued_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     downlink_queue_messages_list: [
    #       {
    #         message_id: "MessageId",
    #         transmit_mode: 1,
    #         received_at: "ISODateTimeString",
    #         lo_ra_wan: {
    #           f_port: 1,
    #           participating_gateways: {
    #             downlink_mode: "SEQUENTIAL" # One of: ["SEQUENTIAL", "CONCURRENT", "USING_UPLINK_GATEWAY"], # required
    #             gateway_list: [ # required
    #               {
    #                 gateway_id: "WirelessGatewayId", # required
    #                 downlink_frequency: 1, # required
    #               }
    #             ],
    #             transmission_interval: 1, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListQueuedMessagesResponse]
    def list_queued_messages(params = {}, options = {})
      request = build_request(:list_queued_messages, params)
      request.send_request(options)
    end

    # <p>Lists the service profiles registered to your AWS account.</p>
    # @param [Hash, Types::ListServiceProfilesRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_service_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     service_profile_list: [
    #       {
    #         arn: "ServiceProfileArn",
    #         name: "ServiceProfileName",
    #         id: "ServiceProfileId"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceProfilesResponse]
    def list_service_profiles(params = {}, options = {})
      request = build_request(:list_service_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List wireless devices that have been added to an import task.</p>
    # @param [Hash, Types::ListWirelessDeviceImportTasksRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_wireless_device_import_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     wireless_device_import_task_list: [
    #       {
    #         id: "ImportTaskId",
    #         arn: "ImportTaskArn",
    #         destination_name: "DestinationName",
    #         sidewalk: {
    #           device_creation_file_list: ["DeviceCreationFile"],
    #           role: "Role"
    #         },
    #         creation_time: Time.now,
    #         status: "INITIALIZING" # One of: ["INITIALIZING", "INITIALIZED", "PENDING", "COMPLETE", "FAILED", "DELETING"],
    #         status_reason: "StatusReason",
    #         initialized_imported_device_count: 1,
    #         pending_imported_device_count: 1,
    #         onboarded_imported_device_count: 1,
    #         failed_imported_device_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListWirelessDeviceImportTasksResponse]
    def list_wireless_device_import_tasks(params = {}, options = {})
      request = build_request(:list_wireless_device_import_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the wireless devices registered to your AWS account.</p>
    # @param [Hash, Types::ListWirelessDevicesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [String] :destination_name
    #   <p>A filter to list only the wireless devices that use this destination.</p>
    # @option params [String] :device_profile_id
    #   <p>A filter to list only the wireless devices that use this device profile.</p>
    # @option params [String] :service_profile_id
    #   <p>A filter to list only the wireless devices that use this service profile.</p>
    # @option params [String] :wireless_device_type
    #   <p>A filter to list only the wireless devices that use this wireless device type.</p>
    # @option params [String] :fuota_task_id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     destination_name: "DestinationName",
    #     device_profile_id: "DeviceProfileId",
    #     service_profile_id: "ServiceProfileId",
    #     wireless_device_type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"],
    #     fuota_task_id: "FuotaTaskId",
    #     multicast_group_id: "MulticastGroupId"
    #   }
    #   options = {}
    #   response = client.list_wireless_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     wireless_device_list: [
    #       {
    #         arn: "WirelessDeviceArn",
    #         id: "WirelessDeviceId",
    #         type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"],
    #         name: "WirelessDeviceName",
    #         destination_name: "DestinationName",
    #         last_uplink_received_at: "ISODateTimeString",
    #         lo_ra_wan: {
    #           dev_eui: "DevEui"
    #         },
    #         sidewalk: {
    #           amazon_id: "AmazonId",
    #           sidewalk_id: "SidewalkId",
    #           sidewalk_manufacturing_sn: "SidewalkManufacturingSn",
    #           device_certificates: [
    #             {
    #               signing_alg: "Ed25519" # One of: ["Ed25519", "P256r1"], # required
    #               value: "CertificateValue", # required
    #             }
    #           ],
    #           device_profile_id: "DeviceProfileId",
    #           status: "PROVISIONED" # One of: ["PROVISIONED", "REGISTERED", "ACTIVATED", "UNKNOWN"]
    #         },
    #         fuota_device_status: "Initial" # One of: ["Initial", "Package_Not_Supported", "FragAlgo_unsupported", "Not_enough_memory", "FragIndex_unsupported", "Wrong_descriptor", "SessionCnt_replay", "MissingFrag", "MemoryError", "MICError", "Successful", "Device_exist_in_conflict_fuota_task"],
    #         multicast_device_status: "MulticastDeviceStatus",
    #         mc_group_id: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListWirelessDevicesResponse]
    def list_wireless_devices(params = {}, options = {})
      request = build_request(:list_wireless_devices, params)
      request.send_request(options)
    end

    # <p>List the wireless gateway tasks definitions registered to your AWS account.</p>
    # @param [Hash, Types::ListWirelessGatewayTaskDefinitionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [String] :task_definition_type
    #   <p>A filter to list only the wireless gateway task definitions that use this task
    #               definition type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     task_definition_type: "UPDATE" # One of: ["UPDATE"]
    #   }
    #   options = {}
    #   response = client.list_wireless_gateway_task_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     task_definitions: [
    #       {
    #         id: "WirelessGatewayTaskDefinitionId",
    #         lo_ra_wan: {
    #           current_version: {
    #             package_version: "PackageVersion",
    #             model: "Model",
    #             station: "Station"
    #           },
    #           update_version: {
    #             package_version: "PackageVersion",
    #             model: "Model",
    #             station: "Station"
    #           }
    #         },
    #         arn: "WirelessGatewayTaskDefinitionArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListWirelessGatewayTaskDefinitionsResponse]
    def list_wireless_gateway_task_definitions(params = {}, options = {})
      request = build_request(:list_wireless_gateway_task_definitions, params)
      request.send_request(options)
    end

    # <p>Lists the wireless gateways registered to your AWS account.</p>
    # @param [Hash, Types::ListWirelessGatewaysRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_wireless_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     wireless_gateway_list: [
    #       {
    #         arn: "WirelessGatewayArn",
    #         id: "WirelessGatewayId",
    #         name: "WirelessGatewayName",
    #         description: "Description",
    #         lo_ra_wan: {
    #           gateway_eui: "GatewayEui",
    #           rf_region: "RfRegion",
    #           join_eui_filters: [
    #             ["JoinEui"]
    #           ],
    #           net_id_filters: ["NetId"],
    #           sub_bands: [1],
    #           beaconing: {
    #             data_rate: 1,
    #             frequencies: [1]
    #           },
    #           max_eirp: 1.0
    #         },
    #         last_uplink_received_at: "ISODateTimeString"
    #       }
    #     ]
    #   }
    # @return [Types::ListWirelessGatewaysResponse]
    def list_wireless_gateways(params = {}, options = {})
      request = build_request(:list_wireless_gateways, params)
      request.send_request(options)
    end

    # <p>Put position configuration for a given resource.</p>
    #          <important>
    #             <p>This action is no longer supported. Calls to update the position configuration
    #                 should use the <a href="https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html">UpdateResourcePosition</a> API operation instead.</p>
    #          </important>
    # @param [Hash, Types::PutPositionConfigurationRequest] params
    # @option params [String] :resource_identifier
    #   <p>Resource identifier used to update the position configuration.</p>
    # @option params [String] :resource_type
    #   <p>Resource type of the resource for which you want to update the position
    #               configuration.</p>
    # @option params [Types::PositionSolverConfigurations] :solvers
    #   <p>The positioning solvers used to update the position configuration of the
    #               resource.</p>
    # @option params [String] :destination
    #   <p>The position data destination that describes the AWS IoT rule that processes the
    #               device's position data for use by AWS IoT Core for LoRaWAN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #     solvers: {
    #       semtech_gnss: {
    #         status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         fec: "ROSE" # One of: ["ROSE", "NONE"], # required
    #       }
    #     },
    #     destination: "DestinationName"
    #   }
    #   options = {}
    #   response = client.put_position_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This operation is no longer supported.
    # @return [Types::PutPositionConfigurationResponse]
    def put_position_configuration(params = {}, options = {})
      request = build_request(:put_position_configuration, params)
      request.send_request(options)
    end

    # <p>Sets the log-level override for a resource ID and resource type. A limit of 200 log
    #             level override can be set per account.</p>
    # @param [Hash, Types::PutResourceLogLevelRequest] params
    # @option params [String] :resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    # @option params [String] :log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #     log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.put_resource_log_level(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourceLogLevelResponse]
    def put_resource_log_level(params = {}, options = {})
      request = build_request(:put_resource_log_level, params)
      request.send_request(options)
    end

    # <p>Removes the log-level overrides for all resources; wireless devices, wireless
    #             gateways, and FUOTA tasks.</p>
    # @param [Hash, Types::ResetAllResourceLogLevelsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.reset_all_resource_log_levels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetAllResourceLogLevelsResponse]
    def reset_all_resource_log_levels(params = {}, options = {})
      request = build_request(:reset_all_resource_log_levels, params)
      request.send_request(options)
    end

    # <p>Removes the log-level override, if any, for a specific resource ID and resource type.
    #             It can be used for a wireless device, a wireless gateway, or a FUOTA task.</p>
    # @param [Hash, Types::ResetResourceLogLevelRequest] params
    # @option params [String] :resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.reset_resource_log_level(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetResourceLogLevelResponse]
    def reset_resource_log_level(params = {}, options = {})
      request = build_request(:reset_resource_log_level, params)
      request.send_request(options)
    end

    # <p>Sends the specified data to a multicast group.</p>
    # @param [Hash, Types::SendDataToMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    # @option params [Types::MulticastWirelessMetadata] :wireless_metadata
    #   <p>Wireless metadata that is to be sent to multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     payload_data: "PayloadData", # required
    #     wireless_metadata: { # required
    #       lo_ra_wan: {
    #         f_port: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.send_data_to_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MulticastGroupMessageId"
    #   }
    # @return [Types::SendDataToMulticastGroupResponse]
    def send_data_to_multicast_group(params = {}, options = {})
      request = build_request(:send_data_to_multicast_group, params)
      request.send_request(options)
    end

    # <p>Sends a decrypted application data frame to a device.</p>
    # @param [Hash, Types::SendDataToWirelessDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the wireless device to receive the data.</p>
    # @option params [Integer] :transmit_mode
    #   <p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code>
    #               for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>
    # @option params [String] :payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    # @option params [Types::WirelessMetadata] :wireless_metadata
    #   <p>Metadata about the message request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #     transmit_mode: 1, # required
    #     payload_data: "PayloadData", # required
    #     wireless_metadata: {
    #       lo_ra_wan: {
    #         f_port: 1,
    #         participating_gateways: {
    #           downlink_mode: "SEQUENTIAL" # One of: ["SEQUENTIAL", "CONCURRENT", "USING_UPLINK_GATEWAY"], # required
    #           gateway_list: [ # required
    #             {
    #               gateway_id: "WirelessGatewayId", # required
    #               downlink_frequency: 1, # required
    #             }
    #           ],
    #           transmission_interval: 1, # required
    #         }
    #       },
    #       sidewalk: {
    #         seq: 1,
    #         message_type: "CUSTOM_COMMAND_ID_NOTIFY" # One of: ["CUSTOM_COMMAND_ID_NOTIFY", "CUSTOM_COMMAND_ID_GET", "CUSTOM_COMMAND_ID_SET", "CUSTOM_COMMAND_ID_RESP"],
    #         ack_mode_retry_duration_secs: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.send_data_to_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId"
    #   }
    # @return [Types::SendDataToWirelessDeviceResponse]
    def send_data_to_wireless_device(params = {}, options = {})
      request = build_request(:send_data_to_wireless_device, params)
      request.send_request(options)
    end

    # <p>Starts a bulk association of all qualifying wireless devices with a multicast
    #             group.</p>
    # @param [Hash, Types::StartBulkAssociateWirelessDeviceWithMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and
    #               disassociate process.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     query_string: "QueryString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_bulk_associate_wireless_device_with_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartBulkAssociateWirelessDeviceWithMulticastGroupResponse]
    def start_bulk_associate_wireless_device_with_multicast_group(params = {}, options = {})
      request = build_request(:start_bulk_associate_wireless_device_with_multicast_group, params)
      request.send_request(options)
    end

    # <p>Starts a bulk disassociatin of all qualifying wireless devices from a multicast
    #             group.</p>
    # @param [Hash, Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and
    #               disassociate process.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     query_string: "QueryString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_bulk_disassociate_wireless_device_from_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse]
    def start_bulk_disassociate_wireless_device_from_multicast_group(params = {}, options = {})
      request = build_request(:start_bulk_disassociate_wireless_device_from_multicast_group, params)
      request.send_request(options)
    end

    # <p>Starts a FUOTA task.</p>
    # @param [Hash, Types::StartFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [Types::LoRaWANStartFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used to start a FUOTA task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     lo_ra_wan: {
    #       start_time: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.start_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartFuotaTaskResponse]
    def start_fuota_task(params = {}, options = {})
      request = build_request(:start_fuota_task, params)
      request.send_request(options)
    end

    # <p>Starts a multicast group session.</p>
    # @param [Hash, Types::StartMulticastGroupSessionRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [Types::LoRaWANMulticastSession] :lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     lo_ra_wan: { # required
    #       dl_dr: 1,
    #       dl_freq: 1,
    #       session_start_time: Time.now,
    #       session_timeout: 1,
    #       ping_slot_period: 1
    #     }
    #   }
    #   options = {}
    #   response = client.start_multicast_group_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartMulticastGroupSessionResponse]
    def start_multicast_group_session(params = {}, options = {})
      request = build_request(:start_multicast_group_session, params)
      request.send_request(options)
    end

    # <p>Start import task for a single wireless device.</p>
    # @param [Hash, Types::StartSingleWirelessDeviceImportTaskRequest] params
    # @option params [String] :destination_name
    #   <p>The name of the Sidewalk destination that describes the IoT rule to route messages
    #               from the device in the import task that will be onboarded to AWS IoT Wireless.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [String] :device_name
    #   <p>The name of the wireless device for which an import task is being started.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [Types::SidewalkSingleStartImportInfo] :sidewalk
    #   <p>The Sidewalk-related parameters for importing a single wireless device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "DestinationName", # required
    #     client_request_token: "ClientRequestToken",
    #     device_name: "DeviceName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     sidewalk: { # required
    #       sidewalk_manufacturing_sn: "SidewalkManufacturingSn"
    #     }
    #   }
    #   options = {}
    #   response = client.start_single_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportTaskId",
    #     arn: "ImportTaskArn"
    #   }
    # @return [Types::StartSingleWirelessDeviceImportTaskResponse]
    def start_single_wireless_device_import_task(params = {}, options = {})
      request = build_request(:start_single_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>Start import task for provisioning Sidewalk devices in bulk using an S3 CSV
    #             file.</p>
    # @param [Hash, Types::StartWirelessDeviceImportTaskRequest] params
    # @option params [String] :destination_name
    #   <p>The name of the Sidewalk destination that describes the IoT rule to route messages
    #               from the devices in the import task that are onboarded to AWS IoT Wireless.</p>
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    # @option params [Types::SidewalkStartImportInfo] :sidewalk
    #   <p>The Sidewalk-related parameters for importing wireless devices that need to be
    #               provisioned in bulk.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "DestinationName", # required
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     sidewalk: { # required
    #       device_creation_file: "DeviceCreationFile",
    #       role: "Role"
    #     }
    #   }
    #   options = {}
    #   response = client.start_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportTaskId",
    #     arn: "ImportTaskArn"
    #   }
    # @return [Types::StartWirelessDeviceImportTaskResponse]
    def start_wireless_device_import_task(params = {}, options = {})
      request = build_request(:start_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to add tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds to or modifies the tags of the given resource. Tags are metadata that you can use
    #               to manage a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Simulates a provisioned device by sending an uplink data payload of
    #             <code>Hello</code>.</p>
    # @param [Hash, Types::TestWirelessDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the wireless device to test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #   }
    #   options = {}
    #   response = client.test_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "Result"
    #   }
    # @return [Types::TestWirelessDeviceResponse]
    def test_wireless_device(params = {}, options = {})
      request = build_request(:test_wireless_device, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates properties of a destination.</p>
    # @param [Hash, Types::UpdateDestinationRequest] params
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    # @option params [String] :expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    # @option params [String] :expression
    #   <p>The new rule name or topic rule to send messages to.</p>
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #     expression_type: "RuleName" # One of: ["RuleName", "MqttTopic"],
    #     expression: "Expression",
    #     description: "Description",
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDestinationResponse]
    def update_destination(params = {}, options = {})
      request = build_request(:update_destination, params)
      request.send_request(options)
    end

    # <p>Update the event configuration based on resource types.</p>
    # @param [Hash, Types::UpdateEventConfigurationByResourceTypesRequest] params
    # @option params [Types::DeviceRegistrationStateResourceTypeEventConfiguration] :device_registration_state
    #   <p>Device registration state resource type event configuration object for enabling and
    #               disabling wireless gateway topic.</p>
    # @option params [Types::ProximityResourceTypeEventConfiguration] :proximity
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless
    #               gateway topic.</p>
    # @option params [Types::JoinResourceTypeEventConfiguration] :join
    #   <p>Join resource type event configuration object for enabling and disabling wireless
    #               device topic.</p>
    # @option params [Types::ConnectionStatusResourceTypeEventConfiguration] :connection_status
    #   <p>Connection status resource type event configuration object for enabling and disabling
    #               wireless gateway topic.</p>
    # @option params [Types::MessageDeliveryStatusResourceTypeEventConfiguration] :message_delivery_status
    #   <p>Message delivery status resource type event configuration object for enabling and
    #               disabling wireless device topic.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_registration_state: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     proximity: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         wireless_gateway_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     },
    #     message_delivery_status: {
    #       sidewalk: {
    #         wireless_device_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_configuration_by_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEventConfigurationByResourceTypesResponse]
    def update_event_configuration_by_resource_types(params = {}, options = {})
      request = build_request(:update_event_configuration_by_resource_types, params)
      request.send_request(options)
    end

    # <p>Updates properties of a FUOTA task.</p>
    # @param [Hash, Types::UpdateFuotaTaskRequest] params
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    # @option params [String] :name
    #   <p>The name of a FUOTA task.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [Types::LoRaWANFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    # @option params [String] :firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA
    #               task.</p>
    # @option params [String] :firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    # @option params [Integer] :redundancy_percent
    #   <p>The percentage of the added fragments that are redundant. For example, if the size of
    #               the firmware image file is 100 bytes and the fragment size is 10 bytes, with
    #                   <code>RedundancyPercent</code> set to 50(%), the final number of encoded fragments
    #               is (100 / 10) + (100 / 10 * 50%) = 15.</p>
    # @option params [Integer] :fragment_size_bytes
    #   <p>The size of each fragment in bytes. This parameter is supported only for FUOTA tasks
    #               with multicast groups.</p>
    # @option params [Integer] :fragment_interval_ms
    #   <p>The interval for sending fragments in milliseconds, rounded to the nearest
    #               second.</p>
    #            <note>
    #               <p>This interval only determines the timing for when the Cloud sends down the
    #                   fragments to yor device. There can be a delay for when your device will receive
    #                   these fragments. This delay depends on the device's class and the communication
    #                   delay with the cloud.</p>
    #            </note>
    # @option params [String] :descriptor
    #   <p>The descriptor is the metadata about the file that is transferred to the device using
    #               FUOTA, such as the software version. It is a binary field encoded in base64.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "FuotaTaskId", # required
    #     name: "FuotaTaskName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       rf_region: "EU868" # One of: ["EU868", "US915", "AU915", "AS923-1", "AS923-2", "AS923-3", "AS923-4", "EU433", "CN470", "CN779", "RU864", "KR920", "IN865"]
    #     },
    #     firmware_update_image: "FirmwareUpdateImage",
    #     firmware_update_role: "FirmwareUpdateRole",
    #     redundancy_percent: 1,
    #     fragment_size_bytes: 1,
    #     fragment_interval_ms: 1,
    #     descriptor: "FileDescriptor"
    #   }
    #   options = {}
    #   response = client.update_fuota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFuotaTaskResponse]
    def update_fuota_task(params = {}, options = {})
      request = build_request(:update_fuota_task, params)
      request.send_request(options)
    end

    # <p>Set default log level, or log levels by resource types. This can be for wireless
    #             device, wireless gateway, or FUOTA task log options, and is used to control the log
    #             messages that'll be displayed in CloudWatch.</p>
    # @param [Hash, Types::UpdateLogLevelsByResourceTypesRequest] params
    # @option params [String] :default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    # @option params [Array<Types::FuotaTaskLogOption>] :fuota_task_log_options
    #   <p>The list of FUOTA task log options.</p>
    # @option params [Array<Types::WirelessDeviceLogOption>] :wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    # @option params [Array<Types::WirelessGatewayLogOption>] :wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     default_log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"],
    #     fuota_task_log_options: [
    #       {
    #         type: "LoRaWAN" # One of: ["LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "Fuota" # One of: ["Fuota"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     wireless_device_log_options: [
    #       {
    #         type: "Sidewalk" # One of: ["Sidewalk", "LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "Join" # One of: ["Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     wireless_gateway_log_options: [
    #       {
    #         type: "LoRaWAN" # One of: ["LoRaWAN"], # required
    #         log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #         events: [
    #           {
    #             event: "CUPS_Request" # One of: ["CUPS_Request", "Certificate"], # required
    #             log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_log_levels_by_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLogLevelsByResourceTypesResponse]
    def update_log_levels_by_resource_types(params = {}, options = {})
      request = build_request(:update_log_levels_by_resource_types, params)
      request.send_request(options)
    end

    # <p>Update the summary metric configuration.</p>
    # @param [Hash, Types::UpdateMetricConfigurationRequest] params
    # @option params [Types::SummaryMetricConfiguration] :summary_metric
    #   <p>The value to be used to set summary metric configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     summary_metric: {
    #       status: "Enabled" # One of: ["Enabled", "Disabled"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_metric_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMetricConfigurationResponse]
    def update_metric_configuration(params = {}, options = {})
      request = build_request(:update_metric_configuration, params)
      request.send_request(options)
    end

    # <p>Updates properties of a multicast group session.</p>
    # @param [Hash, Types::UpdateMulticastGroupRequest] params
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    # @option params [String] :name
    #   <p>The name of the multicast group.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [Types::LoRaWANMulticast] :lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MulticastGroupId", # required
    #     name: "MulticastGroupName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       rf_region: "EU868" # One of: ["EU868", "US915", "AU915", "AS923-1", "AS923-2", "AS923-3", "AS923-4", "EU433", "CN470", "CN779", "RU864", "KR920", "IN865"],
    #       dl_class: "ClassB" # One of: ["ClassB", "ClassC"],
    #       participating_gateways: {
    #         gateway_list: ["WirelessGatewayId"],
    #         transmission_interval: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_multicast_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMulticastGroupResponse]
    def update_multicast_group(params = {}, options = {})
      request = build_request(:update_multicast_group, params)
      request.send_request(options)
    end

    # <p>Update network analyzer configuration.</p>
    # @param [Hash, Types::UpdateNetworkAnalyzerConfigurationRequest] params
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    # @option params [Types::TraceContent] :trace_content
    #   <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    # @option params [Array<String>] :wireless_devices_to_add
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    # @option params [Array<String>] :wireless_devices_to_remove
    #   <p>Wireless device resources to remove from the network analyzer configuration. Provide
    #               the <code>WirelessDeviceId</code> of the resources to remove in the input array.</p>
    # @option params [Array<String>] :wireless_gateways_to_add
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    # @option params [Array<String>] :wireless_gateways_to_remove
    #   <p>Wireless gateway resources to remove from the network analyzer configuration. Provide
    #               the <code>WirelessGatewayId</code> of the resources to remove in the input array.</p>
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    # @option params [Array<String>] :multicast_groups_to_add
    #   <p>Multicast group resources to add to the network analyzer configuration. Provide the
    #                   <code>MulticastGroupId</code> of the resource to add in the input array.</p>
    # @option params [Array<String>] :multicast_groups_to_remove
    #   <p>Multicast group resources to remove from the network analyzer configuration. Provide
    #               the <code>MulticastGroupId</code> of the resources to remove in the input array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_name: "NetworkAnalyzerConfigurationName", # required
    #     trace_content: {
    #       wireless_device_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "INFO" # One of: ["INFO", "ERROR", "DISABLED"],
    #       multicast_frame_info: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     wireless_devices_to_add: ["WirelessDeviceId"],
    #     wireless_devices_to_remove: ["WirelessDeviceId"],
    #     wireless_gateways_to_add: ["WirelessGatewayId"],
    #     wireless_gateways_to_remove: ["WirelessGatewayId"],
    #     description: "Description",
    #     multicast_groups_to_add: ["MulticastGroupId"],
    #     multicast_groups_to_remove: ["MulticastGroupId"]
    #   }
    #   options = {}
    #   response = client.update_network_analyzer_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNetworkAnalyzerConfigurationResponse]
    def update_network_analyzer_configuration(params = {}, options = {})
      request = build_request(:update_network_analyzer_configuration, params)
      request.send_request(options)
    end

    # <p>Updates properties of a partner account.</p>
    # @param [Hash, Types::UpdatePartnerAccountRequest] params
    # @option params [Types::SidewalkUpdateAccount] :sidewalk
    #   <p>The Sidewalk account credentials.</p>
    # @option params [String] :partner_account_id
    #   <p>The ID of the partner account to update.</p>
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sidewalk: { # required
    #       app_server_private_key: "AppServerPrivateKey"
    #     },
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk" # One of: ["Sidewalk"], # required
    #   }
    #   options = {}
    #   response = client.update_partner_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePartnerAccountResponse]
    def update_partner_account(params = {}, options = {})
      request = build_request(:update_partner_account, params)
      request.send_request(options)
    end

    # <p>Update the position information of a resource.</p>
    #          <important>
    #             <p>This action is no longer supported. Calls to update the position information
    #                 should use the <a href="https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html">UpdateResourcePosition</a> API operation instead.</p>
    #          </important>
    # @param [Hash, Types::UpdatePositionRequest] params
    # @option params [String] :resource_identifier
    #   <p>Resource identifier of the resource for which position is updated.</p>
    # @option params [String] :resource_type
    #   <p>Resource type of the resource for which position is updated.</p>
    # @option params [Array<Float>] :position
    #   <p>The position information of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #     position: [1.0], # required
    #   }
    #   options = {}
    #   response = client.update_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This operation is no longer supported.
    # @return [Types::UpdatePositionResponse]
    def update_position(params = {}, options = {})
      request = build_request(:update_position, params)
      request.send_request(options)
    end

    # <p>Update the event configuration for a particular resource identifier.</p>
    # @param [Hash, Types::UpdateResourceEventConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    # @option params [String] :identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    # @option params [String] :partner_type
    #   <p>Partner type of the resource if the identifier type is
    #               <code>PartnerAccountId</code>
    #            </p>
    # @option params [Types::DeviceRegistrationStateEventConfiguration] :device_registration_state
    #   <p>Event configuration for the device registration state event.</p>
    # @option params [Types::ProximityEventConfiguration] :proximity
    #   <p>Event configuration for the proximity event.</p>
    # @option params [Types::JoinEventConfiguration] :join
    #   <p>Event configuration for the join event.</p>
    # @option params [Types::ConnectionStatusEventConfiguration] :connection_status
    #   <p>Event configuration for the connection status event.</p>
    # @option params [Types::MessageDeliveryStatusEventConfiguration] :message_delivery_status
    #   <p>Event configuration for the message delivery status event.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     identifier_type: "PartnerAccountId" # One of: ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"], # required
    #     partner_type: "Sidewalk" # One of: ["Sidewalk"],
    #     device_registration_state: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     proximity: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         dev_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         gateway_eui_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_gateway_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     },
    #     message_delivery_status: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: "Enabled" # One of: ["Enabled", "Disabled"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_resource_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceEventConfigurationResponse]
    def update_resource_event_configuration(params = {}, options = {})
      request = build_request(:update_resource_event_configuration, params)
      request.send_request(options)
    end

    # <p>Update the position information of a given wireless device or a wireless gateway
    #             resource. The position coordinates are based on the <a href="https://gisgeography.com/wgs84-world-geodetic-system/"> World Geodetic System
    #                 (WGS84)</a>.</p>
    # @param [Hash, Types::UpdateResourcePositionRequest] params
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource for which position information is updated. It can be
    #               the wireless device ID or the wireless gateway ID, depending on the resource
    #               type.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource for which position information is updated, which can be a
    #               wireless device or a wireless gateway.</p>
    # @option params [String] :geo_json_payload
    #   <p>The position information of the resource, displayed as a JSON payload. The payload
    #               uses the GeoJSON format, which a format that's used to encode geographic data
    #               structures. For more information, see <a href="https://geojson.org/">GeoJSON</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "PositionResourceIdentifier", # required
    #     resource_type: "WirelessDevice" # One of: ["WirelessDevice", "WirelessGateway"], # required
    #     geo_json_payload: "data"
    #   }
    #   options = {}
    #   response = client.update_resource_position(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourcePositionResponse]
    def update_resource_position(params = {}, options = {})
      request = build_request(:update_resource_position, params)
      request.send_request(options)
    end

    # <p>Updates properties of a wireless device.</p>
    # @param [Hash, Types::UpdateWirelessDeviceRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :destination_name
    #   <p>The name of the new destination for the device.</p>
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    # @option params [Types::LoRaWANUpdateDevice] :lo_ra_wan
    #   <p>The updated wireless device's configuration.</p>
    # @option params [String] :positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessDeviceId", # required
    #     destination_name: "DestinationName",
    #     name: "WirelessDeviceName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       device_profile_id: "DeviceProfileId",
    #       service_profile_id: "ServiceProfileId",
    #       abp_v1_1: {
    #         f_cnt_start: 1
    #       },
    #       abp_v1_0_x: {
    #         f_cnt_start: 1
    #       },
    #       f_ports: {
    #         positioning: {
    #           clock_sync: 1,
    #           stream: 1,
    #           gnss: 1
    #         },
    #         applications: [
    #           {
    #             f_port: 1,
    #             type: "SemtechGeolocation" # One of: ["SemtechGeolocation"],
    #             destination_name: "DestinationName"
    #           }
    #         ]
    #       }
    #     },
    #     positioning: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    #   options = {}
    #   response = client.update_wireless_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWirelessDeviceResponse]
    def update_wireless_device(params = {}, options = {})
      request = build_request(:update_wireless_device, params)
      request.send_request(options)
    end

    # <p>Update an import task to add more devices to the task.</p>
    # @param [Hash, Types::UpdateWirelessDeviceImportTaskRequest] params
    # @option params [String] :id
    #   <p>The identifier of the import task to be updated.</p>
    # @option params [Types::SidewalkUpdateImportInfo] :sidewalk
    #   <p>The Sidewalk-related parameters of the import task to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportTaskId", # required
    #     sidewalk: { # required
    #       device_creation_file: "DeviceCreationFile"
    #     }
    #   }
    #   options = {}
    #   response = client.update_wireless_device_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWirelessDeviceImportTaskResponse]
    def update_wireless_device_import_task(params = {}, options = {})
      request = build_request(:update_wireless_device_import_task, params)
      request.send_request(options)
    end

    # <p>Updates properties of a wireless gateway.</p>
    # @param [Hash, Types::UpdateWirelessGatewayRequest] params
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    # @option params [Array<Array<String>>] :join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    # @option params [Array<String>] :net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink
    #               frames.</p>
    # @option params [Float] :max_eirp
    #   <p>The MaxEIRP value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WirelessGatewayId", # required
    #     name: "WirelessGatewayName",
    #     description: "Description",
    #     join_eui_filters: [
    #       ["JoinEui"]
    #     ],
    #     net_id_filters: ["NetId"],
    #     max_eirp: 1.0
    #   }
    #   options = {}
    #   response = client.update_wireless_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWirelessGatewayResponse]
    def update_wireless_gateway(params = {}, options = {})
      request = build_request(:update_wireless_gateway, params)
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
      context[:gem_name] = 'aws-sdk-iotwireless'
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
