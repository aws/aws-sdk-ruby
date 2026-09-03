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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:networkmonitor)

module Aws::NetworkMonitor
  # An API client for Aws::NetworkMonitor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::NetworkMonitor
    @identifier = :networkmonitor

    add_plugin(::Aws::NetworkMonitor::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NetworkMonitor::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Creates a monitor between a source subnet and destination IP address. Within a monitor you'll create one or more probes that monitor network traffic between your source Amazon Web Services VPC subnets and your destination IP addresses. Each probe then aggregates and sends metrics to Amazon CloudWatch.</p>
    #          <p>You can also create a monitor with probes using this command. For each probe, you
    #             define the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>source</code>—The subnet IDs where the probes will be created.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>destination</code>— The target destination IP address for the
    #                     probe.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>destinationPort</code>—Required only if the protocol is
    #                     <code>TCP</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>protocol</code>—The communication protocol between the source and
    #                     destination. This will be either <code>TCP</code> or <code>ICMP</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>packetSize</code>—The size of the packets. This must be a number between
    #                         <code>56</code> and <code>8500</code>.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) <code>tags</code> —Key-value pairs created and assigned to the
    #                     probe.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name identifying the monitor. It can contain only letters, underscores (_), or dashes (-), and can be up to 200 characters.</p>
    # @option params [Array<Types::CreateMonitorProbeInput>] :probes
    #   <p>Displays a list of all of the probes created for a monitor.</p>
    # @option params [Integer] :aggregation_period
    #   <p>The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid
    #               values are either <code>30</code> or <code>60</code>.  <code>60</code> is the default if
    #               no period is chosen.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs created and assigned to the monitor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     probes: [
    #       {
    #         source_arn: "Arn", # required
    #         destination: "Destination", # required
    #         destination_port: 1,
    #         protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #         packet_size: 1,
    #         probe_tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     aggregation_period: 1,
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     aggregation_period: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateMonitorOutput]
    def create_monitor(params = {}, options = {})
      request = build_request(:create_monitor, params)
      request.send_request(options)
    end

    # <p>Create a probe within a monitor. Once you create a probe, and it begins monitoring your
    #             network traffic, you'll incur billing charges for that probe. This action requires the
    #                 <code>monitorName</code> parameter. Run <code>ListMonitors</code> to get a list of
    #             monitor names. Note the name of the <code>monitorName</code> you want to create the
    #             probe for.</p>
    # @param [Hash, Types::CreateProbeInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to associated with the probe. </p>
    # @option params [Types::ProbeInput] :probe
    #   <p>Describes the details of an individual probe for a monitor.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs created and assigned to the probe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     probe: { # required
    #       source_arn: "Arn", # required
    #       destination: "Destination", # required
    #       destination_port: 1,
    #       protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #       packet_size: 1,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_probe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     probe_id: "ProbeId",
    #     probe_arn: "Arn",
    #     source_arn: "Arn", # required
    #     destination: "Destination", # required
    #     destination_port: 1,
    #     protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #     packet_size: 1,
    #     address_family: "IPV4" # One of: ["IPV4", "IPV6"],
    #     vpc_id: "VpcId",
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"],
    #     created_at: Time.now,
    #     modified_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateProbeOutput]
    def create_probe(params = {}, options = {})
      request = build_request(:create_probe, params)
      request.send_request(options)
    end

    # <p>Deletes a specified monitor.</p>
    #          <p>This action requires the <code>monitorName</code> parameter. Run
    #                 <code>ListMonitors</code> to get a list of monitor names. </p>
    # @param [Hash, Types::DeleteMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to delete.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMonitorOutput]
    def delete_monitor(params = {}, options = {})
      request = build_request(:delete_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes the specified probe. Once a probe is deleted you'll no longer incur any billing
    #             fees for that probe.</p>
    #          <p>This action requires both the <code>monitorName</code> and <code>probeId</code>
    #             parameters. Run <code>ListMonitors</code> to get a list of monitor names. Run
    #                 <code>GetMonitor</code> to get a list of probes and probe IDs. You can only delete a
    #             single probe at a time using this action. </p>
    # @param [Hash, Types::DeleteProbeInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to delete. </p>
    # @option params [String] :probe_id
    #   <p>The ID of the probe to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #   }
    #   options = {}
    #   response = client.delete_probe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProbeOutput]
    def delete_probe(params = {}, options = {})
      request = build_request(:delete_probe, params)
      request.send_request(options)
    end

    # <p>Returns details about a specific monitor. </p>
    #          <p>This action requires the <code>monitorName</code> parameter. Run
    #                 <code>ListMonitors</code> to get a list of monitor names. </p>
    # @param [Hash, Types::GetMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor that details are returned for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     aggregation_period: 1, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     probes: [
    #       {
    #         probe_id: "ProbeId",
    #         probe_arn: "Arn",
    #         source_arn: "Arn", # required
    #         destination: "Destination", # required
    #         destination_port: 1,
    #         protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #         packet_size: 1,
    #         address_family: "IPV4" # One of: ["IPV4", "IPV6"],
    #         vpc_id: "VpcId",
    #         state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"],
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #   }
    # @return [Types::GetMonitorOutput]
    def get_monitor(params = {}, options = {})
      request = build_request(:get_monitor, params)
      request.send_request(options)
    end

    # <p>Returns the details about a probe. This action requires both the
    #                 <code>monitorName</code> and <code>probeId</code> parameters. Run
    #                 <code>ListMonitors</code> to get a list of monitor names. Run
    #                 <code>GetMonitor</code> to get a list of probes and probe IDs. </p>
    # @param [Hash, Types::GetProbeInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor associated with the probe. Run <code>ListMonitors</code> to get a list of monitor names.</p>
    # @option params [String] :probe_id
    #   <p>The ID of the probe to get information about. Run <code>GetMonitor</code> action to get a list of probes and probe IDs for the  monitor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #   }
    #   options = {}
    #   response = client.get_probe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     probe_id: "ProbeId",
    #     probe_arn: "Arn",
    #     source_arn: "Arn", # required
    #     destination: "Destination", # required
    #     destination_port: 1,
    #     protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #     packet_size: 1,
    #     address_family: "IPV4" # One of: ["IPV4", "IPV6"],
    #     vpc_id: "VpcId",
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"],
    #     created_at: Time.now,
    #     modified_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetProbeOutput]
    def get_probe(params = {}, options = {})
      request = build_request(:get_probe, params)
      request.send_request(options)
    end

    # <p>Returns a list of all of your monitors.</p>
    # @param [Hash, Types::ListMonitorsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :state
    #   <p>The list of all monitors and their states.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     state: "String"
    #   }
    #   options = {}
    #   response = client.list_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitors: [ # required
    #       {
    #         monitor_arn: "MonitorArn", # required
    #         monitor_name: "ResourceName", # required
    #         state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #         aggregation_period: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMonitorsOutput]
    def list_monitors(params = {}, options = {})
      request = build_request(:list_monitors, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to this resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The </p>
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

    # <p>Adds key-value pairs to a monitor or probe.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the monitor or probe to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs assigned to the monitor or probe.</p>
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

    # <p>Removes a key-value pair from a monitor or probe.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the monitor or probe that the tag should be removed from. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key-value pa</p>
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

    # <p>Updates the <code>aggregationPeriod</code> for a monitor. Monitors support an
    #                 <code>aggregationPeriod</code> of either <code>30</code> or <code>60</code> seconds.
    #             This action requires  the <code>monitorName</code> and <code>probeId</code> parameter.
    #             Run <code>ListMonitors</code> to get a list of monitor names.  </p>
    # @param [Hash, Types::UpdateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to update. </p>
    # @option params [Integer] :aggregation_period
    #   <p>The aggregation time, in seconds, to change to. This must be either <code>30</code> or <code>60</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     aggregation_period: 1, # required
    #   }
    #   options = {}
    #   response = client.update_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     aggregation_period: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateMonitorOutput]
    def update_monitor(params = {}, options = {})
      request = build_request(:update_monitor, params)
      request.send_request(options)
    end

    # <p>Updates a monitor probe. This action requires both the <code>monitorName</code> and <code>probeId</code> parameters. Run <code>ListMonitors</code> to get a list of monitor names. Run <code>GetMonitor</code> to get a list of probes and probe IDs. </p>
    #          <p>You can update the following para create a monitor with probes using this command. For
    #             each probe, you define the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>state</code>—The state of the probe.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>destination</code>— The target destination IP address for the
    #                     probe.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>destinationPort</code>—Required only if the protocol is
    #                     <code>TCP</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>protocol</code>—The communication protocol between the source and
    #                     destination. This will be either <code>TCP</code> or <code>ICMP</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>packetSize</code>—The size of the packets. This must be a number between
    #                         <code>56</code> and <code>8500</code>.</p>
    #             </li>
    #             <li>
    #                <p>(Optional) <code>tags</code> —Key-value pairs created and assigned to the
    #                     probe.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateProbeInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor that the probe was updated for.</p>
    # @option params [String] :probe_id
    #   <p>The ID of the probe to update.</p>
    # @option params [String] :state
    #   <p>The state of the probe update.</p>
    # @option params [String] :destination
    #   <p>The updated IP address for the probe destination. This must be either an IPv4 or IPv6 address.</p>
    # @option params [Integer] :destination_port
    #   <p>The updated port for the probe destination. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    # @option params [String] :protocol
    #   <p>The updated network protocol for the destination. This can be either <code>TCP</code> or <code>ICMP</code>. If the protocol is <code>TCP</code>, then <code>port</code> is also required.</p>
    # @option params [Integer] :packet_size
    #   <p>he updated packets size for network traffic between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"],
    #     destination: "Destination",
    #     destination_port: 1,
    #     protocol: "TCP" # One of: ["TCP", "ICMP"],
    #     packet_size: 1
    #   }
    #   options = {}
    #   response = client.update_probe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     probe_id: "ProbeId",
    #     probe_arn: "Arn",
    #     source_arn: "Arn", # required
    #     destination: "Destination", # required
    #     destination_port: 1,
    #     protocol: "TCP" # One of: ["TCP", "ICMP"], # required
    #     packet_size: 1,
    #     address_family: "IPV4" # One of: ["IPV4", "IPV6"],
    #     vpc_id: "VpcId",
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"],
    #     created_at: Time.now,
    #     modified_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateProbeOutput]
    def update_probe(params = {}, options = {})
      request = build_request(:update_probe, params)
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
      context[:gem_name] = 'aws-sdk-networkmonitor'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
