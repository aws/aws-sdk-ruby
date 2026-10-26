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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:groundstation)

module Aws::GroundStation
  # An API client for Aws::GroundStation.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GroundStation
    @identifier = :groundstation

    add_plugin(::Aws::GroundStation::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GroundStation::EndpointProvider)
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

    # <p>Cancels or stops a contact with a specified contact ID based on its position in the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/contacts.lifecycle.html">contact lifecycle</a>.</p> <p>For contacts that:</p> <ul> <li> <p>Have yet to start, the contact will be cancelled.</p> </li> <li> <p>Have started but have yet to finish, the contact will be stopped.</p> </li> </ul>
    # @param [Hash, Types::CancelContactRequest] params
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.cancel_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "Uuid",
    #     version_id: 1
    #   }
    # @return [Types::CancelContactOutput]
    def cancel_contact(params = {}, options = {})
      request = build_request(:cancel_contact, params)
      request.send_request(options)
    end

    # <p>Creates a <code>Config</code> with the specified <code>configData</code> parameters.</p> <p>Only one type of <code>configData</code> can be specified.</p>
    # @param [Hash, Types::CreateConfigRequest] params
    # @option params [String] :name
    #   <p>Name of a <code>Config</code>.</p>
    # @option params [Types::ConfigTypeData] :config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SafeName", # required
    #     config_data: { # required
    #       # One of:
    #       antenna_downlink_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         }
    #       },
    #       tracking_config: {
    #         autotrack: "REQUIRED" # One of: ["REQUIRED", "PREFERRED", "REMOVED"], # required
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String"
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         }
    #       },
    #       antenna_uplink_config: {
    #         transmit_disabled: false,
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         target_eirp: { # required
    #           value: 1.0, # required
    #           units: "dBW" # One of: ["dBW"], # required
    #         }
    #       },
    #       uplink_echo_config: {
    #         enabled: false, # required
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #       },
    #       s3_recording_config: {
    #         bucket_arn: "BucketArn", # required
    #         role_arn: "RoleArn", # required
    #         prefix: "S3KeyPrefix"
    #       },
    #       telemetry_sink_config: {
    #         telemetry_sink_type: "KINESIS_DATA_STREAM" # One of: ["KINESIS_DATA_STREAM"], # required
    #         telemetry_sink_data: { # required
    #           # One of:
    #           kinesis_data_stream_data: {
    #             kinesis_role_arn: "RoleArn", # required
    #             kinesis_data_stream_arn: "KinesisDataStreamArn", # required
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_id: "String",
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #     config_arn: "ConfigArn"
    #   }
    # @return [Types::CreateConfigOutput]
    def create_config(params = {}, options = {})
      request = build_request(:create_config, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataflowEndpoint</code> group containing the specified list of <code> DataflowEndpoint</code> objects.</p> <p>The <code>name</code> field in each endpoint is used in your mission profile <code> DataflowEndpointConfig</code> to specify which endpoints to use during a contact.</p> <p>When a contact uses multiple <code>DataflowEndpointConfig</code> objects, each <code> Config</code> must match a <code>DataflowEndpoint</code> in the same group.</p>
    # @param [Hash, Types::CreateDataflowEndpointGroupRequest] params
    # @option params [Array<Types::EndpointDetails>] :endpoint_details
    #   <p>Endpoint details of each endpoint in the dataflow endpoint group. All dataflow endpoints within a single dataflow endpoint group must be of the same type. You cannot mix <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_AwsGroundStationAgentEndpoint.html"> AWS Ground Station Agent endpoints</a> with <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_DataflowEndpoint.html">Dataflow endpoints</a> in the same group. If your use case requires both types of endpoints, you must create separate dataflow endpoint groups for each type. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags of a dataflow endpoint group.</p>
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p> Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state. </p>
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p> Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_details: [ # required
    #       {
    #         security_details: {
    #           subnet_ids: ["String"], # required
    #           security_group_ids: ["String"], # required
    #           role_arn: "RoleArn", # required
    #         },
    #         endpoint: {
    #           name: "SafeName",
    #           address: {
    #             name: "String", # required
    #             port: 1, # required
    #           },
    #           status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #           mtu: 1
    #         },
    #         aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           egress_address: { # required
    #             socket_address: { # required
    #               name: "String", # required
    #               port: 1, # required
    #             },
    #             mtu: 1
    #           },
    #           ingress_address: { # required
    #             socket_address: { # required
    #               name: "IpV4Address", # required
    #               port_range: { # required
    #                 minimum: 1, # required
    #                 maximum: 1, # required
    #               }
    #             },
    #             mtu: 1
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         uplink_aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           dataflow_details: { # required
    #             # One of:
    #             agent_connection_details: {
    #               ingress_address_and_port: { # required
    #                 socket_address: { # required
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 mtu: 1
    #               },
    #               agent_ip_and_port_address: { # required
    #                 socket_address: { # required
    #                   name: "IpV4Address", # required
    #                   port_range: { # required
    #                     minimum: 1, # required
    #                     maximum: 1, # required
    #                   }
    #                 },
    #                 mtu: 1
    #               }
    #             }
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         downlink_aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           dataflow_details: { # required
    #             # One of:
    #             agent_connection_details: {
    #               agent_ip_and_port_address: { # required
    #                 socket_address: { # required
    #                   name: "IpV4Address", # required
    #                   port_range: { # required
    #                     minimum: 1, # required
    #                     maximum: 1, # required
    #                   }
    #                 },
    #                 mtu: 1
    #               },
    #               egress_address_and_port: { # required
    #                 socket_address: { # required
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 mtu: 1
    #               }
    #             }
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #       }
    #     ],
    #     tags: {
    #       "String" => "String"
    #     },
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.create_dataflow_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataflow_endpoint_group_id: "Uuid"
    #   }
    # @return [Types::CreateDataflowEndpointGroupOutput]
    def create_dataflow_endpoint_group(params = {}, options = {})
      request = build_request(:create_dataflow_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataflowEndpoint</code> group containing the specified list of Ground Station Agent based endpoints.</p> <p>The <code>name</code> field in each endpoint is used in your mission profile <code> DataflowEndpointConfig</code> to specify which endpoints to use during a contact.</p> <p>When a contact uses multiple <code>DataflowEndpointConfig</code> objects, each <code> Config</code> must match a <code>DataflowEndpoint</code> in the same group.</p>
    # @param [Hash, Types::CreateDataflowEndpointGroupV2Request] params
    # @option params [Array<Types::CreateEndpointDetails>] :endpoints
    #   <p>Dataflow endpoint group's endpoint definitions</p>
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p> Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state. </p>
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p> Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags of a V2 dataflow endpoint group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoints: [{ # required
    #       # One of:
    #       uplink_aws_ground_station_agent_endpoint: {
    #         name: "SafeName", # required
    #         dataflow_details: { # required
    #           # One of:
    #           agent_connection_details: {
    #             ingress_address_and_port: { # required
    #               socket_address: { # required
    #                 name: "String", # required
    #                 port: 1, # required
    #               },
    #               mtu: 1
    #             },
    #             agent_ip_and_port_address: { # required
    #               socket_address: { # required
    #                 name: "IpV4Address", # required
    #                 port_range: { # required
    #                   minimum: 1, # required
    #                   maximum: 1, # required
    #                 }
    #               },
    #               mtu: 1
    #             }
    #           }
    #         }
    #       },
    #       downlink_aws_ground_station_agent_endpoint: {
    #         name: "SafeName", # required
    #         dataflow_details: { # required
    #           # One of:
    #           agent_connection_details: {
    #             agent_ip_and_port_address: { # required
    #               socket_address: { # required
    #                 name: "IpV4Address", # required
    #                 port_range: { # required
    #                   minimum: 1, # required
    #                   maximum: 1, # required
    #                 }
    #               },
    #               mtu: 1
    #             },
    #             egress_address_and_port: { # required
    #               socket_address: { # required
    #                 name: "String", # required
    #                 port: 1, # required
    #               },
    #               mtu: 1
    #             }
    #           }
    #         }
    #       }
    #     }],
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataflow_endpoint_group_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataflow_endpoint_group_id: "Uuid"
    #   }
    # @return [Types::CreateDataflowEndpointGroupV2Response]
    def create_dataflow_endpoint_group_v2(params = {}, options = {})
      request = build_request(:create_dataflow_endpoint_group_v2, params)
      request.send_request(options)
    end

    # <p>Create an ephemeris with your specified <a>EphemerisData</a>.</p>
    # @param [Hash, Types::CreateEphemerisRequest] params
    # @option params [String] :satellite_id
    #   <p>The satellite ID that associates this ephemeris with a satellite in AWS Ground Station.</p>
    # @option params [Boolean] :enabled
    #   <p>Set to <code>true</code> to enable the ephemeris after validation. Set to <code>false</code> to keep it disabled.</p>
    # @option params [Integer] :priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    # @option params [Time] :expiration_time
    #   <p>An overall expiration time for the ephemeris in UTC, after which it will become <code>EXPIRED</code>.</p>
    # @option params [String] :name
    #   <p>A name that you can use to identify the ephemeris.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key to use for encrypting the ephemeris.</p>
    # @option params [Types::EphemerisData] :ephemeris
    #   <p>Ephemeris data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to an ephemeris.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     satellite_id: "Uuid",
    #     enabled: false,
    #     priority: 1,
    #     expiration_time: Time.now,
    #     name: "SafeName", # required
    #     kms_key_arn: "KeyArn",
    #     ephemeris: {
    #       # One of:
    #       tle: {
    #         s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         },
    #         tle_data: [
    #           {
    #             tle_line1: "TleLineOne", # required
    #             tle_line2: "TleLineTwo", # required
    #             valid_time_range: { # required
    #               start_time: Time.now, # required
    #               end_time: Time.now, # required
    #             }
    #           }
    #         ]
    #       },
    #       oem: {
    #         s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         },
    #         oem_data: "UnboundedString"
    #       },
    #       az_el: {
    #         ground_station: "GroundStationName", # required
    #         data: { # required
    #           # One of:
    #           s3_object: {
    #             bucket: "S3BucketName",
    #             key: "S3ObjectKey",
    #             version: "S3VersionId"
    #           },
    #           az_el_data: {
    #             angle_unit: "DEGREE_ANGLE" # One of: ["DEGREE_ANGLE", "RADIAN"], # required
    #             az_el_segment_list: [ # required
    #               {
    #                 reference_epoch: Time.now, # required
    #                 valid_time_range: { # required
    #                   start_time: Time.now, # required
    #                   end_time: Time.now, # required
    #                 },
    #                 az_el_list: [ # required
    #                   {
    #                     dt: 1.0, # required
    #                     az: 1.0, # required
    #                     el: 1.0, # required
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ephemeris(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ephemeris_id: "Uuid"
    #   }
    # @return [Types::CreateEphemerisOutput]
    def create_ephemeris(params = {}, options = {})
      request = build_request(:create_ephemeris, params)
      request.send_request(options)
    end

    # <p>Creates a mission profile.</p> <p> <code>dataflowEdges</code> is a list of lists of strings. Each lower level list of strings has two elements: a <i>from</i> ARN and a <i>to</i> ARN.</p>
    # @param [Hash, Types::CreateMissionProfileRequest] params
    # @option params [String] :name
    #   <p>Name of a mission profile.</p>
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you'd like to receive a Ground Station Contact State Change event indicating an upcoming pass.</p>
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    # @option params [Integer] :minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you'd like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    # @option params [Array<Array<String>>] :dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code> Config</code> and a <i>to</i> <code>Config</code>.</p>
    # @option params [String] :tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    # @option params [String] :telemetry_sink_config_arn
    #   <p>ARN of a telemetry sink <code>Config</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a mission profile.</p>
    # @option params [Types::KmsKey] :streams_kms_key
    #   <p>KMS key to use for encrypting streams.</p>
    # @option params [String] :streams_kms_role
    #   <p>Role to use for encrypting streams with KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SafeName", # required
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     minimum_viable_contact_duration_seconds: 1, # required
    #     dataflow_edges: [ # required
    #       ["ConfigArn"]
    #     ],
    #     tracking_config_arn: "ConfigArn", # required
    #     telemetry_sink_config_arn: "ConfigArn",
    #     tags: {
    #       "String" => "String"
    #     },
    #     streams_kms_key: {
    #       # One of:
    #       kms_key_arn: "KeyArn",
    #       kms_alias_arn: "KeyAliasArn",
    #       kms_alias_name: "KeyAliasName"
    #     },
    #     streams_kms_role: "RoleArn"
    #   }
    #   options = {}
    #   response = client.create_mission_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mission_profile_id: "Uuid"
    #   }
    # @return [Types::CreateMissionProfileOutput]
    def create_mission_profile(params = {}, options = {})
      request = build_request(:create_mission_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>Config</code>.</p>
    # @param [Hash, Types::DeleteConfigRequest] params
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "Uuid", # required
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"], # required
    #   }
    #   options = {}
    #   response = client.delete_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_id: "String",
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #     config_arn: "ConfigArn"
    #   }
    # @return [Types::DeleteConfigOutput]
    def delete_config(params = {}, options = {})
      request = build_request(:delete_config, params)
      request.send_request(options)
    end

    # <p>Deletes a dataflow endpoint group.</p>
    # @param [Hash, Types::DeleteDataflowEndpointGroupRequest] params
    # @option params [String] :dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataflow_endpoint_group_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_dataflow_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataflow_endpoint_group_id: "Uuid"
    #   }
    # @return [Types::DeleteDataflowEndpointGroupOutput]
    def delete_dataflow_endpoint_group(params = {}, options = {})
      request = build_request(:delete_dataflow_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Delete an ephemeris.</p>
    # @param [Hash, Types::DeleteEphemerisRequest] params
    # @option params [String] :ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ephemeris_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_ephemeris(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ephemeris_id: "Uuid"
    #   }
    # @return [Types::DeleteEphemerisOutput]
    def delete_ephemeris(params = {}, options = {})
      request = build_request(:delete_ephemeris, params)
      request.send_request(options)
    end

    # <p>Deletes a mission profile.</p>
    # @param [Hash, Types::DeleteMissionProfileRequest] params
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mission_profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_mission_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mission_profile_id: "Uuid"
    #   }
    # @return [Types::DeleteMissionProfileOutput]
    def delete_mission_profile(params = {}, options = {})
      request = build_request(:delete_mission_profile, params)
      request.send_request(options)
    end

    # <p>Describes an existing contact.</p>
    # @param [Hash, Types::DescribeContactRequest] params
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.describe_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "Uuid",
    #     mission_profile_arn: "MissionProfileArn",
    #     satellite_arn: "satelliteArn",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     pre_pass_start_time: Time.now,
    #     post_pass_end_time: Time.now,
    #     ground_station: "String",
    #     contact_status: "SCHEDULING" # One of: ["SCHEDULING", "FAILED_TO_SCHEDULE", "SCHEDULED", "CANCELLED", "AWS_CANCELLED", "PREPASS", "PASS", "POSTPASS", "COMPLETED", "FAILED", "AVAILABLE", "CANCELLING", "AWS_FAILED"],
    #     error_message: "String",
    #     maximum_elevation: {
    #       value: 1.0, # required
    #       unit: "DEGREE_ANGLE" # One of: ["DEGREE_ANGLE", "RADIAN"], # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     region: "String",
    #     dataflow_list: [
    #       {
    #         source: {
    #           config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #           config_id: "String",
    #           config_details: {
    #             # One of:
    #             endpoint_details: {
    #               security_details: {
    #                 subnet_ids: ["String"], # required
    #                 security_group_ids: ["String"], # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               endpoint: {
    #                 name: "SafeName",
    #                 address: {
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #                 mtu: 1
    #               },
    #               aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 egress_address: { # required
    #                   socket_address: { # required
    #                     name: "String", # required
    #                     port: 1, # required
    #                   },
    #                   mtu: 1
    #                 },
    #                 ingress_address: { # required
    #                   socket_address: { # required
    #                     name: "IpV4Address", # required
    #                     port_range: { # required
    #                       minimum: 1, # required
    #                       maximum: 1, # required
    #                     }
    #                   },
    #                   mtu: 1
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               uplink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     ingress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     },
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               downlink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     },
    #                     egress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #               health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #             },
    #             antenna_demod_decode_details: {
    #               output_node: "String"
    #             },
    #             s3_recording_details: {
    #               bucket_arn: "BucketArn",
    #               key_template: "String"
    #             }
    #           },
    #           dataflow_source_region: "String"
    #         },
    #         destination: {
    #           config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #           config_id: "Uuid",
    #           config_details: {
    #             # One of:
    #             endpoint_details: {
    #               security_details: {
    #                 subnet_ids: ["String"], # required
    #                 security_group_ids: ["String"], # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               endpoint: {
    #                 name: "SafeName",
    #                 address: {
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #                 mtu: 1
    #               },
    #               aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 egress_address: { # required
    #                   socket_address: { # required
    #                     name: "String", # required
    #                     port: 1, # required
    #                   },
    #                   mtu: 1
    #                 },
    #                 ingress_address: { # required
    #                   socket_address: { # required
    #                     name: "IpV4Address", # required
    #                     port_range: { # required
    #                       minimum: 1, # required
    #                       maximum: 1, # required
    #                     }
    #                   },
    #                   mtu: 1
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               uplink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     ingress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     },
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               downlink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     },
    #                     egress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #               health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #             },
    #             antenna_demod_decode_details: {
    #               output_node: "String"
    #             },
    #             s3_recording_details: {
    #               bucket_arn: "BucketArn",
    #               key_template: "String"
    #             }
    #           },
    #           dataflow_destination_region: "String"
    #         },
    #         error_message: "String"
    #       }
    #     ],
    #     visibility_start_time: Time.now,
    #     visibility_end_time: Time.now,
    #     tracking_overrides: {
    #       program_track_settings: {
    #         # One of:
    #         az_el: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         oem: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         tle: {
    #           ephemeris_id: "Uuid", # required
    #         }
    #       }
    #     },
    #     ephemeris: {
    #       ephemeris_id: "Uuid",
    #       ephemeris_type: "TLE" # One of: ["TLE", "OEM", "AZ_EL", "SERVICE_MANAGED"], # required
    #     },
    #     version: {
    #       version_id: 1,
    #       created: Time.now,
    #       activated: Time.now,
    #       superseded: Time.now,
    #       last_updated: Time.now,
    #       status: "UPDATING" # One of: ["UPDATING", "ACTIVE", "SUPERSEDED", "FAILED_TO_UPDATE"],
    #       failure_codes: ["INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_SATELLITE_ARN", "INVALID_UPDATE_CONTACT_REQUEST", "EPHEMERIS_NOT_FOUND", "EPHEMERIS_TIME_RANGE_INVALID", "EPHEMERIS_NOT_ENABLED", "SATELLITE_DOES_NOT_MATCH_EPHEMERIS", "NOT_ONBOARDED_TO_AZEL_EPHEMERIS", "AZEL_EPHEMERIS_NOT_FOUND", "AZEL_EPHEMERIS_WRONG_GROUND_STATION", "AZEL_EPHEMERIS_INVALID_STATUS", "AZEL_EPHEMERIS_TIME_RANGE_INVALID"]],
    #       failure_message: "String"
    #     }
    #   }
    # @return [Types::DescribeContactResponse]
    def describe_contact(params = {}, options = {})
      request = build_request(:describe_contact, params)
      request.send_request(options)
    end

    # <p>Describes a specific version of a contact.</p>
    # @param [Hash, Types::DescribeContactVersionRequest] params
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    # @option params [Integer] :version_id
    #   <p>Version ID of a contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "Uuid", # required
    #     version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.describe_contact_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "Uuid",
    #     mission_profile_arn: "MissionProfileArn",
    #     satellite_arn: "satelliteArn",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     pre_pass_start_time: Time.now,
    #     post_pass_end_time: Time.now,
    #     ground_station: "String",
    #     contact_status: "SCHEDULING" # One of: ["SCHEDULING", "FAILED_TO_SCHEDULE", "SCHEDULED", "CANCELLED", "AWS_CANCELLED", "PREPASS", "PASS", "POSTPASS", "COMPLETED", "FAILED", "AVAILABLE", "CANCELLING", "AWS_FAILED"],
    #     error_message: "String",
    #     maximum_elevation: {
    #       value: 1.0, # required
    #       unit: "DEGREE_ANGLE" # One of: ["DEGREE_ANGLE", "RADIAN"], # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     region: "String",
    #     dataflow_list: [
    #       {
    #         source: {
    #           config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #           config_id: "String",
    #           config_details: {
    #             # One of:
    #             endpoint_details: {
    #               security_details: {
    #                 subnet_ids: ["String"], # required
    #                 security_group_ids: ["String"], # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               endpoint: {
    #                 name: "SafeName",
    #                 address: {
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #                 mtu: 1
    #               },
    #               aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 egress_address: { # required
    #                   socket_address: { # required
    #                     name: "String", # required
    #                     port: 1, # required
    #                   },
    #                   mtu: 1
    #                 },
    #                 ingress_address: { # required
    #                   socket_address: { # required
    #                     name: "IpV4Address", # required
    #                     port_range: { # required
    #                       minimum: 1, # required
    #                       maximum: 1, # required
    #                     }
    #                   },
    #                   mtu: 1
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               uplink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     ingress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     },
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               downlink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     },
    #                     egress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #               health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #             },
    #             antenna_demod_decode_details: {
    #               output_node: "String"
    #             },
    #             s3_recording_details: {
    #               bucket_arn: "BucketArn",
    #               key_template: "String"
    #             }
    #           },
    #           dataflow_source_region: "String"
    #         },
    #         destination: {
    #           config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #           config_id: "Uuid",
    #           config_details: {
    #             # One of:
    #             endpoint_details: {
    #               security_details: {
    #                 subnet_ids: ["String"], # required
    #                 security_group_ids: ["String"], # required
    #                 role_arn: "RoleArn", # required
    #               },
    #               endpoint: {
    #                 name: "SafeName",
    #                 address: {
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #                 mtu: 1
    #               },
    #               aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 egress_address: { # required
    #                   socket_address: { # required
    #                     name: "String", # required
    #                     port: 1, # required
    #                   },
    #                   mtu: 1
    #                 },
    #                 ingress_address: { # required
    #                   socket_address: { # required
    #                     name: "IpV4Address", # required
    #                     port_range: { # required
    #                       minimum: 1, # required
    #                       maximum: 1, # required
    #                     }
    #                   },
    #                   mtu: 1
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               uplink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     ingress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     },
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               downlink_aws_ground_station_agent_endpoint: {
    #                 name: "SafeName", # required
    #                 dataflow_details: { # required
    #                   # One of:
    #                   agent_connection_details: {
    #                     agent_ip_and_port_address: { # required
    #                       socket_address: { # required
    #                         name: "IpV4Address", # required
    #                         port_range: { # required
    #                           minimum: 1, # required
    #                           maximum: 1, # required
    #                         }
    #                       },
    #                       mtu: 1
    #                     },
    #                     egress_address_and_port: { # required
    #                       socket_address: { # required
    #                         name: "String", # required
    #                         port: 1, # required
    #                       },
    #                       mtu: 1
    #                     }
    #                   }
    #                 },
    #                 agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #                 audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #               },
    #               health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #               health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #             },
    #             antenna_demod_decode_details: {
    #               output_node: "String"
    #             },
    #             s3_recording_details: {
    #               bucket_arn: "BucketArn",
    #               key_template: "String"
    #             }
    #           },
    #           dataflow_destination_region: "String"
    #         },
    #         error_message: "String"
    #       }
    #     ],
    #     visibility_start_time: Time.now,
    #     visibility_end_time: Time.now,
    #     tracking_overrides: {
    #       program_track_settings: {
    #         # One of:
    #         az_el: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         oem: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         tle: {
    #           ephemeris_id: "Uuid", # required
    #         }
    #       }
    #     },
    #     ephemeris: {
    #       ephemeris_id: "Uuid",
    #       ephemeris_type: "TLE" # One of: ["TLE", "OEM", "AZ_EL", "SERVICE_MANAGED"], # required
    #     },
    #     version: {
    #       version_id: 1,
    #       created: Time.now,
    #       activated: Time.now,
    #       superseded: Time.now,
    #       last_updated: Time.now,
    #       status: "UPDATING" # One of: ["UPDATING", "ACTIVE", "SUPERSEDED", "FAILED_TO_UPDATE"],
    #       failure_codes: ["INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_SATELLITE_ARN", "INVALID_UPDATE_CONTACT_REQUEST", "EPHEMERIS_NOT_FOUND", "EPHEMERIS_TIME_RANGE_INVALID", "EPHEMERIS_NOT_ENABLED", "SATELLITE_DOES_NOT_MATCH_EPHEMERIS", "NOT_ONBOARDED_TO_AZEL_EPHEMERIS", "AZEL_EPHEMERIS_NOT_FOUND", "AZEL_EPHEMERIS_WRONG_GROUND_STATION", "AZEL_EPHEMERIS_INVALID_STATUS", "AZEL_EPHEMERIS_TIME_RANGE_INVALID"]],
    #       failure_message: "String"
    #     }
    #   }
    # @return [Types::DescribeContactVersionResponse]
    def describe_contact_version(params = {}, options = {})
      request = build_request(:describe_contact_version, params)
      request.send_request(options)
    end

    # <p>Retrieve information about an existing ephemeris.</p>
    # @param [Hash, Types::DescribeEphemerisRequest] params
    # @option params [String] :ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ephemeris_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.describe_ephemeris(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ephemeris_id: "Uuid",
    #     satellite_id: "Uuid",
    #     status: "VALIDATING" # One of: ["VALIDATING", "INVALID", "ERROR", "ENABLED", "DISABLED", "EXPIRED"],
    #     priority: 1,
    #     creation_time: Time.now,
    #     enabled: false,
    #     name: "SafeName",
    #     tags: {
    #       "String" => "String"
    #     },
    #     supplied_data: {
    #       # One of:
    #       tle: {
    #         source_s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         },
    #         ephemeris_data: "UnboundedString"
    #       },
    #       oem: {
    #         source_s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         },
    #         ephemeris_data: "UnboundedString"
    #       },
    #       az_el: {
    #         source_s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         },
    #         ephemeris_data: "UnboundedString"
    #       }
    #     },
    #     invalid_reason: "METADATA_INVALID" # One of: ["METADATA_INVALID", "TIME_RANGE_INVALID", "TRAJECTORY_INVALID", "KMS_KEY_INVALID", "VALIDATION_ERROR"],
    #     error_reasons: [
    #       {
    #         error_code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "MISMATCHED_SATCAT_ID", "OEM_VERSION_UNSUPPORTED", "ORIGINATOR_MISSING", "CREATION_DATE_MISSING", "OBJECT_NAME_MISSING", "OBJECT_ID_MISSING", "REF_FRAME_UNSUPPORTED", "REF_FRAME_EPOCH_UNSUPPORTED", "TIME_SYSTEM_UNSUPPORTED", "CENTER_BODY_UNSUPPORTED", "INTERPOLATION_MISSING", "INTERPOLATION_DEGREE_INVALID", "AZ_EL_SEGMENT_LIST_MISSING", "INSUFFICIENT_TIME_AZ_EL", "START_TIME_IN_FUTURE", "END_TIME_IN_PAST", "EXPIRATION_TIME_TOO_EARLY", "START_TIME_METADATA_TOO_EARLY", "STOP_TIME_METADATA_TOO_LATE", "AZ_EL_SEGMENT_END_TIME_BEFORE_START_TIME", "AZ_EL_SEGMENT_TIMES_OVERLAP", "AZ_EL_SEGMENTS_OUT_OF_ORDER", "TIME_AZ_EL_ITEMS_OUT_OF_ORDER", "MEAN_MOTION_INVALID", "TIME_AZ_EL_AZ_RADIAN_RANGE_INVALID", "TIME_AZ_EL_EL_RADIAN_RANGE_INVALID", "TIME_AZ_EL_AZ_DEGREE_RANGE_INVALID", "TIME_AZ_EL_EL_DEGREE_RANGE_INVALID", "TIME_AZ_EL_ANGLE_UNITS_INVALID", "INSUFFICIENT_KMS_PERMISSIONS", "FILE_FORMAT_INVALID", "AZ_EL_SEGMENT_REFERENCE_EPOCH_INVALID", "AZ_EL_SEGMENT_START_TIME_INVALID", "AZ_EL_SEGMENT_END_TIME_INVALID", "AZ_EL_SEGMENT_VALID_TIME_RANGE_INVALID", "AZ_EL_SEGMENT_END_TIME_TOO_LATE", "AZ_EL_TOTAL_DURATION_EXCEEDED"], # required
    #         error_message: "ErrorString", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEphemerisResponse]
    def describe_ephemeris(params = {}, options = {})
      request = build_request(:describe_ephemeris, params)
      request.send_request(options)
    end

    # <note> <p> For use by AWS Ground Station Agent and shouldn't be called directly.</p> </note> <p>Gets the latest configuration information for a registered agent.</p>
    # @param [Hash, Types::GetAgentConfigurationRequest] params
    # @option params [String] :agent_id
    #   <p>UUID of agent to get configuration information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_agent_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Uuid",
    #     tasking_document: "String"
    #   }
    # @return [Types::GetAgentConfigurationResponse]
    def get_agent_configuration(params = {}, options = {})
      request = build_request(:get_agent_configuration, params)
      request.send_request(options)
    end

    # <note> <p> For use by AWS Ground Station Agent and shouldn't be called directly.</p> </note> <p>Gets a presigned URL for uploading agent task response logs.</p>
    # @param [Hash, Types::GetAgentTaskResponseUrlRequest] params
    # @option params [String] :agent_id
    #   <p>UUID of agent requesting the response URL.</p>
    # @option params [String] :task_id
    #   <p>GUID of the agent task for which the response URL is being requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Uuid", # required
    #     task_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_agent_task_response_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Uuid", # required
    #     task_id: "Uuid", # required
    #     presigned_log_url: "String", # required
    #   }
    # @return [Types::GetAgentTaskResponseUrlResponse]
    def get_agent_task_response_url(params = {}, options = {})
      request = build_request(:get_agent_task_response_url, params)
      request.send_request(options)
    end

    # <p>Returns <code>Config</code> information.</p> <p>Only one <code>Config</code> response can be returned.</p>
    # @param [Hash, Types::GetConfigRequest] params
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "Uuid", # required
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"], # required
    #   }
    #   options = {}
    #   response = client.get_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_id: "String", # required
    #     config_arn: "ConfigArn", # required
    #     name: "String", # required
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #     config_data: { # required
    #       # One of:
    #       antenna_downlink_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         }
    #       },
    #       tracking_config: {
    #         autotrack: "REQUIRED" # One of: ["REQUIRED", "PREFERRED", "REMOVED"], # required
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String"
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         }
    #       },
    #       antenna_uplink_config: {
    #         transmit_disabled: false,
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         target_eirp: { # required
    #           value: 1.0, # required
    #           units: "dBW" # One of: ["dBW"], # required
    #         }
    #       },
    #       uplink_echo_config: {
    #         enabled: false, # required
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #       },
    #       s3_recording_config: {
    #         bucket_arn: "BucketArn", # required
    #         role_arn: "RoleArn", # required
    #         prefix: "S3KeyPrefix"
    #       },
    #       telemetry_sink_config: {
    #         telemetry_sink_type: "KINESIS_DATA_STREAM" # One of: ["KINESIS_DATA_STREAM"], # required
    #         telemetry_sink_data: { # required
    #           # One of:
    #           kinesis_data_stream_data: {
    #             kinesis_role_arn: "RoleArn", # required
    #             kinesis_data_stream_arn: "KinesisDataStreamArn", # required
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetConfigResponse]
    def get_config(params = {}, options = {})
      request = build_request(:get_config, params)
      request.send_request(options)
    end

    # <p>Returns the dataflow endpoint group.</p>
    # @param [Hash, Types::GetDataflowEndpointGroupRequest] params
    # @option params [String] :dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataflow_endpoint_group_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_dataflow_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataflow_endpoint_group_id: "Uuid",
    #     dataflow_endpoint_group_arn: "DataflowEndpointGroupArn",
    #     endpoints_details: [
    #       {
    #         security_details: {
    #           subnet_ids: ["String"], # required
    #           security_group_ids: ["String"], # required
    #           role_arn: "RoleArn", # required
    #         },
    #         endpoint: {
    #           name: "SafeName",
    #           address: {
    #             name: "String", # required
    #             port: 1, # required
    #           },
    #           status: "created" # One of: ["created", "creating", "deleted", "deleting", "failed"],
    #           mtu: 1
    #         },
    #         aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           egress_address: { # required
    #             socket_address: { # required
    #               name: "String", # required
    #               port: 1, # required
    #             },
    #             mtu: 1
    #           },
    #           ingress_address: { # required
    #             socket_address: { # required
    #               name: "IpV4Address", # required
    #               port_range: { # required
    #                 minimum: 1, # required
    #                 maximum: 1, # required
    #               }
    #             },
    #             mtu: 1
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         uplink_aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           dataflow_details: { # required
    #             # One of:
    #             agent_connection_details: {
    #               ingress_address_and_port: { # required
    #                 socket_address: { # required
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 mtu: 1
    #               },
    #               agent_ip_and_port_address: { # required
    #                 socket_address: { # required
    #                   name: "IpV4Address", # required
    #                   port_range: { # required
    #                     minimum: 1, # required
    #                     maximum: 1, # required
    #                   }
    #                 },
    #                 mtu: 1
    #               }
    #             }
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         downlink_aws_ground_station_agent_endpoint: {
    #           name: "SafeName", # required
    #           dataflow_details: { # required
    #             # One of:
    #             agent_connection_details: {
    #               agent_ip_and_port_address: { # required
    #                 socket_address: { # required
    #                   name: "IpV4Address", # required
    #                   port_range: { # required
    #                     minimum: 1, # required
    #                     maximum: 1, # required
    #                   }
    #                 },
    #                 mtu: 1
    #               },
    #               egress_address_and_port: { # required
    #                 socket_address: { # required
    #                   name: "String", # required
    #                   port: 1, # required
    #                 },
    #                 mtu: 1
    #               }
    #             }
    #           },
    #           agent_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"],
    #           audit_results: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"]
    #         },
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         health_reasons: ["NO_REGISTERED_AGENT" # One of: ["NO_REGISTERED_AGENT", "INVALID_IP_OWNERSHIP", "NOT_AUTHORIZED_TO_CREATE_SLR", "UNVERIFIED_IP_OWNERSHIP", "INITIALIZING_DATAPLANE", "DATAPLANE_FAILURE", "HEALTHY"]]
    #       }
    #     ],
    #     tags: {
    #       "String" => "String"
    #     },
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1
    #   }
    # @return [Types::GetDataflowEndpointGroupResponse]
    def get_dataflow_endpoint_group(params = {}, options = {})
      request = build_request(:get_dataflow_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Returns the number of reserved minutes used by account.</p>
    # @param [Hash, Types::GetMinuteUsageRequest] params
    # @option params [Integer] :month
    #   <p>The month being requested, with a value of 1-12.</p>
    # @option params [Integer] :year
    #   <p>The year being requested, in the format of YYYY.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     month: 1, # required
    #     year: 1, # required
    #   }
    #   options = {}
    #   response = client.get_minute_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_reserved_minutes_customer: false,
    #     total_reserved_minute_allocation: 1,
    #     upcoming_minutes_scheduled: 1,
    #     total_scheduled_minutes: 1,
    #     estimated_minutes_remaining: 1
    #   }
    # @return [Types::GetMinuteUsageResponse]
    def get_minute_usage(params = {}, options = {})
      request = build_request(:get_minute_usage, params)
      request.send_request(options)
    end

    # <p>Returns a mission profile.</p>
    # @param [Hash, Types::GetMissionProfileRequest] params
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mission_profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_mission_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mission_profile_id: "Uuid",
    #     mission_profile_arn: "MissionProfileArn",
    #     name: "SafeName",
    #     region: "AWSRegion",
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     minimum_viable_contact_duration_seconds: 1,
    #     dataflow_edges: [
    #       ["ConfigArn"]
    #     ],
    #     tracking_config_arn: "ConfigArn",
    #     telemetry_sink_config_arn: "ConfigArn",
    #     tags: {
    #       "String" => "String"
    #     },
    #     streams_kms_key: {
    #       # One of:
    #       kms_key_arn: "KeyArn",
    #       kms_alias_arn: "KeyAliasArn",
    #       kms_alias_name: "KeyAliasName"
    #     },
    #     streams_kms_role: "RoleArn"
    #   }
    # @return [Types::GetMissionProfileResponse]
    def get_mission_profile(params = {}, options = {})
      request = build_request(:get_mission_profile, params)
      request.send_request(options)
    end

    # <p>Returns a satellite.</p>
    # @param [Hash, Types::GetSatelliteRequest] params
    # @option params [String] :satellite_id
    #   <p>UUID of a satellite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     satellite_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_satellite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     satellite_id: "Uuid",
    #     satellite_arn: "satelliteArn",
    #     norad_satellite_id: 1,
    #     ground_stations: ["GroundStationName"],
    #     current_ephemeris: {
    #       source: "CUSTOMER_PROVIDED" # One of: ["CUSTOMER_PROVIDED", "SPACE_TRACK"], # required
    #       ephemeris_id: "Uuid",
    #       epoch: Time.now,
    #       name: "SafeName"
    #     }
    #   }
    # @return [Types::GetSatelliteOutput]
    def get_satellite(params = {}, options = {})
      request = build_request(:get_satellite, params)
      request.send_request(options)
    end

    # <p>Returns a list of antennas at a specified ground station.</p>
    # @param [Hash, Types::ListAntennasRequest] params
    # @option params [String] :ground_station_id
    #   <p>ID of a ground station.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of antennas returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListAntennas</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ground_station_id: "GroundStationName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_antennas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     antenna_list: [ # required
    #       {
    #         ground_station_name: "GroundStationName", # required
    #         antenna_name: "AntennaName", # required
    #         region: "AWSRegion", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAntennasResponse]
    def list_antennas(params = {}, options = {})
      request = build_request(:list_antennas, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>Config</code> objects.</p>
    # @param [Hash, Types::ListConfigsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of <code>Configs</code> returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     config_list: [
    #       {
    #         config_id: "String",
    #         config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #         config_arn: "ConfigArn",
    #         name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListConfigsResponse]
    def list_configs(params = {}, options = {})
      request = build_request(:list_configs, params)
      request.send_request(options)
    end

    # <p>Returns a list of versions for a specified contact.</p>
    # @param [Hash, Types::ListContactVersionsRequest] params
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of contact versions returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListContactVersions</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "Uuid", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_contact_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     contact_versions_list: [
    #       {
    #         version_id: 1,
    #         created: Time.now,
    #         activated: Time.now,
    #         superseded: Time.now,
    #         last_updated: Time.now,
    #         status: "UPDATING" # One of: ["UPDATING", "ACTIVE", "SUPERSEDED", "FAILED_TO_UPDATE"],
    #         failure_codes: ["INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_SATELLITE_ARN", "INVALID_UPDATE_CONTACT_REQUEST", "EPHEMERIS_NOT_FOUND", "EPHEMERIS_TIME_RANGE_INVALID", "EPHEMERIS_NOT_ENABLED", "SATELLITE_DOES_NOT_MATCH_EPHEMERIS", "NOT_ONBOARDED_TO_AZEL_EPHEMERIS", "AZEL_EPHEMERIS_NOT_FOUND", "AZEL_EPHEMERIS_WRONG_GROUND_STATION", "AZEL_EPHEMERIS_INVALID_STATUS", "AZEL_EPHEMERIS_TIME_RANGE_INVALID"]],
    #         failure_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListContactVersionsResponse]
    def list_contact_versions(params = {}, options = {})
      request = build_request(:list_contact_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of contacts.</p> <p>If <code>statusList</code> contains AVAILABLE, the request must include <code> groundStation</code>, <code>missionprofileArn</code>, and <code>satelliteArn</code>. </p>
    # @param [Hash, Types::ListContactsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of contacts returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    # @option params [Array<String>] :status_list
    #   <p>Status of a contact reservation.</p>
    # @option params [Time] :start_time
    #   <p>Start time of a contact in UTC.</p>
    # @option params [Time] :end_time
    #   <p>End time of a contact in UTC.</p>
    # @option params [String] :ground_station
    #   <p>Name of a ground station.</p>
    # @option params [String] :satellite_arn
    #   <p>ARN of a satellite.</p>
    # @option params [String] :mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    # @option params [Types::EphemerisFilter] :ephemeris
    #   <p>Filter for selecting contacts that use a specific ephemeris".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     status_list: ["SCHEDULING" # One of: ["SCHEDULING", "FAILED_TO_SCHEDULE", "SCHEDULED", "CANCELLED", "AWS_CANCELLED", "PREPASS", "PASS", "POSTPASS", "COMPLETED", "FAILED", "AVAILABLE", "CANCELLING", "AWS_FAILED"]], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     ground_station: "GroundStationName",
    #     satellite_arn: "satelliteArn",
    #     mission_profile_arn: "MissionProfileArn",
    #     ephemeris: {
    #       # One of:
    #       az_el: {
    #         id: "Uuid", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     contact_list: [
    #       {
    #         contact_id: "Uuid",
    #         mission_profile_arn: "MissionProfileArn",
    #         satellite_arn: "satelliteArn",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         pre_pass_start_time: Time.now,
    #         post_pass_end_time: Time.now,
    #         ground_station: "String",
    #         contact_status: "SCHEDULING" # One of: ["SCHEDULING", "FAILED_TO_SCHEDULE", "SCHEDULED", "CANCELLED", "AWS_CANCELLED", "PREPASS", "PASS", "POSTPASS", "COMPLETED", "FAILED", "AVAILABLE", "CANCELLING", "AWS_FAILED"],
    #         error_message: "String",
    #         maximum_elevation: {
    #           value: 1.0, # required
    #           unit: "DEGREE_ANGLE" # One of: ["DEGREE_ANGLE", "RADIAN"], # required
    #         },
    #         region: "String",
    #         tags: {
    #           "String" => "String"
    #         },
    #         visibility_start_time: Time.now,
    #         visibility_end_time: Time.now,
    #         ephemeris: {
    #           ephemeris_id: "Uuid",
    #           ephemeris_type: "TLE" # One of: ["TLE", "OEM", "AZ_EL", "SERVICE_MANAGED"], # required
    #         },
    #         version: {
    #           version_id: 1,
    #           created: Time.now,
    #           activated: Time.now,
    #           superseded: Time.now,
    #           last_updated: Time.now,
    #           status: "UPDATING" # One of: ["UPDATING", "ACTIVE", "SUPERSEDED", "FAILED_TO_UPDATE"],
    #           failure_codes: ["INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_SATELLITE_ARN", "INVALID_UPDATE_CONTACT_REQUEST", "EPHEMERIS_NOT_FOUND", "EPHEMERIS_TIME_RANGE_INVALID", "EPHEMERIS_NOT_ENABLED", "SATELLITE_DOES_NOT_MATCH_EPHEMERIS", "NOT_ONBOARDED_TO_AZEL_EPHEMERIS", "AZEL_EPHEMERIS_NOT_FOUND", "AZEL_EPHEMERIS_WRONG_GROUND_STATION", "AZEL_EPHEMERIS_INVALID_STATUS", "AZEL_EPHEMERIS_TIME_RANGE_INVALID"]],
    #           failure_message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListContactsResponse]
    def list_contacts(params = {}, options = {})
      request = build_request(:list_contacts, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DataflowEndpoint</code> groups.</p>
    # @param [Hash, Types::ListDataflowEndpointGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of dataflow endpoint groups returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_dataflow_endpoint_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     dataflow_endpoint_group_list: [
    #       {
    #         dataflow_endpoint_group_id: "Uuid",
    #         dataflow_endpoint_group_arn: "DataflowEndpointGroupArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListDataflowEndpointGroupsResponse]
    def list_dataflow_endpoint_groups(params = {}, options = {})
      request = build_request(:list_dataflow_endpoint_groups, params)
      request.send_request(options)
    end

    # <p>List your existing ephemerides.</p>
    # @param [Hash, Types::ListEphemeridesRequest] params
    # @option params [String] :satellite_id
    #   <p>The AWS Ground Station satellite ID to list ephemeris for.</p>
    # @option params [String] :ephemeris_type
    #   <p>Filter ephemerides by type. If not specified, all ephemeris types will be returned.</p>
    # @option params [Time] :start_time
    #   <p>The start time for the list operation in UTC. Returns ephemerides with expiration times within your specified time range.</p>
    # @option params [Time] :end_time
    #   <p>The end time for the list operation in UTC. Returns ephemerides with expiration times within your specified time range.</p>
    # @option params [Array<String>] :status_list
    #   <p>The list of ephemeris status to return.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of ephemerides to return.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     satellite_id: "Uuid",
    #     ephemeris_type: "TLE" # One of: ["TLE", "OEM", "AZ_EL", "SERVICE_MANAGED"],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     status_list: ["VALIDATING" # One of: ["VALIDATING", "INVALID", "ERROR", "ENABLED", "DISABLED", "EXPIRED"]],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_ephemerides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     ephemerides: [
    #       {
    #         ephemeris_id: "Uuid",
    #         ephemeris_type: "TLE" # One of: ["TLE", "OEM", "AZ_EL", "SERVICE_MANAGED"],
    #         status: "VALIDATING" # One of: ["VALIDATING", "INVALID", "ERROR", "ENABLED", "DISABLED", "EXPIRED"],
    #         priority: 1,
    #         enabled: false,
    #         creation_time: Time.now,
    #         name: "SafeName",
    #         source_s3_object: {
    #           bucket: "S3BucketName",
    #           key: "S3ObjectKey",
    #           version: "S3VersionId"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListEphemeridesResponse]
    def list_ephemerides(params = {}, options = {})
      request = build_request(:list_ephemerides, params)
      request.send_request(options)
    end

    # <p>Returns a list of reservations for a specified ground station.</p>
    # @param [Hash, Types::ListGroundStationReservationsRequest] params
    # @option params [String] :ground_station_id
    #   <p>ID of a ground station.</p>
    # @option params [Time] :start_time
    #   <p>Start time of the reservation window in UTC.</p>
    # @option params [Time] :end_time
    #   <p>End time of the reservation window in UTC.</p>
    # @option params [Array<String>] :reservation_types
    #   <p>Types of reservations to filter by.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of ground station reservations returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListGroundStationReservations</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ground_station_id: "GroundStationName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     reservation_types: ["MAINTENANCE" # One of: ["MAINTENANCE", "CONTACT"]],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_ground_station_reservations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation_list: [ # required
    #       {
    #         reservation_type: "MAINTENANCE" # One of: ["MAINTENANCE", "CONTACT"], # required
    #         ground_station_id: "GroundStationName", # required
    #         antenna_name: "AntennaName", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         reservation_details: { # required
    #           # One of:
    #           maintenance: {
    #             maintenance_type: "PLANNED" # One of: ["PLANNED", "UNPLANNED"], # required
    #           },
    #           contact: {
    #             contact_id: "Uuid"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGroundStationReservationsResponse]
    def list_ground_station_reservations(params = {}, options = {})
      request = build_request(:list_ground_station_reservations, params)
      request.send_request(options)
    end

    # <p>Returns a list of ground stations. </p>
    # @param [Hash, Types::ListGroundStationsInput] params
    # @option params [String] :satellite_id
    #   <p>Satellite ID to retrieve on-boarded ground stations.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of ground stations returned.</p>
    # @option params [String] :next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     satellite_id: "Uuid",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_ground_stations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     ground_station_list: [
    #       {
    #         ground_station_id: "GroundStationName",
    #         ground_station_name: "GroundStationName",
    #         region: "AWSRegion"
    #       }
    #     ]
    #   }
    # @return [Types::ListGroundStationsResponse]
    def list_ground_stations(params = {}, options = {})
      request = build_request(:list_ground_stations, params)
      request.send_request(options)
    end

    # <p>Returns a list of mission profiles.</p>
    # @param [Hash, Types::ListMissionProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of mission profiles returned.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_mission_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     mission_profile_list: [
    #       {
    #         mission_profile_id: "Uuid",
    #         mission_profile_arn: "MissionProfileArn",
    #         region: "AWSRegion",
    #         name: "SafeName"
    #       }
    #     ]
    #   }
    # @return [Types::ListMissionProfilesResponse]
    def list_mission_profiles(params = {}, options = {})
      request = build_request(:list_mission_profiles, params)
      request.send_request(options)
    end

    # <p>Returns a list of satellites.</p>
    # @param [Hash, Types::ListSatellitesRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of satellites returned.</p>
    # @option params [String] :next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_satellites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     satellites: [
    #       {
    #         satellite_id: "Uuid",
    #         satellite_arn: "satelliteArn",
    #         norad_satellite_id: 1,
    #         ground_stations: ["GroundStationName"],
    #         current_ephemeris: {
    #           source: "CUSTOMER_PROVIDED" # One of: ["CUSTOMER_PROVIDED", "SPACE_TRACK"], # required
    #           ephemeris_id: "Uuid",
    #           epoch: Time.now,
    #           name: "SafeName"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSatellitesResponse]
    def list_satellites(params = {}, options = {})
      request = build_request(:list_satellites, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN of a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AnyArn", # required
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

    # <note> <p> For use by AWS Ground Station Agent and shouldn't be called directly.</p> </note> <p> Registers a new agent with AWS Ground Station. </p>
    # @param [Hash, Types::RegisterAgentRequest] params
    # @option params [Types::DiscoveryData] :discovery_data
    #   <p>Data for associating an agent with the capabilities it is managing.</p>
    # @option params [Types::AgentDetails] :agent_details
    #   <p>Detailed information about the agent being registered.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to an <code>Agent</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discovery_data: { # required
    #       public_ip_addresses: ["IpV4Address"], # required
    #       private_ip_addresses: ["IpV4Address"], # required
    #       capability_arns: ["CapabilityArn"], # required
    #     },
    #     agent_details: { # required
    #       agent_version: "VersionString", # required
    #       instance_id: "InstanceId", # required
    #       instance_type: "InstanceType", # required
    #       reserved_cpu_cores: [1],
    #       agent_cpu_cores: [1],
    #       component_versions: [ # required
    #         {
    #           component_type: "ComponentTypeString", # required
    #           versions: ["VersionString"], # required
    #         }
    #       ]
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.register_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Uuid"
    #   }
    # @return [Types::RegisterAgentResponse]
    def register_agent(params = {}, options = {})
      request = build_request(:register_agent, params)
      request.send_request(options)
    end

    # <p>Reserves a contact using specified parameters.</p>
    # @param [Hash, Types::ReserveContactRequest] params
    # @option params [String] :mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    # @option params [String] :satellite_arn
    #   <p>ARN of a satellite</p>
    # @option params [Time] :start_time
    #   <p>Start time of a contact in UTC.</p>
    # @option params [Time] :end_time
    #   <p>End time of a contact in UTC.</p>
    # @option params [String] :ground_station
    #   <p>Name of a ground station.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a contact.</p>
    # @option params [Types::TrackingOverrides] :tracking_overrides
    #   <p>Tracking configuration overrides for the contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mission_profile_arn: "MissionProfileArn", # required
    #     satellite_arn: "satelliteArn",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     ground_station: "GroundStationName", # required
    #     tags: {
    #       "String" => "String"
    #     },
    #     tracking_overrides: {
    #       program_track_settings: {
    #         # One of:
    #         az_el: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         oem: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         tle: {
    #           ephemeris_id: "Uuid", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.reserve_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "Uuid",
    #     version_id: 1
    #   }
    # @return [Types::ReserveContactOutput]
    def reserve_contact(params = {}, options = {})
      request = build_request(:reserve_contact, params)
      request.send_request(options)
    end

    # <p>Assigns a tag to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN of a resource tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AnyArn", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>Deassigns a resource tag.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN of a resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of a resource tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AnyArn", # required
    #     tag_keys: ["UnboundedString"], # required
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

    # <note> <p> For use by AWS Ground Station Agent and shouldn't be called directly.</p> </note> <p>Update the status of the agent.</p>
    # @param [Hash, Types::UpdateAgentStatusRequest] params
    # @option params [String] :agent_id
    #   <p>UUID of agent to update.</p>
    # @option params [String] :task_id
    #   <p>GUID of agent task.</p>
    # @option params [Types::AggregateStatus] :aggregate_status
    #   <p>Aggregate status for agent.</p>
    # @option params [Array<Types::ComponentStatusData>] :component_statuses
    #   <p>List of component statuses for agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Uuid", # required
    #     task_id: "Uuid", # required
    #     aggregate_status: { # required
    #       status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"], # required
    #       signature_map: {
    #         "String" => false
    #       }
    #     },
    #     component_statuses: [ # required
    #       {
    #         component_type: "ComponentTypeString", # required
    #         capability_arn: "CapabilityArn", # required
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "ACTIVE", "INACTIVE"], # required
    #         bytes_sent: 1,
    #         bytes_received: 1,
    #         packets_dropped: 1,
    #         dataflow_id: "Uuid", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_agent_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Uuid", # required
    #   }
    # @return [Types::UpdateAgentStatusResponse]
    def update_agent_status(params = {}, options = {})
      request = build_request(:update_agent_status, params)
      request.send_request(options)
    end

    # <p>Updates the <code>Config</code> used when scheduling contacts.</p> <p>Updating a <code>Config</code> will not update the execution parameters for existing future contacts scheduled with this <code>Config</code>.</p>
    # @param [Hash, Types::UpdateConfigRequest] params
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    # @option params [String] :name
    #   <p>Name of a <code>Config</code>.</p>
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    # @option params [Types::ConfigTypeData] :config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "Uuid", # required
    #     name: "SafeName", # required
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"], # required
    #     config_data: { # required
    #       # One of:
    #       antenna_downlink_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         }
    #       },
    #       tracking_config: {
    #         autotrack: "REQUIRED" # One of: ["REQUIRED", "PREFERRED", "REMOVED"], # required
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String"
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           bandwidth: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         }
    #       },
    #       antenna_uplink_config: {
    #         transmit_disabled: false,
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             value: 1.0, # required
    #             units: "GHz" # One of: ["GHz", "MHz", "kHz"], # required
    #           },
    #           polarization: "RIGHT_HAND" # One of: ["RIGHT_HAND", "LEFT_HAND", "NONE"]
    #         },
    #         target_eirp: { # required
    #           value: 1.0, # required
    #           units: "dBW" # One of: ["dBW"], # required
    #         }
    #       },
    #       uplink_echo_config: {
    #         enabled: false, # required
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #       },
    #       s3_recording_config: {
    #         bucket_arn: "BucketArn", # required
    #         role_arn: "RoleArn", # required
    #         prefix: "S3KeyPrefix"
    #       },
    #       telemetry_sink_config: {
    #         telemetry_sink_type: "KINESIS_DATA_STREAM" # One of: ["KINESIS_DATA_STREAM"], # required
    #         telemetry_sink_data: { # required
    #           # One of:
    #           kinesis_data_stream_data: {
    #             kinesis_role_arn: "RoleArn", # required
    #             kinesis_data_stream_arn: "KinesisDataStreamArn", # required
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_id: "String",
    #     config_type: "antenna-downlink" # One of: ["antenna-downlink", "antenna-downlink-demod-decode", "tracking", "dataflow-endpoint", "antenna-uplink", "uplink-echo", "s3-recording", "telemetry-sink"],
    #     config_arn: "ConfigArn"
    #   }
    # @return [Types::UpdateConfigOutput]
    def update_config(params = {}, options = {})
      request = build_request(:update_config, params)
      request.send_request(options)
    end

    # <p>Updates a specific contact.</p>
    # @param [Hash, Types::UpdateContactRequest] params
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    # @option params [String] :client_token
    #   <p>A client token is a unique, case-sensitive string of up to 64 ASCII characters. It is generated by the client to ensure idempotent operations, allowing safe retries without unintended side effects.</p>
    # @option params [Types::TrackingOverrides] :tracking_overrides
    #   <p>Overrides the default tracking configuration on an antenna during a contact.</p>
    # @option params [String] :satellite_arn
    #   <p>ARN of a satellite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "Uuid", # required
    #     client_token: "ClientToken",
    #     tracking_overrides: {
    #       program_track_settings: {
    #         # One of:
    #         az_el: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         oem: {
    #           ephemeris_id: "Uuid", # required
    #         },
    #         tle: {
    #           ephemeris_id: "Uuid", # required
    #         }
    #       }
    #     },
    #     satellite_arn: "satelliteArn"
    #   }
    #   options = {}
    #   response = client.update_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "Uuid",
    #     version_id: 1
    #   }
    # @return [Types::UpdateContactResponse]
    def update_contact(params = {}, options = {})
      request = build_request(:update_contact, params)
      request.send_request(options)
    end

    # <p>Update an existing ephemeris.</p>
    # @param [Hash, Types::UpdateEphemerisRequest] params
    # @option params [String] :ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    # @option params [Boolean] :enabled
    #   <p>Enable or disable the ephemeris. Changing this value doesn't require re-validation.</p>
    # @option params [String] :name
    #   <p>A name that you can use to identify the ephemeris.</p>
    # @option params [Integer] :priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ephemeris_id: "Uuid", # required
    #     enabled: false, # required
    #     name: "SafeName",
    #     priority: 1
    #   }
    #   options = {}
    #   response = client.update_ephemeris(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ephemeris_id: "Uuid"
    #   }
    # @return [Types::UpdateEphemerisOutput]
    def update_ephemeris(params = {}, options = {})
      request = build_request(:update_ephemeris, params)
      request.send_request(options)
    end

    # <p>Updates a mission profile.</p> <p>Updating a mission profile will not update the execution parameters for existing future contacts.</p>
    # @param [Hash, Types::UpdateMissionProfileRequest] params
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    # @option params [String] :name
    #   <p>Name of a mission profile.</p>
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    # @option params [Integer] :minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you'd like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    # @option params [Array<Array<String>>] :dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code> Config</code> and a <i>to</i> <code>Config</code>.</p>
    # @option params [String] :tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    # @option params [String] :telemetry_sink_config_arn
    #   <p>ARN of a telemetry sink <code>Config</code>.</p>
    # @option params [Types::KmsKey] :streams_kms_key
    #   <p>KMS key to use for encrypting streams.</p>
    # @option params [String] :streams_kms_role
    #   <p>Role to use for encrypting streams with KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mission_profile_id: "Uuid", # required
    #     name: "SafeName",
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     minimum_viable_contact_duration_seconds: 1,
    #     dataflow_edges: [
    #       ["ConfigArn"]
    #     ],
    #     tracking_config_arn: "ConfigArn",
    #     telemetry_sink_config_arn: "ConfigArn",
    #     streams_kms_key: {
    #       # One of:
    #       kms_key_arn: "KeyArn",
    #       kms_alias_arn: "KeyAliasArn",
    #       kms_alias_name: "KeyAliasName"
    #     },
    #     streams_kms_role: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_mission_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mission_profile_id: "Uuid"
    #   }
    # @return [Types::UpdateMissionProfileOutput]
    def update_mission_profile(params = {}, options = {})
      request = build_request(:update_mission_profile, params)
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
      context[:gem_name] = 'aws-sdk-groundstation'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        contact_scheduled: Waiters::ContactScheduled,
        contact_updated: Waiters::ContactUpdated
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
