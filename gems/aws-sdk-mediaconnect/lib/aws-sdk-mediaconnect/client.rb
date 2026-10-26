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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mediaconnect)

module Aws::MediaConnect
  # An API client for Aws::MediaConnect.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MediaConnect
    @identifier = :mediaconnect

    add_plugin(::Aws::MediaConnect::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaConnect::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p> Adds outputs to an existing bridge.</p>
    # @param [Hash, Types::AddBridgeOutputsRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [Array<Types::AddBridgeOutputRequest>] :outputs
    #   <p> The outputs that you want to add to this bridge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     outputs: [ # required
    #       {
    #         network_output: {
    #           ip_address: "String", # required
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           ttl: 1, # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_bridge_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     outputs: [
    #       {
    #         flow_output: {
    #           flow_arn: "String", # required
    #           flow_source_arn: "String", # required
    #           name: "String", # required
    #         },
    #         network_output: {
    #           ip_address: "String", # required
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           ttl: 1, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddBridgeOutputsResponse]
    def add_bridge_outputs(params = {}, options = {})
      request = build_request(:add_bridge_outputs, params)
      request.send_request(options)
    end

    # <p> Adds sources to an existing bridge.</p>
    # @param [Hash, Types::AddBridgeSourcesRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [Array<Types::AddBridgeSourceRequest>] :sources
    #   <p> The sources that you want to add to this bridge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     sources: [ # required
    #       {
    #         flow_source: {
    #           flow_arn: "String", # required
    #           flow_vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           name: "String", # required
    #         },
    #         network_source: {
    #           multicast_ip: "String", # required
    #           multicast_source_settings: {
    #             multicast_source_ip: "String"
    #           },
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_bridge_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     sources: [
    #       {
    #         flow_source: {
    #           flow_arn: "String", # required
    #           flow_vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           name: "String", # required
    #           output_arn: "String"
    #         },
    #         network_source: {
    #           multicast_ip: "String", # required
    #           multicast_source_settings: {
    #             multicast_source_ip: "String"
    #           },
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddBridgeSourcesResponse]
    def add_bridge_sources(params = {}, options = {})
      request = build_request(:add_bridge_sources, params)
      request.send_request(options)
    end

    # <p> Adds media streams to an existing flow. After you add a media stream to a flow, you can associate it with a source and/or an output that uses the ST 2110 JPEG XS or CDI protocol.</p>
    # @param [Hash, Types::AddFlowMediaStreamsRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    # @option params [Array<Types::AddMediaStreamRequest>] :media_streams
    #   <p> The media streams that you want to add to the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     media_streams: [ # required
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: "String",
    #             colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #             exact_framerate: "String",
    #             par: "String",
    #             range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #             scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #             tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #           },
    #           lang: "String"
    #         },
    #         clock_rate: 1,
    #         description: "String",
    #         media_stream_id: 1, # required
    #         media_stream_name: "String", # required
    #         media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #         video_format: "String",
    #         media_stream_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_flow_media_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     media_streams: [
    #       {
    #         attributes: {
    #           fmtp: { # required
    #             channel_order: "String",
    #             colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #             exact_framerate: "String",
    #             par: "String",
    #             range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #             scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #             tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #           },
    #           lang: "String"
    #         },
    #         clock_rate: 1,
    #         description: "String",
    #         fmt: 1, # required
    #         media_stream_id: 1, # required
    #         media_stream_name: "String", # required
    #         media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #         video_format: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AddFlowMediaStreamsResponse]
    def add_flow_media_streams(params = {}, options = {})
      request = build_request(:add_flow_media_streams, params)
      request.send_request(options)
    end

    # <p> Adds outputs to an existing flow. You can create up to 50 outputs per flow.</p>
    # @param [Hash, Types::AddFlowOutputsRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to add outputs to.</p>
    # @option params [Array<Types::AddOutputRequest>] :outputs
    #   <p> A list of outputs that you want to add to the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     outputs: [ # required
    #       {
    #         cidr_allow_list: ["String"],
    #         description: "String",
    #         destination: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: "String", # required
    #                 destination_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: "main" # One of: ["main", "high"], # required
    #             },
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         port: 1,
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: "String",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         },
    #         output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #         output_tags: {
    #           "String" => "String"
    #         },
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_encryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #         ndi_audio_reference_level: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_flow_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     outputs: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         destination: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         entitlement_arn: "String",
    #         listener_address: "String",
    #         media_live_input_arn: "String",
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: "String", # required
    #                 destination_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 },
    #                 outbound_ip: "String", # required
    #               }
    #             ],
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: "main" # One of: ["main", "high"], # required
    #             },
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         name: "String", # required
    #         output_arn: "String", # required
    #         port: 1,
    #         transport: {
    #           cidr_allow_list: ["String"],
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           max_sync_buffer: 1,
    #           min_latency: 1,
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           remote_id: "String",
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           smoothing_latency: 1,
    #           source_listener_address: "String",
    #           source_listener_port: 1,
    #           stream_id: "String",
    #           ndi_speed_hq_quality: 1,
    #           ndi_program_name: "String",
    #           ndi_source_settings: {
    #             source_name: "String",
    #             audio_reference_level: 1
    #           },
    #           ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #           ndi_audio_reference_level: 1
    #         },
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         },
    #         bridge_arn: "String",
    #         bridge_ports: [1],
    #         output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         peer_ip_address: "String",
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_encryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         connected_router_input_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AddFlowOutputsResponse]
    def add_flow_outputs(params = {}, options = {})
      request = build_request(:add_flow_outputs, params)
      request.send_request(options)
    end

    # <p> Adds sources to a flow.</p>
    # @param [Hash, Types::AddFlowSourcesRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    # @option params [Array<Types::SetSourceRequest>] :sources
    #   <p> A list of sources that you want to add to the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     sources: [ # required
    #       {
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         ndi_source_settings: {
    #           source_name: "String",
    #           audio_reference_level: 1
    #         },
    #         source_tags: {
    #           "String" => "String"
    #         },
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_flow_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     sources: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_ip: "String",
    #         ingest_port: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_ip: "String", # required
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         name: "String", # required
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_arn: "String", # required
    #         transport: {
    #           cidr_allow_list: ["String"],
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           max_sync_buffer: 1,
    #           min_latency: 1,
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           remote_id: "String",
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           smoothing_latency: 1,
    #           source_listener_address: "String",
    #           source_listener_port: 1,
    #           stream_id: "String",
    #           ndi_speed_hq_quality: 1,
    #           ndi_program_name: "String",
    #           ndi_source_settings: {
    #             source_name: "String",
    #             audio_reference_level: 1
    #           },
    #           ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #           ndi_audio_reference_level: 1
    #         },
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         peer_ip_address: "String",
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         connected_router_output_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AddFlowSourcesResponse]
    def add_flow_sources(params = {}, options = {})
      request = build_request(:add_flow_sources, params)
      request.send_request(options)
    end

    # <p> Adds VPC interfaces to a flow.</p>
    # @param [Hash, Types::AddFlowVpcInterfacesRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    # @option params [Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   <p> A list of VPC interfaces that you want to add to the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     vpc_interfaces: [ # required
    #       {
    #         name: "String", # required
    #         network_interface_type: "ena" # One of: ["ena", "efa"],
    #         role_arn: "String", # required
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #         vpc_interface_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_flow_vpc_interfaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     vpc_interfaces: [
    #       {
    #         name: "String", # required
    #         network_interface_ids: ["String"], # required
    #         network_interface_type: "ena" # One of: ["ena", "efa"], # required
    #         role_arn: "String", # required
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::AddFlowVpcInterfacesResponse]
    def add_flow_vpc_interfaces(params = {}, options = {})
      request = build_request(:add_flow_vpc_interfaces, params)
      request.send_request(options)
    end

    # <p>Retrieves information about multiple router inputs in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::BatchGetRouterInputRequest] params
    # @option params [Array<String>] :arns
    #   <p>The Amazon Resource Names (ARNs) of the router inputs you want to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["RouterInputArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_inputs: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterInputArn", # required
    #         id: "String", # required
    #         state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #         input_type: "STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"], # required
    #         configuration: { # required
    #           # One of:
    #           standard: {
    #             network_interface_arn: "RouterNetworkInterfaceArn", # required
    #             protocol_configuration: { # required
    #               # One of:
    #               rist: {
    #                 port: 1, # required
    #                 recovery_latency_milliseconds: 1, # required
    #               },
    #               srt_listener: {
    #                 port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 decryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               srt_caller: {
    #                 source_address: "String", # required
    #                 source_port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 stream_id: "String",
    #                 decryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               rtp: {
    #                 port: 1, # required
    #                 forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             },
    #             protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #           },
    #           media_live_channel: {
    #             media_live_channel_arn: "MediaLiveChannelArn",
    #             media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #             media_live_channel_output_name: "String",
    #             source_transit_decryption: { # required
    #               encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #               encryption_key_configuration: { # required
    #                 # One of:
    #                 secrets_manager: {
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 },
    #                 automatic: {
    #                 }
    #               }
    #             }
    #           },
    #           failover: {
    #             network_interface_arn: "RouterNetworkInterfaceArn", # required
    #             protocol_configurations: [{ # required
    #               # One of:
    #               rist: {
    #                 port: 1, # required
    #                 recovery_latency_milliseconds: 1, # required
    #               },
    #               srt_listener: {
    #                 port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 decryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               srt_caller: {
    #                 source_address: "String", # required
    #                 source_port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 stream_id: "String",
    #                 decryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               rtp: {
    #                 port: 1, # required
    #                 forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             }],
    #             source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #             primary_source_index: 1
    #           },
    #           media_connect_flow: {
    #             flow_arn: "FlowArn",
    #             flow_output_arn: "FlowOutputArn",
    #             source_transit_decryption: { # required
    #               encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #               encryption_key_configuration: { # required
    #                 # One of:
    #                 secrets_manager: {
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 },
    #                 automatic: {
    #                 }
    #               }
    #             }
    #           },
    #           merge: {
    #             network_interface_arn: "RouterNetworkInterfaceArn", # required
    #             protocol_configurations: [{ # required
    #               # One of:
    #               rtp: {
    #                 port: 1, # required
    #                 forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               },
    #               rist: {
    #                 port: 1, # required
    #                 recovery_latency_milliseconds: 1, # required
    #               }
    #             }],
    #             merge_recovery_window_milliseconds: 1, # required
    #           }
    #         },
    #         routed_outputs: 1, # required
    #         maximum_routed_outputs: 1,
    #         region_name: "String", # required
    #         availability_zone: "String", # required
    #         maximum_bitrate: 1, # required
    #         tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"], # required
    #         routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         messages: [ # required
    #           {
    #             code: "String", # required
    #             message: "String", # required
    #           }
    #         ],
    #         transit_encryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         tags: { # required
    #           "String" => "String"
    #         },
    #         stream_details: { # required
    #           # One of:
    #           standard: {
    #             source_ip_address: "String"
    #           },
    #           media_live_channel: {
    #           },
    #           failover: {
    #             source_index_zero_stream_details: { # required
    #               source_index: 1, # required
    #               source_ip_address: "String"
    #             },
    #             source_index_one_stream_details: { # required
    #               source_index: 1, # required
    #               source_ip_address: "String"
    #             }
    #           },
    #           media_connect_flow: {
    #           },
    #           merge: {
    #             source_index_zero_stream_details: { # required
    #               source_index: 1, # required
    #               source_ip_address: "String"
    #             },
    #             source_index_one_stream_details: { # required
    #               source_index: 1, # required
    #               source_ip_address: "String"
    #             }
    #           }
    #         },
    #         ip_address: "String",
    #         maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #         maintenance_configuration: { # required
    #           # One of:
    #           preferred_day_time: {
    #             day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #             time: "String", # required
    #           },
    #           default: {
    #           }
    #         },
    #         maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #         maintenance_schedule: {
    #           # One of:
    #           window: {
    #             start: Time.now, # required
    #             end: Time.now, # required
    #             scheduled_time: Time.now, # required
    #           }
    #         },
    #         content_quality_analysis_type: "CONTENT_LEVEL" # One of: ["CONTENT_LEVEL"], # required
    #         content_quality_analysis_configuration: { # required
    #           # One of:
    #           content_level: {
    #             black_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               threshold_seconds: 1, # required
    #             },
    #             frozen_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               threshold_seconds: 1, # required
    #             },
    #             silent_audio: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               threshold_seconds: 1, # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         arn: "RouterInputArn", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRouterInputResponse]
    def batch_get_router_input(params = {}, options = {})
      request = build_request(:batch_get_router_input, params)
      request.send_request(options)
    end

    # <p>Retrieves information about multiple router network interfaces in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::BatchGetRouterNetworkInterfaceRequest] params
    # @option params [Array<String>] :arns
    #   <p>The Amazon Resource Names (ARNs) of the router network interfaces you want to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["RouterNetworkInterfaceArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_router_network_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_network_interfaces: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterNetworkInterfaceArn", # required
    #         id: "String", # required
    #         state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #         network_interface_type: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #         configuration: { # required
    #           # One of:
    #           public: {
    #             allow_rules: [ # required
    #               {
    #                 cidr: "String", # required
    #               }
    #             ]
    #           },
    #           vpc: {
    #             security_group_ids: ["String"], # required
    #             subnet_id: "String", # required
    #           }
    #         },
    #         associated_output_count: 1, # required
    #         associated_input_count: 1, # required
    #         region_name: "String", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         tags: { # required
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         arn: "RouterNetworkInterfaceArn", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRouterNetworkInterfaceResponse]
    def batch_get_router_network_interface(params = {}, options = {})
      request = build_request(:batch_get_router_network_interface, params)
      request.send_request(options)
    end

    # <p>Retrieves information about multiple router outputs in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::BatchGetRouterOutputRequest] params
    # @option params [Array<String>] :arns
    #   <p>The Amazon Resource Names (ARNs) of the router outputs you want to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["RouterOutputArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_outputs: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterOutputArn", # required
    #         id: "String", # required
    #         state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #         output_type: "STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"], # required
    #         configuration: { # required
    #           # One of:
    #           standard: {
    #             network_interface_arn: "RouterNetworkInterfaceArn", # required
    #             protocol_configuration: { # required
    #               # One of:
    #               rist: {
    #                 destination_address: "String", # required
    #                 destination_port: 1, # required
    #               },
    #               srt_listener: {
    #                 port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 encryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               rtmp_push: {
    #                 destination_address: "String", # required
    #                 destination_port: 1, # required
    #                 application_name: "String", # required
    #                 stream_name: "String", # required
    #                 tls_encryption: {
    #                   encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #                   encryption_configuration: { # required
    #                     # One of:
    #                     public: {
    #                     }
    #                   }
    #                 }
    #               },
    #               srt_caller: {
    #                 destination_address: "String", # required
    #                 destination_port: 1, # required
    #                 minimum_latency_milliseconds: 1, # required
    #                 stream_id: "String",
    #                 encryption_configuration: {
    #                   encryption_key: { # required
    #                     secret_arn: "SecretArn", # required
    #                     role_arn: "RoleArn", # required
    #                   }
    #                 }
    #               },
    #               rtp: {
    #                 destination_address: "String", # required
    #                 destination_port: 1, # required
    #                 forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             },
    #             protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #           },
    #           media_connect_flow: {
    #             flow_arn: "FlowArn",
    #             flow_source_arn: "FlowSourceArn",
    #             destination_transit_encryption: { # required
    #               encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #               encryption_key_configuration: { # required
    #                 # One of:
    #                 secrets_manager: {
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 },
    #                 automatic: {
    #                 }
    #               }
    #             }
    #           },
    #           media_live_input: {
    #             media_live_input_arn: "MediaLiveInputArn",
    #             media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #             destination_transit_encryption: { # required
    #               encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #               encryption_key_configuration: { # required
    #                 # One of:
    #                 secrets_manager: {
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 },
    #                 automatic: {
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #         region_name: "String", # required
    #         availability_zone: "String", # required
    #         maximum_bitrate: 1, # required
    #         routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #         tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         messages: [ # required
    #           {
    #             code: "String", # required
    #             message: "String", # required
    #           }
    #         ],
    #         tags: { # required
    #           "String" => "String"
    #         },
    #         stream_details: { # required
    #           # One of:
    #           standard: {
    #             destination_ip_address: "String"
    #           },
    #           media_connect_flow: {
    #           },
    #           media_live_input: {
    #           }
    #         },
    #         ip_address: "String",
    #         routed_input_arn: "RouterInputArn",
    #         maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #         maintenance_configuration: { # required
    #           # One of:
    #           preferred_day_time: {
    #             day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #             time: "String", # required
    #           },
    #           default: {
    #           }
    #         },
    #         maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #         maintenance_schedule: {
    #           # One of:
    #           window: {
    #             start: Time.now, # required
    #             end: Time.now, # required
    #             scheduled_time: Time.now, # required
    #           }
    #         },
    #         fabric_configuration: { # required
    #           recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         arn: "RouterOutputArn", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRouterOutputResponse]
    def batch_get_router_output(params = {}, options = {})
      request = build_request(:batch_get_router_output, params)
      request.send_request(options)
    end

    # <p> Creates a new bridge. The request must include one source.</p>
    # @param [Hash, Types::CreateBridgeRequest] params
    # @option params [Types::AddEgressGatewayBridgeRequest] :egress_gateway_bridge
    #   <p>An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @option params [Types::AddIngressGatewayBridgeRequest] :ingress_gateway_bridge
    #   <p>An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    # @option params [String] :name
    #   <p> The name of the bridge. This name can not be modified after the bridge is created.</p>
    # @option params [Array<Types::AddBridgeOutputRequest>] :outputs
    #   <p> The outputs that you want to add to this bridge.</p>
    # @option params [String] :placement_arn
    #   <p> The bridge placement Amazon Resource Number (ARN).</p>
    # @option params [Types::FailoverConfig] :source_failover_config
    #   <p> The settings for source failover.</p>
    # @option params [Array<Types::AddBridgeSourceRequest>] :sources
    #   <p> The sources that you want to add to this bridge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     egress_gateway_bridge: {
    #       max_bitrate: 1, # required
    #     },
    #     ingress_gateway_bridge: {
    #       max_bitrate: 1, # required
    #       max_outputs: 1, # required
    #     },
    #     name: "String", # required
    #     outputs: [
    #       {
    #         network_output: {
    #           ip_address: "String", # required
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           ttl: 1, # required
    #         }
    #       }
    #     ],
    #     placement_arn: "String", # required
    #     source_failover_config: {
    #       failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     sources: [ # required
    #       {
    #         flow_source: {
    #           flow_arn: "String", # required
    #           flow_vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           name: "String", # required
    #         },
    #         network_source: {
    #           multicast_ip: "String", # required
    #           multicast_source_settings: {
    #             multicast_source_ip: "String"
    #           },
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_bridge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge: {
    #       bridge_arn: "String", # required
    #       bridge_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       bridge_state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"], # required
    #       egress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #       },
    #       ingress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #         max_outputs: 1, # required
    #       },
    #       name: "String", # required
    #       outputs: [
    #         {
    #           flow_output: {
    #             flow_arn: "String", # required
    #             flow_source_arn: "String", # required
    #             name: "String", # required
    #           },
    #           network_output: {
    #             ip_address: "String", # required
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             ttl: 1, # required
    #           }
    #         }
    #       ],
    #       placement_arn: "String", # required
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           flow_source: {
    #             flow_arn: "String", # required
    #             flow_vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             },
    #             name: "String", # required
    #             output_arn: "String"
    #           },
    #           network_source: {
    #             multicast_ip: "String", # required
    #             multicast_source_settings: {
    #               multicast_source_ip: "String"
    #             },
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateBridgeResponse]
    def create_bridge(params = {}, options = {})
      request = build_request(:create_bridge, params)
      request.send_request(options)
    end

    # <p> Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).</p>
    # @param [Hash, Types::CreateFlowRequest] params
    # @option params [String] :availability_zone
    #   <p> The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current Amazon Web Services Region.</p>
    # @option params [Array<Types::GrantEntitlementRequest>] :entitlements
    #   <p> The entitlements that you want to grant on a flow.</p>
    # @option params [Array<Types::AddMediaStreamRequest>] :media_streams
    #   <p> The media streams that you want to add to the flow. You can associate these media streams with sources and outputs on the flow.</p>
    # @option params [String] :name
    #   <p> The name of the flow.</p>
    # @option params [Array<Types::AddOutputRequest>] :outputs
    #   <p> The outputs that you want to add to this flow.</p>
    # @option params [Types::SetSourceRequest] :source
    #   <p> The settings for the source that you want to use for the new flow. </p>
    # @option params [Types::FailoverConfig] :source_failover_config
    #   <p> The settings for source failover. </p>
    # @option params [Array<Types::SetSourceRequest>] :sources
    #   <p>The sources that are assigned to the flow. </p>
    # @option params [Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   <p> The VPC interfaces you want on the flow.</p>
    # @option params [Types::AddMaintenance] :maintenance
    #   <p> The maintenance settings you want to use for the flow. </p>
    # @option params [Types::MonitoringConfig] :source_monitoring_config
    #   <p> The settings for source monitoring. </p>
    # @option params [String] :flow_size
    #   <p> Determines the processing capacity and feature set of the flow. Set this optional parameter to <code>LARGE</code> if you want to enable NDI sources or outputs on the flow. </p>
    # @option params [Types::NdiConfig] :ndi_config
    #   <p> Specifies the configuration settings for a flow's NDI source or output. Required when the flow includes an NDI source or output. </p>
    # @option params [Types::EncodingConfig] :encoding_config
    #   <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. You can choose between several predefined encoding profiles based on common use cases. </p>
    # @option params [Hash<String, String>] :flow_tags
    #   <p> The key-value pairs that can be used to tag and organize the flow. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zone: "String",
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         name: "String",
    #         subscribers: ["String"], # required
    #         entitlement_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     media_streams: [
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: "String",
    #             colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #             exact_framerate: "String",
    #             par: "String",
    #             range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #             scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #             tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #           },
    #           lang: "String"
    #         },
    #         clock_rate: 1,
    #         description: "String",
    #         media_stream_id: 1, # required
    #         media_stream_name: "String", # required
    #         media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #         video_format: "String",
    #         media_stream_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     name: "String", # required
    #     outputs: [
    #       {
    #         cidr_allow_list: ["String"],
    #         description: "String",
    #         destination: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: "String", # required
    #                 destination_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: "main" # One of: ["main", "high"], # required
    #             },
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         port: 1,
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: "String",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         },
    #         output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #         output_tags: {
    #           "String" => "String"
    #         },
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_encryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #         ndi_audio_reference_level: 1
    #       }
    #     ],
    #     source: {
    #       decryption: {
    #         algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #         constant_initialization_vector: "String",
    #         device_id: "String",
    #         key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #         region: "String",
    #         resource_id: "String",
    #         role_arn: "String", # required
    #         secret_arn: "String",
    #         url: "String"
    #       },
    #       description: "String",
    #       entitlement_arn: "String",
    #       ingest_port: 1,
    #       max_bitrate: 1,
    #       max_latency: 1,
    #       max_sync_buffer: 1,
    #       media_stream_source_configurations: [
    #         {
    #           encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #           input_configurations: [
    #             {
    #               input_port: 1, # required
    #               interface: { # required
    #                 name: "String", # required
    #               }
    #             }
    #           ],
    #           media_stream_name: "String", # required
    #         }
    #       ],
    #       min_latency: 1,
    #       name: "String",
    #       protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #       sender_control_port: 1,
    #       sender_ip_address: "String",
    #       source_listener_address: "String",
    #       source_listener_port: 1,
    #       stream_id: "String",
    #       vpc_interface_name: "String",
    #       whitelist_cidr: "String",
    #       gateway_bridge_source: {
    #         bridge_arn: "String", # required
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         }
    #       },
    #       ndi_source_settings: {
    #         source_name: "String",
    #         audio_reference_level: 1
    #       },
    #       source_tags: {
    #         "String" => "String"
    #       },
    #       router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       router_integration_transit_decryption: {
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       }
    #     },
    #     source_failover_config: {
    #       failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     sources: [
    #       {
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         ndi_source_settings: {
    #           source_name: "String",
    #           audio_reference_level: 1
    #         },
    #         source_tags: {
    #           "String" => "String"
    #         },
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     vpc_interfaces: [
    #       {
    #         name: "String", # required
    #         network_interface_type: "ena" # One of: ["ena", "efa"],
    #         role_arn: "String", # required
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #         vpc_interface_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     maintenance: {
    #       maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], # required
    #       maintenance_start_hour: "String", # required
    #     },
    #     source_monitoring_config: {
    #       thumbnail_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       audio_monitoring_settings: [
    #         {
    #           silent_audio: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           }
    #         }
    #       ],
    #       content_quality_analysis_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       video_monitoring_settings: [
    #         {
    #           black_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           },
    #           frozen_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           }
    #         }
    #       ]
    #     },
    #     flow_size: "MEDIUM" # One of: ["MEDIUM", "LARGE", "LARGE_4X"],
    #     ndi_config: {
    #       ndi_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       machine_name: "String",
    #       ndi_discovery_servers: [
    #         {
    #           discovery_server_address: "String", # required
    #           discovery_server_port: 1,
    #           vpc_interface_adapter: "String", # required
    #         }
    #       ]
    #     },
    #     encoding_config: {
    #       encoding_profile: "DISTRIBUTION_H264_DEFAULT" # One of: ["DISTRIBUTION_H264_DEFAULT", "CONTRIBUTION_H264_DEFAULT"],
    #       video_max_bitrate: 1
    #     },
    #     flow_tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow: {
    #       availability_zone: "String", # required
    #       description: "String",
    #       egress_ip: "String",
    #       entitlements: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String", # required
    #           entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           name: "String", # required
    #           subscribers: ["String"], # required
    #         }
    #       ],
    #       flow_arn: "String", # required
    #       media_streams: [
    #         {
    #           attributes: {
    #             fmtp: { # required
    #               channel_order: "String",
    #               colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #               exact_framerate: "String",
    #               par: "String",
    #               range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #               scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #               tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #             },
    #             lang: "String"
    #           },
    #           clock_rate: 1,
    #           description: "String",
    #           fmt: 1, # required
    #           media_stream_id: 1, # required
    #           media_stream_name: "String", # required
    #           media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #           video_format: "String"
    #         }
    #       ],
    #       name: "String", # required
    #       outputs: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           destination: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String",
    #           listener_address: "String",
    #           media_live_input_arn: "String",
    #           media_stream_output_configurations: [
    #             {
    #               destination_configurations: [
    #                 {
    #                   destination_ip: "String", # required
    #                   destination_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   },
    #                   outbound_ip: "String", # required
    #                 }
    #               ],
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               encoding_parameters: {
    #                 compression_factor: 1.0, # required
    #                 encoder_profile: "main" # One of: ["main", "high"], # required
    #               },
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           output_arn: "String", # required
    #           port: 1,
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           bridge_arn: "String",
    #           bridge_ports: [1],
    #           output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_encryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_input_arn: "String"
    #         }
    #       ],
    #       source: { # required
    #         data_transfer_subscriber_fee_percent: 1,
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_ip: "String",
    #         ingest_port: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_ip: "String", # required
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         name: "String", # required
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_arn: "String", # required
    #         transport: {
    #           cidr_allow_list: ["String"],
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           max_sync_buffer: 1,
    #           min_latency: 1,
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           remote_id: "String",
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           smoothing_latency: 1,
    #           source_listener_address: "String",
    #           source_listener_port: 1,
    #           stream_id: "String",
    #           ndi_speed_hq_quality: 1,
    #           ndi_program_name: "String",
    #           ndi_source_settings: {
    #             source_name: "String",
    #             audio_reference_level: 1
    #           },
    #           ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #           ndi_audio_reference_level: 1
    #         },
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         peer_ip_address: "String",
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         connected_router_output_arn: "String"
    #       },
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           decryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           description: "String",
    #           entitlement_arn: "String",
    #           ingest_ip: "String",
    #           ingest_port: 1,
    #           media_stream_source_configurations: [
    #             {
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               input_configurations: [
    #                 {
    #                   input_ip: "String", # required
    #                   input_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   }
    #                 }
    #               ],
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           source_arn: "String", # required
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_name: "String",
    #           whitelist_cidr: "String",
    #           gateway_bridge_source: {
    #             bridge_arn: "String", # required
    #             vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             }
    #           },
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_decryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_output_arn: "String"
    #         }
    #       ],
    #       status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"], # required
    #       vpc_interfaces: [
    #         {
    #           name: "String", # required
    #           network_interface_ids: ["String"], # required
    #           network_interface_type: "ena" # One of: ["ena", "efa"], # required
    #           role_arn: "String", # required
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       ],
    #       maintenance: {
    #         maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
    #         maintenance_deadline: "String",
    #         maintenance_scheduled_date: "String",
    #         maintenance_start_hour: "String"
    #       },
    #       source_monitoring_config: {
    #         thumbnail_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         audio_monitoring_settings: [
    #           {
    #             silent_audio: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ],
    #         content_quality_analysis_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         video_monitoring_settings: [
    #           {
    #             black_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             },
    #             frozen_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ]
    #       },
    #       flow_size: "MEDIUM" # One of: ["MEDIUM", "LARGE", "LARGE_4X"],
    #       ndi_config: {
    #         ndi_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         machine_name: "String",
    #         ndi_discovery_servers: [
    #           {
    #             discovery_server_address: "String", # required
    #             discovery_server_port: 1,
    #             vpc_interface_adapter: "String", # required
    #           }
    #         ]
    #       },
    #       encoding_config: {
    #         encoding_profile: "DISTRIBUTION_H264_DEFAULT" # One of: ["DISTRIBUTION_H264_DEFAULT", "CONTRIBUTION_H264_DEFAULT"],
    #         video_max_bitrate: 1
    #       }
    #     }
    #   }
    # @return [Types::CreateFlowResponse]
    def create_flow(params = {}, options = {})
      request = build_request(:create_flow, params)
      request.send_request(options)
    end

    # <p> Creates a new gateway. The request must include at least one network (up to four).</p>
    # @param [Hash, Types::CreateGatewayRequest] params
    # @option params [Array<String>] :egress_cidr_blocks
    #   <p> The range of IP addresses that are allowed to contribute content or initiate output requests for flows communicating with this gateway. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    # @option params [String] :name
    #   <p> The name of the gateway. This name can not be modified after the gateway is created.</p>
    # @option params [Array<Types::GatewayNetwork>] :networks
    #   <p> The list of networks that you want to add to the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     egress_cidr_blocks: ["String"], # required
    #     name: "String", # required
    #     networks: [ # required
    #       {
    #         cidr_block: "String", # required
    #         name: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway: {
    #       egress_cidr_blocks: ["String"], # required
    #       gateway_arn: "String", # required
    #       gateway_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       gateway_state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"],
    #       name: "String", # required
    #       networks: [ # required
    #         {
    #           cidr_block: "String", # required
    #           name: "String", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateGatewayResponse]
    def create_gateway(params = {}, options = {})
      request = build_request(:create_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a new router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::CreateRouterInputRequest] params
    # @option params [String] :name
    #   <p>The name of the router input.</p>
    # @option params [Types::RouterInputConfiguration] :configuration
    #   <p>The configuration settings for the router input, which can include the protocol, network interface, and other details.</p>
    # @option params [Integer] :maximum_bitrate
    #   <p>The maximum bitrate for the router input.</p>
    # @option params [String] :routing_scope
    #   <p>Specifies whether the router input can be assigned to outputs in different Regions. REGIONAL (default) - connects only to outputs in same Region. GLOBAL - connects to outputs in any Region.</p>
    # @option params [String] :tier
    #   <p>The tier level for the router input. The tier sets the maximum bitrate, in Mbps, for the router input. Valid values include the following:</p> <ul> <li> <p> <code>INPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>INPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>INPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>INPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>INPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region for the router input. Defaults to the current region if not specified.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you want to create the router input. This must be a valid Availability Zone for the region specified by <code>regionName</code>, or the current region if no <code>regionName</code> is provided. </p>
    # @option params [Types::RouterInputTransitEncryption] :transit_encryption
    #   <p>The transit encryption settings for the router input.</p>
    # @option params [Types::MaintenanceConfiguration] :maintenance_configuration
    #   <p>The maintenance configuration settings for the router input, including preferred maintenance windows and schedules.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that can be used to tag and organize this router input.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    # @option params [Types::RouterContentQualityAnalysisConfiguration] :content_quality_analysis_configuration
    #   <p>The content quality analysis configuration for the router input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     configuration: { # required
    #       # One of:
    #       standard: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configuration: { # required
    #           # One of:
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             source_address: "String", # required
    #             source_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #       },
    #       media_live_channel: {
    #         media_live_channel_arn: "MediaLiveChannelArn",
    #         media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #         media_live_channel_output_name: "String",
    #         source_transit_decryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       failover: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configurations: [{ # required
    #           # One of:
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             source_address: "String", # required
    #             source_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         }],
    #         source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #         primary_source_index: 1
    #       },
    #       media_connect_flow: {
    #         flow_arn: "FlowArn",
    #         flow_output_arn: "FlowOutputArn",
    #         source_transit_decryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       merge: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configurations: [{ # required
    #           # One of:
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           }
    #         }],
    #         merge_recovery_window_milliseconds: 1, # required
    #       }
    #     },
    #     maximum_bitrate: 1, # required
    #     routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #     tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"], # required
    #     region_name: "String",
    #     availability_zone: "String",
    #     transit_encryption: {
    #       encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #       encryption_key_configuration: { # required
    #         # One of:
    #         secrets_manager: {
    #           secret_arn: "SecretArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         automatic: {
    #         }
    #       }
    #     },
    #     maintenance_configuration: {
    #       # One of:
    #       preferred_day_time: {
    #         day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #         time: "String", # required
    #       },
    #       default: {
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken",
    #     content_quality_analysis_configuration: {
    #       # One of:
    #       content_level: {
    #         black_frames: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         },
    #         frozen_frames: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         },
    #         silent_audio: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_input: { # required
    #       name: "String", # required
    #       arn: "RouterInputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       input_type: "STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #         },
    #         media_live_channel: {
    #           media_live_channel_arn: "MediaLiveChannelArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           media_live_channel_output_name: "String",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         failover: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           }],
    #           source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #           primary_source_index: 1
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_output_arn: "FlowOutputArn",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         merge: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             },
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             }
    #           }],
    #           merge_recovery_window_milliseconds: 1, # required
    #         }
    #       },
    #       routed_outputs: 1, # required
    #       maximum_routed_outputs: 1,
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"], # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       transit_encryption: { # required
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       },
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           source_ip_address: "String"
    #         },
    #         media_live_channel: {
    #         },
    #         failover: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         },
    #         media_connect_flow: {
    #         },
    #         merge: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         }
    #       },
    #       ip_address: "String",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       content_quality_analysis_type: "CONTENT_LEVEL" # One of: ["CONTENT_LEVEL"], # required
    #       content_quality_analysis_configuration: { # required
    #         # One of:
    #         content_level: {
    #           black_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           frozen_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           silent_audio: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateRouterInputResponse]
    def create_router_input(params = {}, options = {})
      request = build_request(:create_router_input, params)
      request.send_request(options)
    end

    # <p>Creates a new router network interface in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::CreateRouterNetworkInterfaceRequest] params
    # @option params [String] :name
    #   <p>The name of the router network interface.</p>
    # @option params [Types::RouterNetworkInterfaceConfiguration] :configuration
    #   <p>The configuration settings for the router network interface.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region for the router network interface. Defaults to the current region if not specified.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that can be used to tag and organize this router network interface.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     configuration: { # required
    #       # One of:
    #       public: {
    #         allow_rules: [ # required
    #           {
    #             cidr: "String", # required
    #           }
    #         ]
    #       },
    #       vpc: {
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #       }
    #     },
    #     region_name: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_router_network_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_network_interface: { # required
    #       name: "String", # required
    #       arn: "RouterNetworkInterfaceArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #       network_interface_type: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       configuration: { # required
    #         # One of:
    #         public: {
    #           allow_rules: [ # required
    #             {
    #               cidr: "String", # required
    #             }
    #           ]
    #         },
    #         vpc: {
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       },
    #       associated_output_count: 1, # required
    #       associated_input_count: 1, # required
    #       region_name: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       tags: { # required
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateRouterNetworkInterfaceResponse]
    def create_router_network_interface(params = {}, options = {})
      request = build_request(:create_router_network_interface, params)
      request.send_request(options)
    end

    # <p>Creates a new router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::CreateRouterOutputRequest] params
    # @option params [String] :name
    #   <p>The name of the router output.</p>
    # @option params [Types::RouterOutputConfiguration] :configuration
    #   <p>The configuration settings for the router output.</p>
    # @option params [Integer] :maximum_bitrate
    #   <p>The maximum bitrate for the router output.</p>
    # @option params [String] :routing_scope
    #   <p>Specifies whether the router output can take inputs that are in different Regions. REGIONAL (default) - can only take inputs from same Region. GLOBAL - can take inputs from any Region.</p>
    # @option params [String] :tier
    #   <p>The tier level for the router output. The tier sets the maximum bitrate, in Mbps, for the router output. Valid values include the following:</p> <ul> <li> <p> <code>OUTPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>OUTPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>OUTPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>OUTPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>OUTPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region for the router output. Defaults to the current region if not specified.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you want to create the router output. This must be a valid Availability Zone for the region specified by <code>regionName</code>, or the current region if no <code>regionName</code> is provided. </p>
    # @option params [Types::MaintenanceConfiguration] :maintenance_configuration
    #   <p>The maintenance configuration settings for the router output, including preferred maintenance windows and schedules.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that can be used to tag this router output.</p>
    # @option params [Types::FabricConfiguration] :fabric_configuration
    #   <p>The fabric configuration settings for the router output.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     configuration: { # required
    #       # One of:
    #       standard: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configuration: { # required
    #           # One of:
    #           rist: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             encryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtmp_push: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             application_name: "String", # required
    #             stream_name: "String", # required
    #             tls_encryption: {
    #               encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #               encryption_configuration: { # required
    #                 # One of:
    #                 public: {
    #                 }
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             encryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #       },
    #       media_connect_flow: {
    #         flow_arn: "FlowArn",
    #         flow_source_arn: "FlowSourceArn",
    #         destination_transit_encryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       media_live_input: {
    #         media_live_input_arn: "MediaLiveInputArn",
    #         media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #         destination_transit_encryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       }
    #     },
    #     maximum_bitrate: 1, # required
    #     routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #     tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"], # required
    #     region_name: "String",
    #     availability_zone: "String",
    #     maintenance_configuration: {
    #       # One of:
    #       preferred_day_time: {
    #         day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #         time: "String", # required
    #       },
    #       default: {
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     fabric_configuration: {
    #       recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_output: { # required
    #       name: "String", # required
    #       arn: "RouterOutputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       output_type: "STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtmp_push: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               application_name: "String", # required
    #               stream_name: "String", # required
    #               tls_encryption: {
    #                 encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #                 encryption_configuration: { # required
    #                   # One of:
    #                   public: {
    #                   }
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_source_arn: "FlowSourceArn",
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         media_live_input: {
    #           media_live_input_arn: "MediaLiveInputArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         }
    #       },
    #       routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           destination_ip_address: "String"
    #         },
    #         media_connect_flow: {
    #         },
    #         media_live_input: {
    #         }
    #       },
    #       ip_address: "String",
    #       routed_input_arn: "RouterInputArn",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       fabric_configuration: { # required
    #         recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateRouterOutputResponse]
    def create_router_output(params = {}, options = {})
      request = build_request(:create_router_output, params)
      request.send_request(options)
    end

    # <p> Deletes a bridge. Before you can delete a bridge, you must stop the bridge.</p>
    # @param [Hash, Types::DeleteBridgeRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_bridge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String"
    #   }
    # @return [Types::DeleteBridgeResponse]
    def delete_bridge(params = {}, options = {})
      request = build_request(:delete_bridge, params)
      request.send_request(options)
    end

    # <p> Deletes a flow. Before you can delete a flow, you must stop the flow.</p>
    # @param [Hash, Types::DeleteFlowRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.delete_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   }
    # @return [Types::DeleteFlowResponse]
    def delete_flow(params = {}, options = {})
      request = build_request(:delete_flow, params)
      request.send_request(options)
    end

    # <p> Deletes a gateway. Before you can delete a gateway, you must deregister its instances and delete its bridges.</p>
    # @param [Hash, Types::DeleteGatewayRequest] params
    # @option params [String] :gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "String"
    #   }
    # @return [Types::DeleteGatewayResponse]
    def delete_gateway(params = {}, options = {})
      request = build_request(:delete_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a router input from AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::DeleteRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.delete_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::DeleteRouterInputResponse]
    def delete_router_input(params = {}, options = {})
      request = build_request(:delete_router_input, params)
      request.send_request(options)
    end

    # <p>Deletes a router network interface from AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::DeleteRouterNetworkInterfaceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterNetworkInterfaceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_router_network_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterNetworkInterfaceArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #   }
    # @return [Types::DeleteRouterNetworkInterfaceResponse]
    def delete_router_network_interface(params = {}, options = {})
      request = build_request(:delete_router_network_interface, params)
      request.send_request(options)
    end

    # <p>Deletes a router output from AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::DeleteRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #   }
    #   options = {}
    #   response = client.delete_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterOutputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::DeleteRouterOutputResponse]
    def delete_router_output(params = {}, options = {})
      request = build_request(:delete_router_output, params)
      request.send_request(options)
    end

    # <p> Deregisters an instance. Before you deregister an instance, all bridges running on the instance must be stopped. If you want to deregister an instance without stopping the bridges, you must use the --force option.</p>
    # @param [Hash, Types::DeregisterGatewayInstanceRequest] params
    # @option params [Boolean] :force
    #   <p> Force the deregistration of an instance. Force will deregister an instance, even if there are bridges running on it.</p>
    # @option params [String] :gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that contains the instance that you want to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     force: false,
    #     gateway_instance_arn: "GatewayInstanceArn", # required
    #   }
    #   options = {}
    #   response = client.deregister_gateway_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_instance_arn: "String",
    #     instance_state: "REGISTERING" # One of: ["REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"]
    #   }
    # @return [Types::DeregisterGatewayInstanceResponse]
    def deregister_gateway_instance(params = {}, options = {})
      request = build_request(:deregister_gateway_instance, params)
      request.send_request(options)
    end

    # <p> Displays the details of a bridge.</p>
    # @param [Hash, Types::DescribeBridgeRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_bridge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge: {
    #       bridge_arn: "String", # required
    #       bridge_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       bridge_state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"], # required
    #       egress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #       },
    #       ingress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #         max_outputs: 1, # required
    #       },
    #       name: "String", # required
    #       outputs: [
    #         {
    #           flow_output: {
    #             flow_arn: "String", # required
    #             flow_source_arn: "String", # required
    #             name: "String", # required
    #           },
    #           network_output: {
    #             ip_address: "String", # required
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             ttl: 1, # required
    #           }
    #         }
    #       ],
    #       placement_arn: "String", # required
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           flow_source: {
    #             flow_arn: "String", # required
    #             flow_vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             },
    #             name: "String", # required
    #             output_arn: "String"
    #           },
    #           network_source: {
    #             multicast_ip: "String", # required
    #             multicast_source_settings: {
    #               multicast_source_ip: "String"
    #             },
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeBridgeResponse]
    def describe_bridge(params = {}, options = {})
      request = build_request(:describe_bridge, params)
      request.send_request(options)
    end

    # <p> Displays the details of a flow. The response includes the flow Amazon Resource Name (ARN), name, and Availability Zone, as well as details about the source, outputs, and entitlements.</p>
    # @param [Hash, Types::DescribeFlowRequest] params
    # @option params [String] :flow_arn
    #   <p> The ARN of the flow that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.describe_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow: {
    #       availability_zone: "String", # required
    #       description: "String",
    #       egress_ip: "String",
    #       entitlements: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String", # required
    #           entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           name: "String", # required
    #           subscribers: ["String"], # required
    #         }
    #       ],
    #       flow_arn: "String", # required
    #       media_streams: [
    #         {
    #           attributes: {
    #             fmtp: { # required
    #               channel_order: "String",
    #               colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #               exact_framerate: "String",
    #               par: "String",
    #               range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #               scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #               tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #             },
    #             lang: "String"
    #           },
    #           clock_rate: 1,
    #           description: "String",
    #           fmt: 1, # required
    #           media_stream_id: 1, # required
    #           media_stream_name: "String", # required
    #           media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #           video_format: "String"
    #         }
    #       ],
    #       name: "String", # required
    #       outputs: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           destination: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String",
    #           listener_address: "String",
    #           media_live_input_arn: "String",
    #           media_stream_output_configurations: [
    #             {
    #               destination_configurations: [
    #                 {
    #                   destination_ip: "String", # required
    #                   destination_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   },
    #                   outbound_ip: "String", # required
    #                 }
    #               ],
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               encoding_parameters: {
    #                 compression_factor: 1.0, # required
    #                 encoder_profile: "main" # One of: ["main", "high"], # required
    #               },
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           output_arn: "String", # required
    #           port: 1,
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           bridge_arn: "String",
    #           bridge_ports: [1],
    #           output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_encryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_input_arn: "String"
    #         }
    #       ],
    #       source: { # required
    #         data_transfer_subscriber_fee_percent: 1,
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_ip: "String",
    #         ingest_port: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_ip: "String", # required
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         name: "String", # required
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_arn: "String", # required
    #         transport: {
    #           cidr_allow_list: ["String"],
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           max_sync_buffer: 1,
    #           min_latency: 1,
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           remote_id: "String",
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           smoothing_latency: 1,
    #           source_listener_address: "String",
    #           source_listener_port: 1,
    #           stream_id: "String",
    #           ndi_speed_hq_quality: 1,
    #           ndi_program_name: "String",
    #           ndi_source_settings: {
    #             source_name: "String",
    #             audio_reference_level: 1
    #           },
    #           ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #           ndi_audio_reference_level: 1
    #         },
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         peer_ip_address: "String",
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         connected_router_output_arn: "String"
    #       },
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           decryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           description: "String",
    #           entitlement_arn: "String",
    #           ingest_ip: "String",
    #           ingest_port: 1,
    #           media_stream_source_configurations: [
    #             {
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               input_configurations: [
    #                 {
    #                   input_ip: "String", # required
    #                   input_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   }
    #                 }
    #               ],
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           source_arn: "String", # required
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_name: "String",
    #           whitelist_cidr: "String",
    #           gateway_bridge_source: {
    #             bridge_arn: "String", # required
    #             vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             }
    #           },
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_decryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_output_arn: "String"
    #         }
    #       ],
    #       status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"], # required
    #       vpc_interfaces: [
    #         {
    #           name: "String", # required
    #           network_interface_ids: ["String"], # required
    #           network_interface_type: "ena" # One of: ["ena", "efa"], # required
    #           role_arn: "String", # required
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       ],
    #       maintenance: {
    #         maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
    #         maintenance_deadline: "String",
    #         maintenance_scheduled_date: "String",
    #         maintenance_start_hour: "String"
    #       },
    #       source_monitoring_config: {
    #         thumbnail_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         audio_monitoring_settings: [
    #           {
    #             silent_audio: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ],
    #         content_quality_analysis_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         video_monitoring_settings: [
    #           {
    #             black_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             },
    #             frozen_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ]
    #       },
    #       flow_size: "MEDIUM" # One of: ["MEDIUM", "LARGE", "LARGE_4X"],
    #       ndi_config: {
    #         ndi_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         machine_name: "String",
    #         ndi_discovery_servers: [
    #           {
    #             discovery_server_address: "String", # required
    #             discovery_server_port: 1,
    #             vpc_interface_adapter: "String", # required
    #           }
    #         ]
    #       },
    #       encoding_config: {
    #         encoding_profile: "DISTRIBUTION_H264_DEFAULT" # One of: ["DISTRIBUTION_H264_DEFAULT", "CONTRIBUTION_H264_DEFAULT"],
    #         video_max_bitrate: 1
    #       }
    #     },
    #     messages: {
    #       errors: ["String"], # required
    #     }
    #   }
    # @return [Types::DescribeFlowResponse]
    def describe_flow(params = {}, options = {})
      request = build_request(:describe_flow, params)
      request.send_request(options)
    end

    # <p> The <code>DescribeFlowSourceMetadata</code> API is used to view information about the flow's source transport stream and programs. This API displays status messages about the flow's source as well as details about the program's video, audio, and other data. </p>
    # @param [Hash, Types::DescribeFlowSourceMetadataRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.describe_flow_source_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     messages: [
    #       {
    #         code: "String", # required
    #         message: "String", # required
    #         resource_name: "String"
    #       }
    #     ],
    #     timestamp: Time.now,
    #     transport_media_info: {
    #       programs: [ # required
    #         {
    #           pcr_pid: 1, # required
    #           program_name: "String",
    #           program_number: 1, # required
    #           program_pid: 1, # required
    #           streams: [ # required
    #             {
    #               channels: 1,
    #               codec: "String",
    #               color: {
    #                 colorimetry: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "GENERIC_FILM", "BT2020", "SMPTE428", "SMPTE431", "SMPTE432"],
    #                 transfer_characteristics: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "LINEAR", "LOG100", "LOG316", "IEC61966_2_4", "BT1361_ECG", "IEC61966_2_1", "BT2020_10", "BT2020_12", "BT2100_PQ", "SMPTE428", "BT2100_HLG"],
    #                 matrix_coefficients: "IDENTITY" # One of: ["IDENTITY", "BT709", "FCC", "BT470BG", "BT601", "SMPTE240M", "YCGCO", "BT2020_NCL", "BT2020_CL", "SMPTE2085", "CHROMATICITY_DERIVED_NCL", "CHROMATICITY_DERIVED_CL", "BT2100_ICTCP", "IPT_C2"]
    #               },
    #               frame_rate: "String",
    #               frame_resolution: {
    #                 frame_height: 1, # required
    #                 frame_width: 1, # required
    #               },
    #               pid: 1, # required
    #               sample_rate: 1,
    #               sample_size: 1,
    #               stream_type: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       ts_id: 1
    #     },
    #     ndi_info: {
    #       active_source: {
    #         source_name: "String", # required
    #       },
    #       discovered_sources: [ # required
    #         {
    #           source_name: "String", # required
    #         }
    #       ],
    #       media_info: { # required
    #         streams: [ # required
    #           {
    #             stream_type: "String", # required
    #             codec: "String", # required
    #             stream_id: 1, # required
    #             scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #             color: {
    #               colorimetry: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "GENERIC_FILM", "BT2020", "SMPTE428", "SMPTE431", "SMPTE432"],
    #               transfer_characteristics: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "LINEAR", "LOG100", "LOG316", "IEC61966_2_4", "BT1361_ECG", "IEC61966_2_1", "BT2020_10", "BT2020_12", "BT2100_PQ", "SMPTE428", "BT2100_HLG"],
    #               matrix_coefficients: "IDENTITY" # One of: ["IDENTITY", "BT709", "FCC", "BT470BG", "BT601", "SMPTE240M", "YCGCO", "BT2020_NCL", "BT2020_CL", "SMPTE2085", "CHROMATICITY_DERIVED_NCL", "CHROMATICITY_DERIVED_CL", "BT2100_ICTCP", "IPT_C2"]
    #             },
    #             frame_resolution: {
    #               frame_height: 1, # required
    #               frame_width: 1, # required
    #             },
    #             frame_rate: "String",
    #             channels: 1,
    #             sample_rate: 1
    #           }
    #         ]
    #       },
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeFlowSourceMetadataResponse]
    def describe_flow_source_metadata(params = {}, options = {})
      request = build_request(:describe_flow_source_metadata, params)
      request.send_request(options)
    end

    # <p> Describes the thumbnail for the flow source. </p>
    # @param [Hash, Types::DescribeFlowSourceThumbnailRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.describe_flow_source_thumbnail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thumbnail_details: {
    #       flow_arn: "String", # required
    #       thumbnail: "String",
    #       thumbnail_messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       timecode: "String",
    #       timestamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeFlowSourceThumbnailResponse]
    def describe_flow_source_thumbnail(params = {}, options = {})
      request = build_request(:describe_flow_source_thumbnail, params)
      request.send_request(options)
    end

    # <p> Displays the details of a gateway. The response includes the gateway Amazon Resource Name (ARN), name, and CIDR blocks, as well as details about the networks.</p>
    # @param [Hash, Types::DescribeGatewayRequest] params
    # @option params [String] :gateway_arn
    #   <p> The ARN of the gateway that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayArn", # required
    #   }
    #   options = {}
    #   response = client.describe_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway: {
    #       egress_cidr_blocks: ["String"], # required
    #       gateway_arn: "String", # required
    #       gateway_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       gateway_state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"],
    #       name: "String", # required
    #       networks: [ # required
    #         {
    #           cidr_block: "String", # required
    #           name: "String", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeGatewayResponse]
    def describe_gateway(params = {}, options = {})
      request = build_request(:describe_gateway, params)
      request.send_request(options)
    end

    # <p> Displays the details of an instance. </p>
    # @param [Hash, Types::DescribeGatewayInstanceRequest] params
    # @option params [String] :gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway instance that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_instance_arn: "GatewayInstanceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_gateway_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_instance: {
    #       bridge_placement: "AVAILABLE" # One of: ["AVAILABLE", "LOCKED"], # required
    #       connection_status: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED"], # required
    #       gateway_arn: "String", # required
    #       gateway_instance_arn: "String", # required
    #       instance_id: "String", # required
    #       instance_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       instance_state: "REGISTERING" # One of: ["REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"], # required
    #       running_bridge_count: 1, # required
    #     }
    #   }
    # @return [Types::DescribeGatewayInstanceResponse]
    def describe_gateway_instance(params = {}, options = {})
      request = build_request(:describe_gateway_instance, params)
      request.send_request(options)
    end

    # <p> Displays the details of an offering. The response includes the offering description, duration, outbound bandwidth, price, and Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::DescribeOfferingRequest] params
    # @option params [String] :offering_arn
    #   <p> The ARN of the offering.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_arn: "OfferingArn", # required
    #   }
    #   options = {}
    #   response = client.describe_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offering: {
    #       currency_code: "String", # required
    #       duration: 1, # required
    #       duration_units: "MONTHS" # One of: ["MONTHS"], # required
    #       offering_arn: "String", # required
    #       offering_description: "String", # required
    #       price_per_unit: "String", # required
    #       price_units: "HOURLY" # One of: ["HOURLY"], # required
    #       resource_specification: { # required
    #         reserved_bitrate: 1,
    #         resource_type: "Mbps_Outbound_Bandwidth" # One of: ["Mbps_Outbound_Bandwidth"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeOfferingResponse]
    def describe_offering(params = {}, options = {})
      request = build_request(:describe_offering, params)
      request.send_request(options)
    end

    # <p> Displays the details of a reservation. The response includes the reservation name, state, start date and time, and the details of the offering that make up the rest of the reservation (such as price, duration, and outbound bandwidth).</p>
    # @param [Hash, Types::DescribeReservationRequest] params
    # @option params [String] :reservation_arn
    #   <p>The Amazon Resource Name (ARN) of the offering. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reservation_arn: "ReservationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation: {
    #       currency_code: "String", # required
    #       duration: 1, # required
    #       duration_units: "MONTHS" # One of: ["MONTHS"], # required
    #       end: "String", # required
    #       offering_arn: "String", # required
    #       offering_description: "String", # required
    #       price_per_unit: "String", # required
    #       price_units: "HOURLY" # One of: ["HOURLY"], # required
    #       reservation_arn: "String", # required
    #       reservation_name: "String", # required
    #       reservation_state: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"], # required
    #       resource_specification: { # required
    #         reserved_bitrate: 1,
    #         resource_type: "Mbps_Outbound_Bandwidth" # One of: ["Mbps_Outbound_Bandwidth"], # required
    #       },
    #       start: "String", # required
    #     }
    #   }
    # @return [Types::DescribeReservationResponse]
    def describe_reservation(params = {}, options = {})
      request = build_request(:describe_reservation, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::GetRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.get_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_input: { # required
    #       name: "String", # required
    #       arn: "RouterInputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       input_type: "STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #         },
    #         media_live_channel: {
    #           media_live_channel_arn: "MediaLiveChannelArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           media_live_channel_output_name: "String",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         failover: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           }],
    #           source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #           primary_source_index: 1
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_output_arn: "FlowOutputArn",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         merge: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             },
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             }
    #           }],
    #           merge_recovery_window_milliseconds: 1, # required
    #         }
    #       },
    #       routed_outputs: 1, # required
    #       maximum_routed_outputs: 1,
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"], # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       transit_encryption: { # required
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       },
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           source_ip_address: "String"
    #         },
    #         media_live_channel: {
    #         },
    #         failover: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         },
    #         media_connect_flow: {
    #         },
    #         merge: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         }
    #       },
    #       ip_address: "String",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       content_quality_analysis_type: "CONTENT_LEVEL" # One of: ["CONTENT_LEVEL"], # required
    #       content_quality_analysis_configuration: { # required
    #         # One of:
    #         content_level: {
    #           black_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           frozen_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           silent_audio: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetRouterInputResponse]
    def get_router_input(params = {}, options = {})
      request = build_request(:get_router_input, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed metadata information about a specific router input source, including stream details and connection state.</p>
    # @param [Hash, Types::GetRouterInputSourceMetadataRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input to retrieve metadata for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.get_router_input_source_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     source_metadata_details: { # required
    #       source_metadata_messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       timestamp: Time.now, # required
    #       router_input_metadata: {
    #         # One of:
    #         transport_stream_media_info: {
    #           programs: [ # required
    #             {
    #               pcr_pid: 1, # required
    #               program_name: "String",
    #               program_number: 1, # required
    #               program_pid: 1, # required
    #               streams: [ # required
    #                 {
    #                   channels: 1,
    #                   codec: "String",
    #                   color: {
    #                     colorimetry: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "GENERIC_FILM", "BT2020", "SMPTE428", "SMPTE431", "SMPTE432"],
    #                     transfer_characteristics: "BT709" # One of: ["BT709", "BT470M", "BT470BG", "BT601", "SMPTE240M", "LINEAR", "LOG100", "LOG316", "IEC61966_2_4", "BT1361_ECG", "IEC61966_2_1", "BT2020_10", "BT2020_12", "BT2100_PQ", "SMPTE428", "BT2100_HLG"],
    #                     matrix_coefficients: "IDENTITY" # One of: ["IDENTITY", "BT709", "FCC", "BT470BG", "BT601", "SMPTE240M", "YCGCO", "BT2020_NCL", "BT2020_CL", "SMPTE2085", "CHROMATICITY_DERIVED_NCL", "CHROMATICITY_DERIVED_CL", "BT2100_ICTCP", "IPT_C2"]
    #                   },
    #                   frame_rate: "String",
    #                   frame_resolution: {
    #                     frame_height: 1, # required
    #                     frame_width: 1, # required
    #                   },
    #                   pid: 1, # required
    #                   sample_rate: 1,
    #                   sample_size: 1,
    #                   stream_type: "String", # required
    #                 }
    #               ]
    #             }
    #           ],
    #           ts_id: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetRouterInputSourceMetadataResponse]
    def get_router_input_source_metadata(params = {}, options = {})
      request = build_request(:get_router_input_source_metadata, params)
      request.send_request(options)
    end

    # <p>Retrieves the thumbnail for a router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::GetRouterInputThumbnailRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to see a thumbnail of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.get_router_input_thumbnail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     thumbnail_details: { # required
    #       thumbnail_messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       thumbnail: "data",
    #       timecode: "String",
    #       timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetRouterInputThumbnailResponse]
    def get_router_input_thumbnail(params = {}, options = {})
      request = build_request(:get_router_input_thumbnail, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific router network interface in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::GetRouterNetworkInterfaceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterNetworkInterfaceArn", # required
    #   }
    #   options = {}
    #   response = client.get_router_network_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_network_interface: { # required
    #       name: "String", # required
    #       arn: "RouterNetworkInterfaceArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #       network_interface_type: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       configuration: { # required
    #         # One of:
    #         public: {
    #           allow_rules: [ # required
    #             {
    #               cidr: "String", # required
    #             }
    #           ]
    #         },
    #         vpc: {
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       },
    #       associated_output_count: 1, # required
    #       associated_input_count: 1, # required
    #       region_name: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       tags: { # required
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::GetRouterNetworkInterfaceResponse]
    def get_router_network_interface(params = {}, options = {})
      request = build_request(:get_router_network_interface, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::GetRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #   }
    #   options = {}
    #   response = client.get_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_output: { # required
    #       name: "String", # required
    #       arn: "RouterOutputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       output_type: "STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtmp_push: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               application_name: "String", # required
    #               stream_name: "String", # required
    #               tls_encryption: {
    #                 encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #                 encryption_configuration: { # required
    #                   # One of:
    #                   public: {
    #                   }
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_source_arn: "FlowSourceArn",
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         media_live_input: {
    #           media_live_input_arn: "MediaLiveInputArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         }
    #       },
    #       routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           destination_ip_address: "String"
    #         },
    #         media_connect_flow: {
    #         },
    #         media_live_input: {
    #         }
    #       },
    #       ip_address: "String",
    #       routed_input_arn: "RouterInputArn",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       fabric_configuration: { # required
    #         recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetRouterOutputResponse]
    def get_router_output(params = {}, options = {})
      request = build_request(:get_router_output, params)
      request.send_request(options)
    end

    # <p> Grants entitlements to an existing flow.</p>
    # @param [Hash, Types::GrantFlowEntitlementsRequest] params
    # @option params [Array<Types::GrantEntitlementRequest>] :entitlements
    #   <p> The list of entitlements that you want to grant.</p>
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to grant entitlements on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entitlements: [ # required
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         name: "String",
    #         subscribers: ["String"], # required
    #         entitlement_tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.grant_flow_entitlements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         encryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         entitlement_arn: "String", # required
    #         entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         name: "String", # required
    #         subscribers: ["String"], # required
    #       }
    #     ],
    #     flow_arn: "String"
    #   }
    # @return [Types::GrantFlowEntitlementsResponse]
    def grant_flow_entitlements(params = {}, options = {})
      request = build_request(:grant_flow_entitlements, params)
      request.send_request(options)
    end

    # <p> Displays a list of bridges that are associated with this account and an optionally specified Amazon Resource Name (ARN). This request returns a paginated result.</p>
    # @param [Hash, Types::ListBridgesRequest] params
    # @option params [String] :filter_arn
    #   <p> Filter the list results to display only the bridges associated with the selected ARN.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListBridges</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_arn: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_bridges(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridges: [
    #       {
    #         bridge_arn: "String", # required
    #         bridge_state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"], # required
    #         bridge_type: "String", # required
    #         name: "String", # required
    #         placement_arn: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBridgesResponse]
    def list_bridges(params = {}, options = {})
      request = build_request(:list_bridges, params)
      request.send_request(options)
    end

    # <p> Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.</p>
    # @param [Hash, Types::ListEntitlementsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListEntitlements</code> request with set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 20 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListEntitlements</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListEntitlements</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_entitlements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         entitlement_arn: "String", # required
    #         entitlement_name: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntitlementsResponse]
    def list_entitlements(params = {}, options = {})
      request = build_request(:list_entitlements, params)
      request.send_request(options)
    end

    # <p> Displays a list of flows that are associated with this account. This request returns a paginated result.</p>
    # @param [Hash, Types::ListFlowsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListFlows</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flows: [
    #       {
    #         availability_zone: "String", # required
    #         description: "String", # required
    #         flow_arn: "String", # required
    #         name: "String", # required
    #         source_type: "OWNED" # One of: ["OWNED", "ENTITLED"], # required
    #         status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"], # required
    #         maintenance: {
    #           maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
    #           maintenance_deadline: "String",
    #           maintenance_scheduled_date: "String",
    #           maintenance_start_hour: "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFlowsResponse]
    def list_flows(params = {}, options = {})
      request = build_request(:list_flows, params)
      request.send_request(options)
    end

    # <p> Displays a list of instances associated with the Amazon Web Services account. This request returns a paginated result. You can use the filterArn property to display only the instances associated with the selected Gateway Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListGatewayInstancesRequest] params
    # @option params [String] :filter_arn
    #   <p> Filter the list results to display only the instances associated with the selected Gateway ARN.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a ListInstances request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListInstances</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListInstances</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_arn: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_gateway_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         gateway_arn: "String", # required
    #         gateway_instance_arn: "String", # required
    #         instance_id: "String", # required
    #         instance_state: "REGISTERING" # One of: ["REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListGatewayInstancesResponse]
    def list_gateway_instances(params = {}, options = {})
      request = build_request(:list_gateway_instances, params)
      request.send_request(options)
    end

    # <p> Displays a list of gateways that are associated with this account. This request returns a paginated result.</p>
    # @param [Hash, Types::ListGatewaysRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListGateways</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateways: [
    #       {
    #         gateway_arn: "String", # required
    #         gateway_state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"], # required
    #         name: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListGatewaysResponse]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p> Displays a list of all offerings that are available to this account in the current Amazon Web Services Region. If you have an active reservation (which means you've purchased an offering that has already started and hasn't expired yet), your account isn't eligible for other offerings.</p>
    # @param [Hash, Types::ListOfferingsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     offerings: [
    #       {
    #         currency_code: "String", # required
    #         duration: 1, # required
    #         duration_units: "MONTHS" # One of: ["MONTHS"], # required
    #         offering_arn: "String", # required
    #         offering_description: "String", # required
    #         price_per_unit: "String", # required
    #         price_units: "HOURLY" # One of: ["HOURLY"], # required
    #         resource_specification: { # required
    #           reserved_bitrate: 1,
    #           resource_type: "Mbps_Outbound_Bandwidth" # One of: ["Mbps_Outbound_Bandwidth"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListOfferingsResponse]
    def list_offerings(params = {}, options = {})
      request = build_request(:list_offerings, params)
      request.send_request(options)
    end

    # <p> Displays a list of all reservations that have been purchased by this account in the current Amazon Web Services Region. This list includes all reservations in all states (such as active and expired).</p>
    # @param [Hash, Types::ListReservationsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    # @option params [String] :next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_reservations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reservations: [
    #       {
    #         currency_code: "String", # required
    #         duration: 1, # required
    #         duration_units: "MONTHS" # One of: ["MONTHS"], # required
    #         end: "String", # required
    #         offering_arn: "String", # required
    #         offering_description: "String", # required
    #         price_per_unit: "String", # required
    #         price_units: "HOURLY" # One of: ["HOURLY"], # required
    #         reservation_arn: "String", # required
    #         reservation_name: "String", # required
    #         reservation_state: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"], # required
    #         resource_specification: { # required
    #           reserved_bitrate: 1,
    #           resource_type: "Mbps_Outbound_Bandwidth" # One of: ["Mbps_Outbound_Bandwidth"], # required
    #         },
    #         start: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListReservationsResponse]
    def list_reservations(params = {}, options = {})
      request = build_request(:list_reservations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of router inputs in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::ListRouterInputsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of router inputs to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used to retrieve the next page of results.</p>
    # @option params [Array<Types::RouterInputFilter>] :filters
    #   <p>The filters to apply when retrieving the list of router inputs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [{
    #       # One of:
    #       name_contains: ["String"],
    #       region_names: ["String"],
    #       network_interface_arns: ["RouterNetworkInterfaceArn"],
    #       routing_scopes: ["REGIONAL" # One of: ["REGIONAL", "GLOBAL"]],
    #       input_types: ["STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"]]
    #     }]
    #   }
    #   options = {}
    #   response = client.list_router_inputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_inputs: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterInputArn", # required
    #         id: "String", # required
    #         input_type: "STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"], # required
    #         state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #         routed_outputs: 1, # required
    #         region_name: "String", # required
    #         availability_zone: "String", # required
    #         maximum_bitrate: 1, # required
    #         routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         message_count: 1, # required
    #         network_interface_arn: "RouterNetworkInterfaceArn",
    #         maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #         maintenance_schedule: {
    #           # One of:
    #           window: {
    #             start: Time.now, # required
    #             end: Time.now, # required
    #             scheduled_time: Time.now, # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRouterInputsResponse]
    def list_router_inputs(params = {}, options = {})
      request = build_request(:list_router_inputs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of router network interfaces in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::ListRouterNetworkInterfacesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of router network interfaces to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used to retrieve the next page of results.</p>
    # @option params [Array<Types::RouterNetworkInterfaceFilter>] :filters
    #   <p>The filters to apply when retrieving the list of router network interfaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [{
    #       # One of:
    #       region_names: ["String"],
    #       network_interface_types: ["PUBLIC" # One of: ["PUBLIC", "VPC"]],
    #       name_contains: ["String"]
    #     }]
    #   }
    #   options = {}
    #   response = client.list_router_network_interfaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_network_interfaces: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterNetworkInterfaceArn", # required
    #         id: "String", # required
    #         network_interface_type: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #         associated_output_count: 1, # required
    #         associated_input_count: 1, # required
    #         state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #         region_name: "String", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRouterNetworkInterfacesResponse]
    def list_router_network_interfaces(params = {}, options = {})
      request = build_request(:list_router_network_interfaces, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of router outputs in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::ListRouterOutputsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of router outputs to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used to retrieve the next page of results.</p>
    # @option params [Array<Types::RouterOutputFilter>] :filters
    #   <p>The filters to apply when retrieving the list of router outputs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [{
    #       # One of:
    #       region_names: ["String"],
    #       network_interface_arns: ["RouterNetworkInterfaceArn"],
    #       routing_scopes: ["REGIONAL" # One of: ["REGIONAL", "GLOBAL"]],
    #       output_types: ["STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"]],
    #       routed_input_arns: ["RouterInputArn"],
    #       name_contains: ["String"]
    #     }]
    #   }
    #   options = {}
    #   response = client.list_router_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_outputs: [ # required
    #       {
    #         name: "String", # required
    #         arn: "RouterOutputArn", # required
    #         id: "String", # required
    #         output_type: "STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"], # required
    #         state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #         routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #         region_name: "String", # required
    #         availability_zone: "String", # required
    #         maximum_bitrate: 1, # required
    #         routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         message_count: 1, # required
    #         routed_input_arn: "RouterInputArn",
    #         network_interface_arn: "RouterNetworkInterfaceArn",
    #         maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #         maintenance_schedule: {
    #           # One of:
    #           window: {
    #             start: Time.now, # required
    #             end: Time.now, # required
    #             scheduled_time: Time.now, # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRouterOutputsResponse]
    def list_router_outputs(params = {}, options = {})
      request = build_request(:list_router_outputs, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with a global resource in AWS Elemental MediaConnect. The API supports the following global resources: router inputs, router outputs and router network interfaces. </p>
    # @param [Hash, Types::ListTagsForGlobalResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource whose tags you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_global_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForGlobalResourceResponse]
    def list_tags_for_global_resource(params = {}, options = {})
      request = build_request(:list_tags_for_global_resource, params)
      request.send_request(options)
    end

    # <p> List all tags on a MediaConnect resource in the current region.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource for which to list the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> Submits a request to purchase an offering. If you already have an active reservation, you can't purchase another offering.</p>
    # @param [Hash, Types::PurchaseOfferingRequest] params
    # @option params [String] :offering_arn
    #   <p> The Amazon Resource Name (ARN) of the offering.</p>
    # @option params [String] :reservation_name
    #   <p> The name that you want to use for the reservation.</p>
    # @option params [String] :start
    #   <p> The date and time that you want the reservation to begin, in Coordinated Universal Time (UTC). </p> <p>You can specify any date and time between 12:00am on the first day of the current month to the current time on today's date, inclusive. Specify the start in a 24-hour notation. Use the following format: <code>YYYY-MM-DDTHH:mm:SSZ</code>, where <code>T</code> and <code>Z</code> are literal characters. For example, to specify 11:30pm on March 5, 2020, enter <code>2020-03-05T23:30:00Z</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_arn: "String", # required
    #     reservation_name: "String", # required
    #     start: "String", # required
    #   }
    #   options = {}
    #   response = client.purchase_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation: {
    #       currency_code: "String", # required
    #       duration: 1, # required
    #       duration_units: "MONTHS" # One of: ["MONTHS"], # required
    #       end: "String", # required
    #       offering_arn: "String", # required
    #       offering_description: "String", # required
    #       price_per_unit: "String", # required
    #       price_units: "HOURLY" # One of: ["HOURLY"], # required
    #       reservation_arn: "String", # required
    #       reservation_name: "String", # required
    #       reservation_state: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"], # required
    #       resource_specification: { # required
    #         reserved_bitrate: 1,
    #         resource_type: "Mbps_Outbound_Bandwidth" # One of: ["Mbps_Outbound_Bandwidth"], # required
    #       },
    #       start: "String", # required
    #     }
    #   }
    # @return [Types::PurchaseOfferingResponse]
    def purchase_offering(params = {}, options = {})
      request = build_request(:purchase_offering, params)
      request.send_request(options)
    end

    # <p> Removes an output from a bridge.</p>
    # @param [Hash, Types::RemoveBridgeOutputRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [String] :output_name
    #   <p> The name of the bridge output that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     output_name: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_bridge_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     output_name: "String"
    #   }
    # @return [Types::RemoveBridgeOutputResponse]
    def remove_bridge_output(params = {}, options = {})
      request = build_request(:remove_bridge_output, params)
      request.send_request(options)
    end

    # <p> Removes a source from a bridge.</p>
    # @param [Hash, Types::RemoveBridgeSourceRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [String] :source_name
    #   <p> The name of the bridge source that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     source_name: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_bridge_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     source_name: "String"
    #   }
    # @return [Types::RemoveBridgeSourceResponse]
    def remove_bridge_source(params = {}, options = {})
      request = build_request(:remove_bridge_source, params)
      request.send_request(options)
    end

    # <p> Removes a media stream from a flow. This action is only available if the media stream is not associated with a source or output.</p>
    # @param [Hash, Types::RemoveFlowMediaStreamRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    # @option params [String] :media_stream_name
    #   <p> The name of the media stream that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     media_stream_name: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_flow_media_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     media_stream_name: "String"
    #   }
    # @return [Types::RemoveFlowMediaStreamResponse]
    def remove_flow_media_stream(params = {}, options = {})
      request = build_request(:remove_flow_media_stream, params)
      request.send_request(options)
    end

    # <p> Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.</p>
    # @param [Hash, Types::RemoveFlowOutputRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove an output from.</p>
    # @option params [String] :output_arn
    #   <p> The ARN of the output that you want to remove. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     output_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_flow_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     output_arn: "String"
    #   }
    # @return [Types::RemoveFlowOutputResponse]
    def remove_flow_output(params = {}, options = {})
      request = build_request(:remove_flow_output, params)
      request.send_request(options)
    end

    # <p> Removes a source from an existing flow. This request can be made only if there is more than one source on the flow. </p>
    # @param [Hash, Types::RemoveFlowSourceRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a source from.</p>
    # @option params [String] :source_arn
    #   <p> The ARN of the source that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     source_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_flow_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     source_arn: "String"
    #   }
    # @return [Types::RemoveFlowSourceResponse]
    def remove_flow_source(params = {}, options = {})
      request = build_request(:remove_flow_source, params)
      request.send_request(options)
    end

    # <p> Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.</p>
    # @param [Hash, Types::RemoveFlowVpcInterfaceRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a VPC interface from.</p>
    # @option params [String] :vpc_interface_name
    #   <p> The name of the VPC interface that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     vpc_interface_name: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_flow_vpc_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     non_deleted_network_interface_ids: ["String"],
    #     vpc_interface_name: "String"
    #   }
    # @return [Types::RemoveFlowVpcInterfaceResponse]
    def remove_flow_vpc_interface(params = {}, options = {})
      request = build_request(:remove_flow_vpc_interface, params)
      request.send_request(options)
    end

    # <p>Restarts a router input. This operation can be used to recover from errors or refresh the input state.</p>
    # @param [Hash, Types::RestartRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to restart.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.restart_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::RestartRouterInputResponse]
    def restart_router_input(params = {}, options = {})
      request = build_request(:restart_router_input, params)
      request.send_request(options)
    end

    # <p>Restarts a router output. This operation can be used to recover from errors or refresh the output state.</p>
    # @param [Hash, Types::RestartRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to restart.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #   }
    #   options = {}
    #   response = client.restart_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterOutputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::RestartRouterOutputResponse]
    def restart_router_output(params = {}, options = {})
      request = build_request(:restart_router_output, params)
      request.send_request(options)
    end

    # <p> Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.</p>
    # @param [Hash, Types::RevokeFlowEntitlementRequest] params
    # @option params [String] :entitlement_arn
    #   <p> The Amazon Resource Name (ARN) of the entitlement that you want to revoke.</p>
    # @option params [String] :flow_arn
    #   <p> The flow that you want to revoke an entitlement from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entitlement_arn: "String", # required
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.revoke_flow_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlement_arn: "String",
    #     flow_arn: "String"
    #   }
    # @return [Types::RevokeFlowEntitlementResponse]
    def revoke_flow_entitlement(params = {}, options = {})
      request = build_request(:revoke_flow_entitlement, params)
      request.send_request(options)
    end

    # <p> Starts a flow.</p>
    # @param [Hash, Types::StartFlowRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.start_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   }
    # @return [Types::StartFlowResponse]
    def start_flow(params = {}, options = {})
      request = build_request(:start_flow, params)
      request.send_request(options)
    end

    # <p>Starts a router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::StartRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.start_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #     maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"], # required
    #     maintenance_schedule: { # required
    #       # One of:
    #       window: {
    #         start: Time.now, # required
    #         end: Time.now, # required
    #         scheduled_time: Time.now, # required
    #       }
    #     }
    #   }
    # @return [Types::StartRouterInputResponse]
    def start_router_input(params = {}, options = {})
      request = build_request(:start_router_input, params)
      request.send_request(options)
    end

    # <p>Starts a router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::StartRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #   }
    #   options = {}
    #   response = client.start_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterOutputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #     maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"], # required
    #     maintenance_schedule: { # required
    #       # One of:
    #       window: {
    #         start: Time.now, # required
    #         end: Time.now, # required
    #         scheduled_time: Time.now, # required
    #       }
    #     }
    #   }
    # @return [Types::StartRouterOutputResponse]
    def start_router_output(params = {}, options = {})
      request = build_request(:start_router_output, params)
      request.send_request(options)
    end

    # <p> Stops a flow.</p>
    # @param [Hash, Types::StopFlowRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #   }
    #   options = {}
    #   response = client.stop_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   }
    # @return [Types::StopFlowResponse]
    def stop_flow(params = {}, options = {})
      request = build_request(:stop_flow, params)
      request.send_request(options)
    end

    # <p>Stops a router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::StopRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #   }
    #   options = {}
    #   response = client.stop_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterInputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::StopRouterInputResponse]
    def stop_router_input(params = {}, options = {})
      request = build_request(:stop_router_input, params)
      request.send_request(options)
    end

    # <p>Stops a router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::StopRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #   }
    #   options = {}
    #   response = client.stop_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RouterOutputArn", # required
    #     name: "String", # required
    #     state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #   }
    # @return [Types::StopRouterOutputResponse]
    def stop_router_output(params = {}, options = {})
      request = build_request(:stop_router_output, params)
      request.send_request(options)
    end

    # <p>Adds tags to a global resource in AWS Elemental MediaConnect. The API supports the following global resources: router inputs, router outputs and router network interfaces. </p>
    # @param [Hash, Types::TagGlobalResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to add to the global resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_global_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_global_resource(params = {}, options = {})
      request = build_request(:tag_global_resource, params)
      request.send_request(options)
    end

    # <p> Associates the specified tags to a resource with the specified <code>resourceArn</code> in the current region. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource to which to add tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p> A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Associates a router input with a router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::TakeRouterInputRequest] params
    # @option params [String] :router_output_arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to associate with a router input.</p>
    # @option params [String] :router_input_arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to associate with a router output.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     router_output_arn: "RouterOutputArn", # required
    #     router_input_arn: "RouterInputArn"
    #   }
    #   options = {}
    #   response = client.take_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #     router_output_arn: "RouterOutputArn", # required
    #     router_output_name: "String", # required
    #     router_input_arn: "RouterInputArn",
    #     router_input_name: "String"
    #   }
    # @return [Types::TakeRouterInputResponse]
    def take_router_input(params = {}, options = {})
      request = build_request(:take_router_input, params)
      request.send_request(options)
    end

    # <p>Removes tags from a global resource in AWS Elemental MediaConnect. The API supports the following global resources: router inputs, router outputs and router network interfaces. </p>
    # @param [Hash, Types::UntagGlobalResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the global resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_global_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_global_resource(params = {}, options = {})
      request = build_request(:untag_global_resource, params)
      request.send_request(options)
    end

    # <p> Deletes specified tags from a resource in the current region.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p> Updates the bridge.</p>
    # @param [Hash, Types::UpdateBridgeRequest] params
    # @option params [String] :bridge_arn
    #   <p> TheAmazon Resource Name (ARN) of the bridge that you want to update. </p>
    # @option params [Types::UpdateEgressGatewayBridgeRequest] :egress_gateway_bridge
    #   <p> A cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @option params [Types::UpdateIngressGatewayBridgeRequest] :ingress_gateway_bridge
    #   <p> A ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    # @option params [Types::UpdateFailoverConfig] :source_failover_config
    #   <p> The settings for source failover. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     egress_gateway_bridge: {
    #       max_bitrate: 1
    #     },
    #     ingress_gateway_bridge: {
    #       max_bitrate: 1,
    #       max_outputs: 1
    #     },
    #     source_failover_config: {
    #       failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_bridge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge: {
    #       bridge_arn: "String", # required
    #       bridge_messages: [
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #           resource_name: "String"
    #         }
    #       ],
    #       bridge_state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"], # required
    #       egress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #       },
    #       ingress_gateway_bridge: {
    #         instance_id: "String",
    #         max_bitrate: 1, # required
    #         max_outputs: 1, # required
    #       },
    #       name: "String", # required
    #       outputs: [
    #         {
    #           flow_output: {
    #             flow_arn: "String", # required
    #             flow_source_arn: "String", # required
    #             name: "String", # required
    #           },
    #           network_output: {
    #             ip_address: "String", # required
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             ttl: 1, # required
    #           }
    #         }
    #       ],
    #       placement_arn: "String", # required
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           flow_source: {
    #             flow_arn: "String", # required
    #             flow_vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             },
    #             name: "String", # required
    #             output_arn: "String"
    #           },
    #           network_source: {
    #             multicast_ip: "String", # required
    #             multicast_source_settings: {
    #               multicast_source_ip: "String"
    #             },
    #             name: "String", # required
    #             network_name: "String", # required
    #             port: 1, # required
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateBridgeResponse]
    def update_bridge(params = {}, options = {})
      request = build_request(:update_bridge, params)
      request.send_request(options)
    end

    # <p> Updates an existing bridge output.</p>
    # @param [Hash, Types::UpdateBridgeOutputRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [Types::UpdateBridgeNetworkOutputRequest] :network_output
    #   <p> The network of the bridge output. </p>
    # @option params [String] :output_name
    #   <p> Tname of the output that you want to update. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     network_output: {
    #       ip_address: "String",
    #       network_name: "String",
    #       port: 1,
    #       protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #       ttl: 1
    #     },
    #     output_name: "String", # required
    #   }
    #   options = {}
    #   response = client.update_bridge_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     output: {
    #       flow_output: {
    #         flow_arn: "String", # required
    #         flow_source_arn: "String", # required
    #         name: "String", # required
    #       },
    #       network_output: {
    #         ip_address: "String", # required
    #         name: "String", # required
    #         network_name: "String", # required
    #         port: 1, # required
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         ttl: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateBridgeOutputResponse]
    def update_bridge_output(params = {}, options = {})
      request = build_request(:update_bridge_output, params)
      request.send_request(options)
    end

    # <p> Updates an existing bridge source.</p>
    # @param [Hash, Types::UpdateBridgeSourceRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    # @option params [Types::UpdateBridgeFlowSourceRequest] :flow_source
    #   <p> The name of the flow that you want to update.</p>
    # @option params [Types::UpdateBridgeNetworkSourceRequest] :network_source
    #   <p> The network for the bridge source. </p>
    # @option params [String] :source_name
    #   <p> The name of the source that you want to update. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     flow_source: {
    #       flow_arn: "String",
    #       flow_vpc_interface_attachment: {
    #         vpc_interface_name: "String"
    #       }
    #     },
    #     network_source: {
    #       multicast_ip: "String",
    #       multicast_source_settings: {
    #         multicast_source_ip: "String"
    #       },
    #       network_name: "String",
    #       port: 1,
    #       protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"]
    #     },
    #     source_name: "String", # required
    #   }
    #   options = {}
    #   response = client.update_bridge_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     source: {
    #       flow_source: {
    #         flow_arn: "String", # required
    #         flow_vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         },
    #         name: "String", # required
    #         output_arn: "String"
    #       },
    #       network_source: {
    #         multicast_ip: "String", # required
    #         multicast_source_settings: {
    #           multicast_source_ip: "String"
    #         },
    #         name: "String", # required
    #         network_name: "String", # required
    #         port: 1, # required
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateBridgeSourceResponse]
    def update_bridge_source(params = {}, options = {})
      request = build_request(:update_bridge_source, params)
      request.send_request(options)
    end

    # <p> Updates the bridge state. </p>
    # @param [Hash, Types::UpdateBridgeStateRequest] params
    # @option params [String] :bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update the state of. </p>
    # @option params [String] :desired_state
    #   <p> The desired state for the bridge. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_arn: "BridgeArn", # required
    #     desired_state: "ACTIVE" # One of: ["ACTIVE", "STANDBY", "DELETED"], # required
    #   }
    #   options = {}
    #   response = client.update_bridge_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_arn: "String",
    #     desired_state: "ACTIVE" # One of: ["ACTIVE", "STANDBY", "DELETED"]
    #   }
    # @return [Types::UpdateBridgeStateResponse]
    def update_bridge_state(params = {}, options = {})
      request = build_request(:update_bridge_state, params)
      request.send_request(options)
    end

    # <p> Updates an existing flow.</p> <note> <p> Because <code>UpdateFlowSources</code> and <code>UpdateFlow</code> are separate operations, you can't change both the source type AND the flow size in a single request. </p> <ul> <li> <p>If you have a <code>MEDIUM</code> flow and you want to change the flow source to NDI®:</p> <ul> <li> <p>First, use the <code>UpdateFlow</code> operation to upgrade the flow size to <code>LARGE</code>. </p> </li> <li> <p>After that, you can then use the <code>UpdateFlowSource</code> operation to configure the NDI source. </p> </li> </ul> </li> <li> <p>If you're switching from an NDI source to a transport stream (TS) source and want to downgrade the flow size: </p> <ul> <li> <p>First, use the <code>UpdateFlowSource</code> operation to change the flow source type. </p> </li> <li> <p>After that, you can then use the <code>UpdateFlow</code> operation to downgrade the flow size to <code>MEDIUM</code>.</p> </li> </ul> </li> </ul> </note>
    # @param [Hash, Types::UpdateFlowRequest] params
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    # @option params [Types::UpdateFailoverConfig] :source_failover_config
    #   <p> The settings for source failover. </p>
    # @option params [Types::UpdateMaintenance] :maintenance
    #   <p> The maintenance setting of the flow. </p>
    # @option params [Types::MonitoringConfig] :source_monitoring_config
    #   <p> The settings for source monitoring. </p>
    # @option params [Types::NdiConfig] :ndi_config
    #   <p> Specifies the configuration settings for a flow's NDI source or output. Required when the flow includes an NDI source or output. </p>
    # @option params [String] :flow_size
    #   <p> Determines the processing capacity and feature set of the flow. </p>
    # @option params [Types::EncodingConfig] :encoding_config
    #   <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. You can choose between several predefined encoding profiles based on common use cases. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_arn: "FlowArn", # required
    #     source_failover_config: {
    #       failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     maintenance: {
    #       maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
    #       maintenance_scheduled_date: "String",
    #       maintenance_start_hour: "String"
    #     },
    #     source_monitoring_config: {
    #       thumbnail_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       audio_monitoring_settings: [
    #         {
    #           silent_audio: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           }
    #         }
    #       ],
    #       content_quality_analysis_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       video_monitoring_settings: [
    #         {
    #           black_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           },
    #           frozen_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             threshold_seconds: 1
    #           }
    #         }
    #       ]
    #     },
    #     ndi_config: {
    #       ndi_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       machine_name: "String",
    #       ndi_discovery_servers: [
    #         {
    #           discovery_server_address: "String", # required
    #           discovery_server_port: 1,
    #           vpc_interface_adapter: "String", # required
    #         }
    #       ]
    #     },
    #     flow_size: "MEDIUM" # One of: ["MEDIUM", "LARGE", "LARGE_4X"],
    #     encoding_config: {
    #       encoding_profile: "DISTRIBUTION_H264_DEFAULT" # One of: ["DISTRIBUTION_H264_DEFAULT", "CONTRIBUTION_H264_DEFAULT"],
    #       video_max_bitrate: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow: {
    #       availability_zone: "String", # required
    #       description: "String",
    #       egress_ip: "String",
    #       entitlements: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String", # required
    #           entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           name: "String", # required
    #           subscribers: ["String"], # required
    #         }
    #       ],
    #       flow_arn: "String", # required
    #       media_streams: [
    #         {
    #           attributes: {
    #             fmtp: { # required
    #               channel_order: "String",
    #               colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #               exact_framerate: "String",
    #               par: "String",
    #               range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #               scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #               tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #             },
    #             lang: "String"
    #           },
    #           clock_rate: 1,
    #           description: "String",
    #           fmt: 1, # required
    #           media_stream_id: 1, # required
    #           media_stream_name: "String", # required
    #           media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #           video_format: "String"
    #         }
    #       ],
    #       name: "String", # required
    #       outputs: [ # required
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           description: "String",
    #           destination: "String",
    #           encryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           entitlement_arn: "String",
    #           listener_address: "String",
    #           media_live_input_arn: "String",
    #           media_stream_output_configurations: [
    #             {
    #               destination_configurations: [
    #                 {
    #                   destination_ip: "String", # required
    #                   destination_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   },
    #                   outbound_ip: "String", # required
    #                 }
    #               ],
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               encoding_parameters: {
    #                 compression_factor: 1.0, # required
    #                 encoder_profile: "main" # One of: ["main", "high"], # required
    #               },
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           output_arn: "String", # required
    #           port: 1,
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           },
    #           bridge_arn: "String",
    #           bridge_ports: [1],
    #           output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_encryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_input_arn: "String"
    #         }
    #       ],
    #       source: { # required
    #         data_transfer_subscriber_fee_percent: 1,
    #         decryption: {
    #           algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String"
    #         },
    #         description: "String",
    #         entitlement_arn: "String",
    #         ingest_ip: "String",
    #         ingest_port: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #             input_configurations: [
    #               {
    #                 input_ip: "String", # required
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 }
    #               }
    #             ],
    #             media_stream_name: "String", # required
    #           }
    #         ],
    #         name: "String", # required
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_arn: "String", # required
    #         transport: {
    #           cidr_allow_list: ["String"],
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           max_sync_buffer: 1,
    #           min_latency: 1,
    #           protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #           remote_id: "String",
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           smoothing_latency: 1,
    #           source_listener_address: "String",
    #           source_listener_port: 1,
    #           stream_id: "String",
    #           ndi_speed_hq_quality: 1,
    #           ndi_program_name: "String",
    #           ndi_source_settings: {
    #             source_name: "String",
    #             audio_reference_level: 1
    #           },
    #           ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #           ndi_audio_reference_level: 1
    #         },
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "String", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String"
    #           }
    #         },
    #         peer_ip_address: "String",
    #         router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         router_integration_transit_decryption: {
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         },
    #         connected_router_output_arn: "String"
    #       },
    #       source_failover_config: {
    #         failover_mode: "MERGE" # One of: ["MERGE", "FAILOVER"],
    #         recovery_window: 1,
    #         source_priority: {
    #           primary_source: "String"
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       sources: [
    #         {
    #           data_transfer_subscriber_fee_percent: 1,
    #           decryption: {
    #             algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #             constant_initialization_vector: "String",
    #             device_id: "String",
    #             key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #             region: "String",
    #             resource_id: "String",
    #             role_arn: "String", # required
    #             secret_arn: "String",
    #             url: "String"
    #           },
    #           description: "String",
    #           entitlement_arn: "String",
    #           ingest_ip: "String",
    #           ingest_port: 1,
    #           media_stream_source_configurations: [
    #             {
    #               encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #               input_configurations: [
    #                 {
    #                   input_ip: "String", # required
    #                   input_port: 1, # required
    #                   interface: { # required
    #                     name: "String", # required
    #                   }
    #                 }
    #               ],
    #               media_stream_name: "String", # required
    #             }
    #           ],
    #           name: "String", # required
    #           sender_control_port: 1,
    #           sender_ip_address: "String",
    #           source_arn: "String", # required
    #           transport: {
    #             cidr_allow_list: ["String"],
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             max_sync_buffer: 1,
    #             min_latency: 1,
    #             protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #             remote_id: "String",
    #             sender_control_port: 1,
    #             sender_ip_address: "String",
    #             smoothing_latency: 1,
    #             source_listener_address: "String",
    #             source_listener_port: 1,
    #             stream_id: "String",
    #             ndi_speed_hq_quality: 1,
    #             ndi_program_name: "String",
    #             ndi_source_settings: {
    #               source_name: "String",
    #               audio_reference_level: 1
    #             },
    #             ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #             ndi_audio_reference_level: 1
    #           },
    #           vpc_interface_name: "String",
    #           whitelist_cidr: "String",
    #           gateway_bridge_source: {
    #             bridge_arn: "String", # required
    #             vpc_interface_attachment: {
    #               vpc_interface_name: "String"
    #             }
    #           },
    #           peer_ip_address: "String",
    #           router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           router_integration_transit_decryption: {
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           },
    #           connected_router_output_arn: "String"
    #         }
    #       ],
    #       status: "STANDBY" # One of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"], # required
    #       vpc_interfaces: [
    #         {
    #           name: "String", # required
    #           network_interface_ids: ["String"], # required
    #           network_interface_type: "ena" # One of: ["ena", "efa"], # required
    #           role_arn: "String", # required
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       ],
    #       maintenance: {
    #         maintenance_day: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
    #         maintenance_deadline: "String",
    #         maintenance_scheduled_date: "String",
    #         maintenance_start_hour: "String"
    #       },
    #       source_monitoring_config: {
    #         thumbnail_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         audio_monitoring_settings: [
    #           {
    #             silent_audio: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ],
    #         content_quality_analysis_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         video_monitoring_settings: [
    #           {
    #             black_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             },
    #             frozen_frames: {
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               threshold_seconds: 1
    #             }
    #           }
    #         ]
    #       },
    #       flow_size: "MEDIUM" # One of: ["MEDIUM", "LARGE", "LARGE_4X"],
    #       ndi_config: {
    #         ndi_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         machine_name: "String",
    #         ndi_discovery_servers: [
    #           {
    #             discovery_server_address: "String", # required
    #             discovery_server_port: 1,
    #             vpc_interface_adapter: "String", # required
    #           }
    #         ]
    #       },
    #       encoding_config: {
    #         encoding_profile: "DISTRIBUTION_H264_DEFAULT" # One of: ["DISTRIBUTION_H264_DEFAULT", "CONTRIBUTION_H264_DEFAULT"],
    #         video_max_bitrate: 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateFlowResponse]
    def update_flow(params = {}, options = {})
      request = build_request(:update_flow, params)
      request.send_request(options)
    end

    # <p> Updates an entitlement. You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.</p>
    # @param [Hash, Types::UpdateFlowEntitlementRequest] params
    # @option params [String] :description
    #   <p> A description of the entitlement. This description appears only on the MediaConnect console and will not be seen by the subscriber or end user.</p>
    # @option params [Types::UpdateEncryption] :encryption
    #   <p> The type of encryption that will be used on the output associated with this entitlement. Allowable encryption types: static-key, speke.</p>
    # @option params [String] :entitlement_arn
    #   <p> The Amazon Resource Name (ARN) of the entitlement that you want to update.</p>
    # @option params [String] :entitlement_status
    #   <p> An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the <code>entitlementStatus</code> field in your request, MediaConnect leaves the value unchanged.</p>
    # @option params [String] :flow_arn
    #   <p> The ARN of the flow that is associated with the entitlement that you want to update.</p>
    # @option params [Array<String>] :subscribers
    #   <p> The Amazon Web Services account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "String",
    #     encryption: {
    #       algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String"
    #     },
    #     entitlement_arn: "String", # required
    #     entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     flow_arn: "FlowArn", # required
    #     subscribers: ["String"]
    #   }
    #   options = {}
    #   response = client.update_flow_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlement: {
    #       data_transfer_subscriber_fee_percent: 1,
    #       description: "String",
    #       encryption: {
    #         algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #         constant_initialization_vector: "String",
    #         device_id: "String",
    #         key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #         region: "String",
    #         resource_id: "String",
    #         role_arn: "String", # required
    #         secret_arn: "String",
    #         url: "String"
    #       },
    #       entitlement_arn: "String", # required
    #       entitlement_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       name: "String", # required
    #       subscribers: ["String"], # required
    #     },
    #     flow_arn: "String"
    #   }
    # @return [Types::UpdateFlowEntitlementResponse]
    def update_flow_entitlement(params = {}, options = {})
      request = build_request(:update_flow_entitlement, params)
      request.send_request(options)
    end

    # <p> Updates an existing media stream.</p>
    # @param [Hash, Types::UpdateFlowMediaStreamRequest] params
    # @option params [Types::MediaStreamAttributesRequest] :attributes
    #   <p> The attributes that you want to assign to the media stream.</p>
    # @option params [Integer] :clock_rate
    #   <p>The sample rate for the stream. This value in measured in kHz. </p>
    # @option params [String] :description
    #   <p>A description that can help you quickly identify what your media stream is used for. </p>
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that is associated with the media stream that you updated.</p>
    # @option params [String] :media_stream_name
    #   <p> The media stream that you updated.</p>
    # @option params [String] :media_stream_type
    #   <p>The type of media stream. </p>
    # @option params [String] :video_format
    #   <p>The resolution of the video. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attributes: {
    #       fmtp: {
    #         channel_order: "String",
    #         colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #         exact_framerate: "String",
    #         par: "String",
    #         range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #         scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #         tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #       },
    #       lang: "String"
    #     },
    #     clock_rate: 1,
    #     description: "String",
    #     flow_arn: "FlowArn", # required
    #     media_stream_name: "String", # required
    #     media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"],
    #     video_format: "String"
    #   }
    #   options = {}
    #   response = client.update_flow_media_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     media_stream: {
    #       attributes: {
    #         fmtp: { # required
    #           channel_order: "String",
    #           colorimetry: "BT601" # One of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"],
    #           exact_framerate: "String",
    #           par: "String",
    #           range: "NARROW" # One of: ["NARROW", "FULL", "FULLPROTECT"],
    #           scan_mode: "progressive" # One of: ["progressive", "interlace", "progressive-segmented-frame"],
    #           tcs: "SDR" # One of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #         },
    #         lang: "String"
    #       },
    #       clock_rate: 1,
    #       description: "String",
    #       fmt: 1, # required
    #       media_stream_id: 1, # required
    #       media_stream_name: "String", # required
    #       media_stream_type: "video" # One of: ["video", "audio", "ancillary-data"], # required
    #       video_format: "String"
    #     }
    #   }
    # @return [Types::UpdateFlowMediaStreamResponse]
    def update_flow_media_stream(params = {}, options = {})
      request = build_request(:update_flow_media_stream, params)
      request.send_request(options)
    end

    # <p> Updates an existing flow output.</p>
    # @param [Hash, Types::UpdateFlowOutputRequest] params
    # @option params [Array<String>] :cidr_allow_list
    #   <p> The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    # @option params [String] :description
    #   <p> A description of the output. This description appears only on the MediaConnect console and will not be seen by the end user.</p>
    # @option params [String] :destination
    #   <p> The IP address where you want to send the output.</p>
    # @option params [Types::UpdateEncryption] :encryption
    #   <p> The type of key used for the encryption. If no <code>keyType</code> is provided, the service will use the default setting (static-key). Allowable encryption types: static-key.</p>
    # @option params [String] :flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that is associated with the output that you want to update.</p>
    # @option params [Integer] :max_latency
    #   <p> The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams.</p>
    # @option params [Array<Types::MediaStreamOutputConfigurationRequest>] :media_stream_output_configurations
    #   <p> The media streams that are associated with the output, and the parameters for those associations.</p>
    # @option params [Integer] :min_latency
    #   <p> The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.</p>
    # @option params [String] :output_arn
    #   <p> The ARN of the output that you want to update.</p>
    # @option params [Integer] :port
    #   <p> The port to use when content is distributed to this output.</p>
    # @option params [String] :protocol
    #   <p> The protocol to use for the output.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    # @option params [String] :remote_id
    #   <p> The remote ID for the Zixi-pull stream.</p>
    # @option params [Integer] :sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    # @option params [String] :sender_ip_address
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    # @option params [Integer] :smoothing_latency
    #   <p> The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.</p>
    # @option params [String] :stream_id
    #   <p> The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams.</p>
    # @option params [Types::VpcInterfaceAttachment] :vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this output.</p>
    # @option params [String] :output_status
    #   <p> An indication of whether the output should transmit data or not. If you don't specify the <code>outputStatus</code> field in your request, MediaConnect leaves the value unchanged.</p>
    # @option params [String] :ndi_program_name
    #   <p> A suffix for the name of the NDI® sender that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    # @option params [Integer] :ndi_speed_hq_quality
    #   <p>A quality setting for the NDI Speed HQ encoder. </p>
    # @option params [String] :router_integration_state
    #   <p>Indicates whether to enable or disable router integration for this flow output.</p>
    # @option params [Types::FlowTransitEncryption] :router_integration_transit_encryption
    #   <p>The configuration that defines how content is encrypted during transit between the MediaConnect router and a MediaConnect flow.</p>
    # @option params [String] :ndi_output_timecode_source
    #   <p>Controls how MediaConnect generates timecodes for NDI output frames. If you don't specify this field, MediaConnect leaves the value unchanged.</p> <ul> <li> <p> <code>EMBEDDED_TIMECODE</code> - Preserves timecodes from the input transport stream. The timecodes must be embedded in the video stream as SEI timing messages. If no embedded timecode is detected, MediaConnect uses the UTC system time instead.</p> </li> <li> <p> <code>UTC_SYSTEM_TIME</code> - Generates timecodes based on the system clock time when each frame is sent.</p> </li> </ul>
    # @option params [Integer] :ndi_audio_reference_level
    #   <p>The audio reference level of the NDI receiver, in decibels relative to full scale (dBFS). Common values are <code>-20</code> (NDI and SMPTE) and <code>-18</code> (EBU). If you don't specify this field, MediaConnect leaves the value unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr_allow_list: ["String"],
    #     description: "String",
    #     destination: "String",
    #     encryption: {
    #       algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String"
    #     },
    #     flow_arn: "FlowArn", # required
    #     max_latency: 1,
    #     media_stream_output_configurations: [
    #       {
    #         destination_configurations: [
    #           {
    #             destination_ip: "String", # required
    #             destination_port: 1, # required
    #             interface: { # required
    #               name: "String", # required
    #             }
    #           }
    #         ],
    #         encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #         encoding_parameters: {
    #           compression_factor: 1.0, # required
    #           encoder_profile: "main" # One of: ["main", "high"], # required
    #         },
    #         media_stream_name: "String", # required
    #       }
    #     ],
    #     min_latency: 1,
    #     output_arn: "String", # required
    #     port: 1,
    #     protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #     remote_id: "String",
    #     sender_control_port: 1,
    #     sender_ip_address: "String",
    #     smoothing_latency: 1,
    #     stream_id: "String",
    #     vpc_interface_attachment: {
    #       vpc_interface_name: "String"
    #     },
    #     output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     ndi_program_name: "String",
    #     ndi_speed_hq_quality: 1,
    #     router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     router_integration_transit_encryption: {
    #       encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #       encryption_key_configuration: { # required
    #         # One of:
    #         secrets_manager: {
    #           secret_arn: "SecretArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         automatic: {
    #         }
    #       }
    #     },
    #     ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #     ndi_audio_reference_level: 1
    #   }
    #   options = {}
    #   response = client.update_flow_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     output: {
    #       data_transfer_subscriber_fee_percent: 1,
    #       description: "String",
    #       destination: "String",
    #       encryption: {
    #         algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #         constant_initialization_vector: "String",
    #         device_id: "String",
    #         key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #         region: "String",
    #         resource_id: "String",
    #         role_arn: "String", # required
    #         secret_arn: "String",
    #         url: "String"
    #       },
    #       entitlement_arn: "String",
    #       listener_address: "String",
    #       media_live_input_arn: "String",
    #       media_stream_output_configurations: [
    #         {
    #           destination_configurations: [
    #             {
    #               destination_ip: "String", # required
    #               destination_port: 1, # required
    #               interface: { # required
    #                 name: "String", # required
    #               },
    #               outbound_ip: "String", # required
    #             }
    #           ],
    #           encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #           encoding_parameters: {
    #             compression_factor: 1.0, # required
    #             encoder_profile: "main" # One of: ["main", "high"], # required
    #           },
    #           media_stream_name: "String", # required
    #         }
    #       ],
    #       name: "String", # required
    #       output_arn: "String", # required
    #       port: 1,
    #       transport: {
    #         cidr_allow_list: ["String"],
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         min_latency: 1,
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         smoothing_latency: 1,
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #         ndi_source_settings: {
    #           source_name: "String",
    #           audio_reference_level: 1
    #         },
    #         ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #         ndi_audio_reference_level: 1
    #       },
    #       vpc_interface_attachment: {
    #         vpc_interface_name: "String"
    #       },
    #       bridge_arn: "String",
    #       bridge_ports: [1],
    #       output_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       peer_ip_address: "String",
    #       router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       router_integration_transit_encryption: {
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       },
    #       connected_router_input_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateFlowOutputResponse]
    def update_flow_output(params = {}, options = {})
      request = build_request(:update_flow_output, params)
      request.send_request(options)
    end

    # <p> Updates the source of a flow.</p> <note> <p> Because <code>UpdateFlowSources</code> and <code>UpdateFlow</code> are separate operations, you can't change both the source type AND the flow size in a single request. </p> <ul> <li> <p>If you have a <code>MEDIUM</code> flow and you want to change the flow source to NDI®:</p> <ul> <li> <p>First, use the <code>UpdateFlow</code> operation to upgrade the flow size to <code>LARGE</code>. </p> </li> <li> <p>After that, you can then use the <code>UpdateFlowSource</code> operation to configure the NDI source. </p> </li> </ul> </li> <li> <p>If you're switching from an NDI source to a transport stream (TS) source and want to downgrade the flow size: </p> <ul> <li> <p>First, use the <code>UpdateFlowSource</code> operation to change the flow source type. </p> </li> <li> <p>After that, you can then use the <code>UpdateFlow</code> operation to downgrade the flow size to <code>MEDIUM</code>.</p> </li> </ul> </li> </ul> </note>
    # @param [Hash, Types::UpdateFlowSourceRequest] params
    # @option params [Types::UpdateEncryption] :decryption
    #   <p>The type of encryption that is used on the content ingested from the source. </p>
    # @option params [String] :description
    #   <p>A description of the source. This description is not visible outside of the current Amazon Web Services account. </p>
    # @option params [String] :entitlement_arn
    #   <p>The Amazon Resource Name (ARN) of the entitlement that allows you to subscribe to the flow. The entitlement is set by the content originator, and the ARN is generated as part of the originator's flow. </p>
    # @option params [String] :flow_arn
    #   <p> The ARN of the flow that you want to update. </p>
    # @option params [Integer] :ingest_port
    #   <p>The port that the flow listens on for incoming content. If the protocol of the source is Zixi, the port must be set to 2088. </p>
    # @option params [Integer] :max_bitrate
    #   <p>The maximum bitrate for RIST, RTP, and RTP-FEC streams. </p>
    # @option params [Integer] :max_latency
    #   <p>The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams. </p>
    # @option params [Integer] :max_sync_buffer
    #   <p>The size of the buffer (in milliseconds) to use to sync incoming source data. </p>
    # @option params [Array<Types::MediaStreamSourceConfigurationRequest>] :media_stream_source_configurations
    #   <p>The media stream that is associated with the source, and the parameters for that association. </p>
    # @option params [Integer] :min_latency
    #   <p>The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency. </p>
    # @option params [String] :protocol
    #   <p>The protocol that the source uses to deliver the content to MediaConnect. </p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    # @option params [Integer] :sender_control_port
    #   <p>The port that the flow uses to send outbound requests to initiate connection with the sender. </p>
    # @option params [String] :sender_ip_address
    #   <p>The IP address that the flow communicates with to initiate connection with the sender. </p>
    # @option params [String] :source_arn
    #   <p>The ARN of the source that you want to update. </p>
    # @option params [String] :source_listener_address
    #   <p>The source IP or domain name for SRT-caller protocol. </p>
    # @option params [Integer] :source_listener_port
    #   <p>Source port for SRT-caller protocol. </p>
    # @option params [String] :stream_id
    #   <p>The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams. </p>
    # @option params [String] :vpc_interface_name
    #   <p>The name of the VPC interface that you want to send your output to.</p>
    # @option params [String] :whitelist_cidr
    #   <p>The range of IP addresses that are allowed to contribute content to your source. Format the IP addresses as a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. </p>
    # @option params [Types::UpdateGatewayBridgeSourceRequest] :gateway_bridge_source
    #   <p>The source configuration for cloud flows receiving a stream from a bridge. </p>
    # @option params [Types::NdiSourceSettings] :ndi_source_settings
    #   <p> The settings for the NDI source. This includes the exact name of the upstream NDI sender that you want to connect to your source. </p>
    # @option params [String] :router_integration_state
    #   <p>Indicates whether to enable or disable router integration for this flow source.</p>
    # @option params [Types::FlowTransitEncryption] :router_integration_transit_decryption
    #   <p>The encryption configuration for the flow source when router integration is enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     decryption: {
    #       algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String"
    #     },
    #     description: "String",
    #     entitlement_arn: "String",
    #     flow_arn: "FlowArn", # required
    #     ingest_port: 1,
    #     max_bitrate: 1,
    #     max_latency: 1,
    #     max_sync_buffer: 1,
    #     media_stream_source_configurations: [
    #       {
    #         encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #         input_configurations: [
    #           {
    #             input_port: 1, # required
    #             interface: { # required
    #               name: "String", # required
    #             }
    #           }
    #         ],
    #         media_stream_name: "String", # required
    #       }
    #     ],
    #     min_latency: 1,
    #     protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"],
    #     sender_control_port: 1,
    #     sender_ip_address: "String",
    #     source_arn: "String", # required
    #     source_listener_address: "String",
    #     source_listener_port: 1,
    #     stream_id: "String",
    #     vpc_interface_name: "String",
    #     whitelist_cidr: "String",
    #     gateway_bridge_source: {
    #       bridge_arn: "String",
    #       vpc_interface_attachment: {
    #         vpc_interface_name: "String"
    #       }
    #     },
    #     ndi_source_settings: {
    #       source_name: "String",
    #       audio_reference_level: 1
    #     },
    #     router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     router_integration_transit_decryption: {
    #       encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #       encryption_key_configuration: { # required
    #         # One of:
    #         secrets_manager: {
    #           secret_arn: "SecretArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         automatic: {
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_flow_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "String",
    #     source: {
    #       data_transfer_subscriber_fee_percent: 1,
    #       decryption: {
    #         algorithm: "aes128" # One of: ["aes128", "aes192", "aes256"],
    #         constant_initialization_vector: "String",
    #         device_id: "String",
    #         key_type: "speke" # One of: ["speke", "static-key", "srt-password"],
    #         region: "String",
    #         resource_id: "String",
    #         role_arn: "String", # required
    #         secret_arn: "String",
    #         url: "String"
    #       },
    #       description: "String",
    #       entitlement_arn: "String",
    #       ingest_ip: "String",
    #       ingest_port: 1,
    #       media_stream_source_configurations: [
    #         {
    #           encoding_name: "jxsv" # One of: ["jxsv", "raw", "smpte291", "pcm"], # required
    #           input_configurations: [
    #             {
    #               input_ip: "String", # required
    #               input_port: 1, # required
    #               interface: { # required
    #                 name: "String", # required
    #               }
    #             }
    #           ],
    #           media_stream_name: "String", # required
    #         }
    #       ],
    #       name: "String", # required
    #       sender_control_port: 1,
    #       sender_ip_address: "String",
    #       source_arn: "String", # required
    #       transport: {
    #         cidr_allow_list: ["String"],
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         min_latency: 1,
    #         protocol: "zixi-push" # One of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"], # required
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         smoothing_latency: 1,
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #         ndi_source_settings: {
    #           source_name: "String",
    #           audio_reference_level: 1
    #         },
    #         ndi_output_timecode_source: "EMBEDDED_TIMECODE" # One of: ["EMBEDDED_TIMECODE", "UTC_SYSTEM_TIME"],
    #         ndi_audio_reference_level: 1
    #       },
    #       vpc_interface_name: "String",
    #       whitelist_cidr: "String",
    #       gateway_bridge_source: {
    #         bridge_arn: "String", # required
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String"
    #         }
    #       },
    #       peer_ip_address: "String",
    #       router_integration_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       router_integration_transit_decryption: {
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       },
    #       connected_router_output_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateFlowSourceResponse]
    def update_flow_source(params = {}, options = {})
      request = build_request(:update_flow_source, params)
      request.send_request(options)
    end

    # <p>Updates an existing gateway instance. </p>
    # @param [Hash, Types::UpdateGatewayInstanceRequest] params
    # @option params [String] :bridge_placement
    #   <p>The state of the instance. <code>ACTIVE</code> or <code>INACTIVE</code>. </p>
    # @option params [String] :gateway_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway instance that you want to update. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bridge_placement: "AVAILABLE" # One of: ["AVAILABLE", "LOCKED"],
    #     gateway_instance_arn: "GatewayInstanceArn", # required
    #   }
    #   options = {}
    #   response = client.update_gateway_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bridge_placement: "AVAILABLE" # One of: ["AVAILABLE", "LOCKED"],
    #     gateway_instance_arn: "String"
    #   }
    # @return [Types::UpdateGatewayInstanceResponse]
    def update_gateway_instance(params = {}, options = {})
      request = build_request(:update_gateway_instance, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing router input in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::UpdateRouterInputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to update.</p>
    # @option params [String] :name
    #   <p>The updated name for the router input.</p>
    # @option params [Types::RouterInputConfiguration] :configuration
    #   <p>The updated configuration settings for the router input. Changing the type of the configuration is not supported.</p>
    # @option params [Integer] :maximum_bitrate
    #   <p>The updated maximum bitrate for the router input.</p>
    # @option params [String] :routing_scope
    #   <p>Specifies whether the router input can be assigned to outputs in different Regions. REGIONAL (default) - can be assigned only to outputs in the same Region. GLOBAL - can be assigned to outputs in any Region.</p>
    # @option params [String] :tier
    #   <p>The updated tier level for the router input. The tier sets the maximum bitrate, in Mbps, for the router input. Valid values include the following:</p> <ul> <li> <p> <code>INPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>INPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>INPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>INPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>INPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    # @option params [Types::RouterInputTransitEncryption] :transit_encryption
    #   <p>The updated transit encryption settings for the router input.</p>
    # @option params [Types::MaintenanceConfiguration] :maintenance_configuration
    #   <p>The updated maintenance configuration settings for the router input, including any changes to preferred maintenance windows and schedules.</p>
    # @option params [Types::RouterContentQualityAnalysisConfiguration] :content_quality_analysis_configuration
    #   <p>The content quality analysis configuration for the router input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterInputArn", # required
    #     name: "String",
    #     configuration: {
    #       # One of:
    #       standard: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configuration: { # required
    #           # One of:
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             source_address: "String", # required
    #             source_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #       },
    #       media_live_channel: {
    #         media_live_channel_arn: "MediaLiveChannelArn",
    #         media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #         media_live_channel_output_name: "String",
    #         source_transit_decryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       failover: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configurations: [{ # required
    #           # One of:
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             source_address: "String", # required
    #             source_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             decryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         }],
    #         source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #         primary_source_index: 1
    #       },
    #       media_connect_flow: {
    #         flow_arn: "FlowArn",
    #         flow_output_arn: "FlowOutputArn",
    #         source_transit_decryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       merge: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configurations: [{ # required
    #           # One of:
    #           rtp: {
    #             port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           rist: {
    #             port: 1, # required
    #             recovery_latency_milliseconds: 1, # required
    #           }
    #         }],
    #         merge_recovery_window_milliseconds: 1, # required
    #       }
    #     },
    #     maximum_bitrate: 1,
    #     routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"],
    #     tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"],
    #     transit_encryption: {
    #       encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #       encryption_key_configuration: { # required
    #         # One of:
    #         secrets_manager: {
    #           secret_arn: "SecretArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         automatic: {
    #         }
    #       }
    #     },
    #     maintenance_configuration: {
    #       # One of:
    #       preferred_day_time: {
    #         day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #         time: "String", # required
    #       },
    #       default: {
    #       }
    #     },
    #     content_quality_analysis_configuration: {
    #       # One of:
    #       content_level: {
    #         black_frames: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         },
    #         frozen_frames: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         },
    #         silent_audio: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           threshold_seconds: 1, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_router_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_input: { # required
    #       name: "String", # required
    #       arn: "RouterInputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       input_type: "STANDARD" # One of: ["STANDARD", "FAILOVER", "MERGE", "MEDIACONNECT_FLOW", "MEDIALIVE_CHANNEL"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER"]
    #         },
    #         media_live_channel: {
    #           media_live_channel_arn: "MediaLiveChannelArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           media_live_channel_output_name: "String",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         failover: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               source_address: "String", # required
    #               source_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               decryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           }],
    #           source_priority_mode: "NO_PRIORITY" # One of: ["NO_PRIORITY", "PRIMARY_SECONDARY"], # required
    #           primary_source_index: 1
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_output_arn: "FlowOutputArn",
    #           source_transit_decryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         merge: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configurations: [{ # required
    #             # One of:
    #             rtp: {
    #               port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             },
    #             rist: {
    #               port: 1, # required
    #               recovery_latency_milliseconds: 1, # required
    #             }
    #           }],
    #           merge_recovery_window_milliseconds: 1, # required
    #         }
    #       },
    #       routed_outputs: 1, # required
    #       maximum_routed_outputs: 1,
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       tier: "INPUT_100" # One of: ["INPUT_100", "INPUT_50", "INPUT_20", "INPUT_500", "INPUT_250"], # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       transit_encryption: { # required
    #         encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #         encryption_key_configuration: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           automatic: {
    #           }
    #         }
    #       },
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           source_ip_address: "String"
    #         },
    #         media_live_channel: {
    #         },
    #         failover: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         },
    #         media_connect_flow: {
    #         },
    #         merge: {
    #           source_index_zero_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           },
    #           source_index_one_stream_details: { # required
    #             source_index: 1, # required
    #             source_ip_address: "String"
    #           }
    #         }
    #       },
    #       ip_address: "String",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       content_quality_analysis_type: "CONTENT_LEVEL" # One of: ["CONTENT_LEVEL"], # required
    #       content_quality_analysis_configuration: { # required
    #         # One of:
    #         content_level: {
    #           black_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           frozen_frames: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           },
    #           silent_audio: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             threshold_seconds: 1, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateRouterInputResponse]
    def update_router_input(params = {}, options = {})
      request = build_request(:update_router_input, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing router network interface in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::UpdateRouterNetworkInterfaceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to update.</p>
    # @option params [String] :name
    #   <p>The updated name for the router network interface.</p>
    # @option params [Types::RouterNetworkInterfaceConfiguration] :configuration
    #   <p>The updated configuration settings for the router network interface. Changing the type of the configuration is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterNetworkInterfaceArn", # required
    #     name: "String",
    #     configuration: {
    #       # One of:
    #       public: {
    #         allow_rules: [ # required
    #           {
    #             cidr: "String", # required
    #           }
    #         ]
    #       },
    #       vpc: {
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_router_network_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_network_interface: { # required
    #       name: "String", # required
    #       arn: "RouterNetworkInterfaceArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "ERROR", "RECOVERING"], # required
    #       network_interface_type: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       configuration: { # required
    #         # One of:
    #         public: {
    #           allow_rules: [ # required
    #             {
    #               cidr: "String", # required
    #             }
    #           ]
    #         },
    #         vpc: {
    #           security_group_ids: ["String"], # required
    #           subnet_id: "String", # required
    #         }
    #       },
    #       associated_output_count: 1, # required
    #       associated_input_count: 1, # required
    #       region_name: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       tags: { # required
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateRouterNetworkInterfaceResponse]
    def update_router_network_interface(params = {}, options = {})
      request = build_request(:update_router_network_interface, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing router output in AWS Elemental MediaConnect.</p>
    # @param [Hash, Types::UpdateRouterOutputRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to update.</p>
    # @option params [String] :name
    #   <p>The updated name for the router output.</p>
    # @option params [Types::RouterOutputConfiguration] :configuration
    #   <p>The updated configuration settings for the router output. Changing the type of the configuration is not supported.</p>
    # @option params [Integer] :maximum_bitrate
    #   <p>The updated maximum bitrate for the router output.</p>
    # @option params [String] :routing_scope
    #   <p>Specifies whether the router output can take inputs that are in different Regions. REGIONAL (default) - can only take inputs from same Region. GLOBAL - can take inputs from any Region.</p>
    # @option params [String] :tier
    #   <p>The updated tier level for the router output. The tier sets the maximum bitrate, in Mbps, for the router output. Valid values include the following:</p> <ul> <li> <p> <code>OUTPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>OUTPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>OUTPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>OUTPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>OUTPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    # @option params [Types::MaintenanceConfiguration] :maintenance_configuration
    #   <p>The updated maintenance configuration settings for the router output, including any changes to preferred maintenance windows and schedules.</p>
    # @option params [Types::FabricConfiguration] :fabric_configuration
    #   <p>The updated fabric configuration settings for the router output. You cannot update the fabric configuration while the output has an active route. You must unroute the output before updating the fabric configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RouterOutputArn", # required
    #     name: "String",
    #     configuration: {
    #       # One of:
    #       standard: {
    #         network_interface_arn: "RouterNetworkInterfaceArn", # required
    #         protocol_configuration: { # required
    #           # One of:
    #           rist: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #           },
    #           srt_listener: {
    #             port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             encryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtmp_push: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             application_name: "String", # required
    #             stream_name: "String", # required
    #             tls_encryption: {
    #               encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #               encryption_configuration: { # required
    #                 # One of:
    #                 public: {
    #                 }
    #               }
    #             }
    #           },
    #           srt_caller: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             minimum_latency_milliseconds: 1, # required
    #             stream_id: "String",
    #             encryption_configuration: {
    #               encryption_key: { # required
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               }
    #             }
    #           },
    #           rtp: {
    #             destination_address: "String", # required
    #             destination_port: 1, # required
    #             forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #       },
    #       media_connect_flow: {
    #         flow_arn: "FlowArn",
    #         flow_source_arn: "FlowSourceArn",
    #         destination_transit_encryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       },
    #       media_live_input: {
    #         media_live_input_arn: "MediaLiveInputArn",
    #         media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #         destination_transit_encryption: { # required
    #           encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #           encryption_key_configuration: { # required
    #             # One of:
    #             secrets_manager: {
    #               secret_arn: "SecretArn", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             automatic: {
    #             }
    #           }
    #         }
    #       }
    #     },
    #     maximum_bitrate: 1,
    #     routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"],
    #     tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"],
    #     maintenance_configuration: {
    #       # One of:
    #       preferred_day_time: {
    #         day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #         time: "String", # required
    #       },
    #       default: {
    #       }
    #     },
    #     fabric_configuration: {
    #       recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_router_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     router_output: { # required
    #       name: "String", # required
    #       arn: "RouterOutputArn", # required
    #       id: "String", # required
    #       state: "CREATING" # One of: ["CREATING", "STANDBY", "STARTING", "ACTIVE", "STOPPING", "DELETING", "UPDATING", "ERROR", "RECOVERING", "MIGRATING"], # required
    #       output_type: "STANDARD" # One of: ["STANDARD", "MEDIACONNECT_FLOW", "MEDIALIVE_INPUT"], # required
    #       configuration: { # required
    #         # One of:
    #         standard: {
    #           network_interface_arn: "RouterNetworkInterfaceArn", # required
    #           protocol_configuration: { # required
    #             # One of:
    #             rist: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #             },
    #             srt_listener: {
    #               port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtmp_push: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               application_name: "String", # required
    #               stream_name: "String", # required
    #               tls_encryption: {
    #                 encryption_type: "PUBLIC" # One of: ["PUBLIC"],
    #                 encryption_configuration: { # required
    #                   # One of:
    #                   public: {
    #                   }
    #                 }
    #               }
    #             },
    #             srt_caller: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               minimum_latency_milliseconds: 1, # required
    #               stream_id: "String",
    #               encryption_configuration: {
    #                 encryption_key: { # required
    #                   secret_arn: "SecretArn", # required
    #                   role_arn: "RoleArn", # required
    #                 }
    #               }
    #             },
    #             rtp: {
    #               destination_address: "String", # required
    #               destination_port: 1, # required
    #               forward_error_correction: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           protocol: "RTP" # One of: ["RTP", "RIST", "SRT_CALLER", "SRT_LISTENER", "RTMP_PUSH"]
    #         },
    #         media_connect_flow: {
    #           flow_arn: "FlowArn",
    #           flow_source_arn: "FlowSourceArn",
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         },
    #         media_live_input: {
    #           media_live_input_arn: "MediaLiveInputArn",
    #           media_live_pipeline_id: "PIPELINE_0" # One of: ["PIPELINE_0", "PIPELINE_1"],
    #           destination_transit_encryption: { # required
    #             encryption_key_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AUTOMATIC"],
    #             encryption_key_configuration: { # required
    #               # One of:
    #               secrets_manager: {
    #                 secret_arn: "SecretArn", # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               automatic: {
    #               }
    #             }
    #           }
    #         }
    #       },
    #       routed_state: "ROUTED" # One of: ["ROUTED", "ROUTING", "UNROUTED"], # required
    #       region_name: "String", # required
    #       availability_zone: "String", # required
    #       maximum_bitrate: 1, # required
    #       routing_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"], # required
    #       tier: "OUTPUT_100" # One of: ["OUTPUT_100", "OUTPUT_50", "OUTPUT_20", "OUTPUT_500", "OUTPUT_250"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       messages: [ # required
    #         {
    #           code: "String", # required
    #           message: "String", # required
    #         }
    #       ],
    #       tags: { # required
    #         "String" => "String"
    #       },
    #       stream_details: { # required
    #         # One of:
    #         standard: {
    #           destination_ip_address: "String"
    #         },
    #         media_connect_flow: {
    #         },
    #         media_live_input: {
    #         }
    #       },
    #       ip_address: "String",
    #       routed_input_arn: "RouterInputArn",
    #       maintenance_type: "PREFERRED_DAY_TIME" # One of: ["PREFERRED_DAY_TIME", "DEFAULT"], # required
    #       maintenance_configuration: { # required
    #         # One of:
    #         preferred_day_time: {
    #           day: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #           time: "String", # required
    #         },
    #         default: {
    #         }
    #       },
    #       maintenance_schedule_type: "WINDOW" # One of: ["WINDOW"],
    #       maintenance_schedule: {
    #         # One of:
    #         window: {
    #           start: Time.now, # required
    #           end: Time.now, # required
    #           scheduled_time: Time.now, # required
    #         }
    #       },
    #       fabric_configuration: { # required
    #         recovery_latency_mode: "BALANCED" # One of: ["BALANCED", "LOW_LATENCY"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateRouterOutputResponse]
    def update_router_output(params = {}, options = {})
      request = build_request(:update_router_output, params)
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
      context[:gem_name] = 'aws-sdk-mediaconnect'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        flow_active: Waiters::FlowActive,
        flow_deleted: Waiters::FlowDeleted,
        flow_standby: Waiters::FlowStandby,
        input_active: Waiters::InputActive,
        input_deleted: Waiters::InputDeleted,
        input_standby: Waiters::InputStandby,
        output_active: Waiters::OutputActive,
        output_deleted: Waiters::OutputDeleted,
        output_routed: Waiters::OutputRouted,
        output_standby: Waiters::OutputStandby,
        output_unrouted: Waiters::OutputUnrouted
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
