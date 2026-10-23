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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:internetmonitor)

module Aws::InternetMonitor
  # An API client for Aws::InternetMonitor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::InternetMonitor20210603
    @identifier = :internetmonitor

    add_plugin(::Aws::InternetMonitor::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::InternetMonitor::EndpointProvider)
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

    # <p>Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is built based on information from the application resources that you add: VPCs,
    # 			Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon WorkSpaces directories. Internet Monitor then publishes internet measurements from Amazon Web Services 
    # 			that are specific to the <i>city-networks</i>. That is, the locations and ASNs (typically internet service providers or ISPs),
    # 			where clients access your application. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html">Using Amazon CloudWatch Internet Monitor</a> in the <i>Amazon CloudWatch User 
    # 					Guide</i>.</p>
    #          <p>When you create a monitor, you choose the percentage of traffic that you want to monitor. You can also set a maximum limit for the 
    # 			number of city-networks where client traffic is monitored, that caps the total traffic that Internet Monitor monitors. A city-network 
    # 			maximum is the limit of city-networks, but you only pay for the number of city-networks that are actually monitored. You can update your monitor
    # 			at any time to change the percentage of traffic to monitor or the city-networks maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html">Choosing a city-network maximum value</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    # @param [Hash, Types::CreateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor. </p>
    # @option params [Array<String>] :resources
    #   <p>The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs). Resources can be VPCs, NLBs,
    #   			Amazon CloudFront distributions, or Amazon WorkSpaces directories.</p>
    #            <p>You can add a combination of VPCs and CloudFront distributions, or you can add WorkSpaces directories, or you can add NLBs. You can't add 
    #   			NLBs or WorkSpaces directories together with any other resources.</p>
    #            <note>
    #               <p>If you add only Amazon VPC resources, at least one VPC must have an Internet Gateway attached to it, to make sure that it has 
    #   			internet connectivity.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for
    #   			other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for a monitor. You can add a maximum of 50 tags in Internet Monitor.</p>
    # @option params [Integer] :max_city_networks_to_monitor
    #   <p>The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your 
    #   			application resources from and the ASN or network provider, such as an internet service provider (ISP), that clients access the resources 
    #   			through. Setting this limit can help control billing costs.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html">Choosing a city-network maximum value
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @option params [Types::InternetMeasurementsLogDelivery] :internet_measurements_log_delivery
    #   <p>Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.</p>
    # @option params [Integer] :traffic_percentage_to_monitor
    #   <p>The percentage of the internet-facing traffic for your application that you want to monitor with this monitor. If you set a city-networks
    #   			maximum, that limit overrides the traffic percentage that you set.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html">Choosing an application traffic percentage to monitor
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   <p>Defines the threshold percentages and other configuration information for when Amazon CloudWatch Internet Monitor creates a health event. Internet Monitor creates a
    #   			health event when an internet issue that affects your application end users has a health score percentage that is at or below a 
    #   			specific threshold, and, sometimes, when other criteria are met.</p>
    #            <p>If you don't set a health event threshold, the default value is 95%.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    #   			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     resources: ["Arn"],
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     max_city_networks_to_monitor: 1,
    #     internet_measurements_log_delivery: {
    #       s3_config: {
    #         bucket_name: "String",
    #         bucket_prefix: "String",
    #         log_delivery_status: "LogDeliveryStatus"
    #       }
    #     },
    #     traffic_percentage_to_monitor: 1,
    #     health_events_config: {
    #       availability_score_threshold: 1.0,
    #       performance_score_threshold: 1.0,
    #       availability_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       },
    #       performance_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "MonitorArn", # required
    #     status: "MonitorConfigState", # required
    #   }
    # @return [Types::CreateMonitorOutput]
    def create_monitor(params = {}, options = {})
      request = build_request(:create_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes a monitor in Amazon CloudWatch Internet Monitor. </p>
    # @param [Hash, Types::DeleteMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to delete.</p>
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

    # <p>Gets information that Amazon CloudWatch Internet Monitor has created and stored about a health event for a specified monitor. This information includes the impacted locations,
    # 			and all the information related to the event, by location.</p>
    #          <p>The information returned includes the impact on performance, availability, and round-trip time, information about the network providers (ASNs),
    # 			the event type, and so on.</p>
    #          <p>Information rolled up at the global traffic level is also returned, including the impact type and total traffic impact.</p>
    # @param [Hash, Types::GetHealthEventOperationInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :event_id
    #   <p>The internally-generated identifier of a health event. Because <code>EventID</code> contains the forward slash (“/”) character, you must 
    #   			URL-encode the <code>EventID</code> field in the request URL.</p>
    # @option params [String] :linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   			observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     event_id: "HealthEventName", # required
    #     linked_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_health_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_arn: "Arn", # required
    #     event_id: "HealthEventName", # required
    #     started_at: Time.now, # required
    #     ended_at: Time.now,
    #     created_at: Time.now,
    #     last_updated_at: Time.now, # required
    #     impacted_locations: [ # required
    #       {
    #         as_name: "String", # required
    #         as_number: 1, # required
    #         country: "String", # required
    #         subdivision: "String",
    #         metro: "String",
    #         city: "String",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         country_code: "String",
    #         subdivision_code: "String",
    #         service_location: "String",
    #         status: "HealthEventStatus", # required
    #         caused_by: {
    #           networks: [ # required
    #             {
    #               as_name: "String", # required
    #               as_number: 1, # required
    #             }
    #           ],
    #           as_path: [ # required
    #             {
    #               as_name: "String", # required
    #               as_number: 1, # required
    #             }
    #           ],
    #           network_event_type: "TriangulationEventType", # required
    #         },
    #         internet_health: {
    #           availability: {
    #             experience_score: 1.0,
    #             percent_of_total_traffic_impacted: 1.0,
    #             percent_of_client_location_impacted: 1.0
    #           },
    #           performance: {
    #             experience_score: 1.0,
    #             percent_of_total_traffic_impacted: 1.0,
    #             percent_of_client_location_impacted: 1.0,
    #             round_trip_time: {
    #               p50: 1.0,
    #               p90: 1.0,
    #               p95: 1.0
    #             }
    #           }
    #         },
    #         ipv4_prefixes: ["String"]
    #       }
    #     ],
    #     status: "HealthEventStatus", # required
    #     percent_of_total_traffic_impacted: 1.0,
    #     impact_type: "HealthEventImpactType", # required
    #     health_score_threshold: 1.0
    #   }
    # @return [Types::GetHealthEventOperationOutput]
    def get_health_event(params = {}, options = {})
      request = build_request(:get_health_event, params)
      request.send_request(options)
    end

    # <p>Gets information that Amazon CloudWatch Internet Monitor has generated about an internet event. Internet Monitor displays information about 
    # 			recent global health events, called internet events, on a global outages map that is available to all Amazon Web Services
    # 			customers. </p>
    #          <p>The information returned here includes the impacted location,
    # 			when the event started and (if the event is over) ended, the type of event (<code>PERFORMANCE</code> or <code>AVAILABILITY</code>),
    # 			and the status (<code>ACTIVE</code> or <code>RESOLVED</code>).</p>
    # @param [Hash, Types::GetInternetEventInput] params
    # @option params [String] :event_id
    #   <p>The <code>EventId</code> of the internet event to return information for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "InternetEventId", # required
    #   }
    #   options = {}
    #   response = client.get_internet_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "InternetEventId", # required
    #     event_arn: "Arn", # required
    #     started_at: Time.now, # required
    #     ended_at: Time.now,
    #     client_location: { # required
    #       as_name: "String", # required
    #       as_number: 1, # required
    #       country: "String", # required
    #       subdivision: "String",
    #       metro: "String",
    #       city: "String", # required
    #       latitude: 1.0, # required
    #       longitude: 1.0, # required
    #     },
    #     event_type: "InternetEventType", # required
    #     event_status: "InternetEventStatus", # required
    #   }
    # @return [Types::GetInternetEventOutput]
    def get_internet_event(params = {}, options = {})
      request = build_request(:get_internet_event, params)
      request.send_request(options)
    end

    # <p>Gets information about a monitor in Amazon CloudWatch Internet Monitor based on a monitor name. The information returned includes the Amazon Resource Name (ARN), create time,
    # 			modified time, resources included in the monitor, and status information.</p>
    # @param [Hash, Types::GetMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     linked_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_name: "ResourceName", # required
    #     monitor_arn: "MonitorArn", # required
    #     resources: ["Arn"], # required
    #     status: "MonitorConfigState", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     processing_status: "MonitorProcessingStatusCode",
    #     processing_status_info: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     max_city_networks_to_monitor: 1,
    #     internet_measurements_log_delivery: {
    #       s3_config: {
    #         bucket_name: "String",
    #         bucket_prefix: "String",
    #         log_delivery_status: "LogDeliveryStatus"
    #       }
    #     },
    #     traffic_percentage_to_monitor: 1,
    #     health_events_config: {
    #       availability_score_threshold: 1.0,
    #       performance_score_threshold: 1.0,
    #       availability_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       },
    #       performance_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       }
    #     }
    #   }
    # @return [Types::GetMonitorOutput]
    def get_monitor(params = {}, options = {})
      request = build_request(:get_monitor, params)
      request.send_request(options)
    end

    # <p>Return the data for a query with the Amazon CloudWatch Internet Monitor query interface. Specify the query that you want to return results for by providing 
    # 			a <code>QueryId</code> and a monitor name.</p>
    #          <p>For more information about using the query interface, including examples, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">Using the Amazon CloudWatch Internet Monitor query interface</a>
    # 			in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @param [Hash, Types::GetQueryResultsInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to return data for.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query that you want to return data results for. A <code>QueryId</code> is an 
    #   			internally-generated identifier for a specific query.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_query_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fields: [ # required
    #       {
    #         name: "String",
    #         type: "String"
    #       }
    #     ],
    #     data: [ # required
    #       ["String"]
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetQueryResultsOutput]
    def get_query_results(params = {}, options = {})
      request = build_request(:get_query_results, params)
      request.send_request(options)
    end

    # <p>Returns the current status of a query for the Amazon CloudWatch Internet Monitor query interface, for a specified query ID and monitor. 
    # 			When you run a query, check the status to make sure that the query has <code>SUCCEEDED</code> before you review the results.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>QUEUED</code>: The query is scheduled to run.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RUNNING</code>: The query is in progress but not complete.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SUCCEEDED</code>: The query completed sucessfully.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED</code>: The query failed due to an error.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CANCELED</code>: The query was canceled.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetQueryStatusInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query that you want to return the status for. A <code>QueryId</code> is an internally-generated 
    #   			dentifier for a specific query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_query_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QueryStatus", # required
    #   }
    # @return [Types::GetQueryStatusOutput]
    def get_query_status(params = {}, options = {})
      request = build_request(:get_query_status, params)
      request.send_request(options)
    end

    # <p>Lists all health events for a monitor in Amazon CloudWatch Internet Monitor. Returns information for health events including the event start and end times, and 
    # 			the status.</p>
    #          <note>
    #             <p>Health events that have start times during the time frame that is requested are not included in the list of health events.</p>
    #          </note>
    # @param [Hash, Types::ListHealthEventsOperationInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [Time] :start_time
    #   <p>The time when a health event started.</p>
    # @option params [Time] :end_time
    #   <p>The time when a health event ended. If the health event is still ongoing, then the end time is not set.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of health event objects that you want to return with this call. </p>
    # @option params [String] :event_status
    #   <p>The status of a health event.</p>
    # @option params [String] :linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #     max_results: 1,
    #     event_status: "HealthEventStatus",
    #     linked_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_health_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_events: [ # required
    #       {
    #         event_arn: "Arn", # required
    #         event_id: "HealthEventName", # required
    #         started_at: Time.now, # required
    #         ended_at: Time.now,
    #         created_at: Time.now,
    #         last_updated_at: Time.now, # required
    #         impacted_locations: [ # required
    #           {
    #             as_name: "String", # required
    #             as_number: 1, # required
    #             country: "String", # required
    #             subdivision: "String",
    #             metro: "String",
    #             city: "String",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             country_code: "String",
    #             subdivision_code: "String",
    #             service_location: "String",
    #             status: "HealthEventStatus", # required
    #             caused_by: {
    #               networks: [ # required
    #                 {
    #                   as_name: "String", # required
    #                   as_number: 1, # required
    #                 }
    #               ],
    #               as_path: [ # required
    #                 {
    #                   as_name: "String", # required
    #                   as_number: 1, # required
    #                 }
    #               ],
    #               network_event_type: "TriangulationEventType", # required
    #             },
    #             internet_health: {
    #               availability: {
    #                 experience_score: 1.0,
    #                 percent_of_total_traffic_impacted: 1.0,
    #                 percent_of_client_location_impacted: 1.0
    #               },
    #               performance: {
    #                 experience_score: 1.0,
    #                 percent_of_total_traffic_impacted: 1.0,
    #                 percent_of_client_location_impacted: 1.0,
    #                 round_trip_time: {
    #                   p50: 1.0,
    #                   p90: 1.0,
    #                   p95: 1.0
    #                 }
    #               }
    #             },
    #             ipv4_prefixes: ["String"]
    #           }
    #         ],
    #         status: "HealthEventStatus", # required
    #         percent_of_total_traffic_impacted: 1.0,
    #         impact_type: "HealthEventImpactType", # required
    #         health_score_threshold: 1.0
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListHealthEventsOperationOutput]
    def list_health_events(params = {}, options = {})
      request = build_request(:list_health_events, params)
      request.send_request(options)
    end

    # <p>Lists internet events that cause performance or availability issues for client locations. Amazon CloudWatch Internet Monitor displays information about 
    # 			recent global health events, called internet events, on a global outages map that is available to all Amazon Web Services
    # 			customers. </p>
    #          <p>You can constrain the list of internet events returned by providing a start time and end time to define a total 
    # 			time frame for events you want to list. Both start time and end time specify the time when an event started. End time
    # 			is optional. If you don't include it, the default end time is the current time.</p>
    #          <p>You can also limit the events returned to a specific status
    # 			(<code>ACTIVE</code> or <code>RESOLVED</code>) or type (<code>PERFORMANCE</code> or <code>AVAILABILITY</code>).</p>
    # @param [Hash, Types::ListInternetEventsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the time window that you want to get a list of internet events for.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the time window that you want to get a list of internet events for.</p>
    # @option params [String] :event_status
    #   <p>The status of an internet event.</p>
    # @option params [String] :event_type
    #   <p>The type of network impairment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_status: "String",
    #     event_type: "String"
    #   }
    #   options = {}
    #   response = client.list_internet_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     internet_events: [ # required
    #       {
    #         event_id: "InternetEventId", # required
    #         event_arn: "Arn", # required
    #         started_at: Time.now, # required
    #         ended_at: Time.now,
    #         client_location: { # required
    #           as_name: "String", # required
    #           as_number: 1, # required
    #           country: "String", # required
    #           subdivision: "String",
    #           metro: "String",
    #           city: "String", # required
    #           latitude: 1.0, # required
    #           longitude: 1.0, # required
    #         },
    #         event_type: "InternetEventType", # required
    #         event_status: "InternetEventStatus", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListInternetEventsOutput]
    def list_internet_events(params = {}, options = {})
      request = build_request(:list_internet_events, params)
      request.send_request(options)
    end

    # <p>Lists all of your monitors for Amazon CloudWatch Internet Monitor and their statuses, along with the Amazon Resource Name (ARN) and name of each monitor.</p>
    # @param [Hash, Types::ListMonitorsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of monitor objects that you want to return with this call.</p>
    # @option params [String] :monitor_status
    #   <p>The status of a monitor. This includes the status of the data processing for the monitor and the status of the monitor itself.</p>
    #            <p>For information about the statuses for a monitor, see <a href="https://docs.aws.amazon.com/internet-monitor/latest/api/API_Monitor.html">
    #   				Monitor</a>.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>A boolean option that you can set to <code>TRUE</code> to include monitors for linked accounts in a list of
    #   			monitors, when you've set up cross-account sharing in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     monitor_status: "String",
    #     include_linked_accounts: false
    #   }
    #   options = {}
    #   response = client.list_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitors: [ # required
    #       {
    #         monitor_name: "ResourceName", # required
    #         monitor_arn: "MonitorArn", # required
    #         status: "MonitorConfigState", # required
    #         processing_status: "MonitorProcessingStatusCode"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMonitorsOutput]
    def list_monitors(params = {}, options = {})
      request = build_request(:list_monitors, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "MonitorArn", # required
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
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Start a query to return data for a specific query type for the Amazon CloudWatch Internet Monitor query interface. Specify a time period
    # 			for the data that you want returned by using <code>StartTime</code> and <code>EndTime</code>. You filter the query 
    # 			results to return by providing parameters that you specify with <code>FilterParameters</code>.</p>
    #          <p>For more information about using the query interface, including examples, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">Using the Amazon CloudWatch Internet Monitor query interface</a>
    # 		in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @param [Hash, Types::StartQueryInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to query.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp that is the beginning of the period that you want to retrieve data for with your query.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp that is the end of the period that you want to retrieve data for with your query.</p>
    # @option params [String] :query_type
    #   <p>The type of query to run. The following are the three types of queries that you can run using the Internet Monitor query interface:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MEASUREMENTS</code>: Provides availability score, performance score, total traffic, 
    #   				and round-trip times, at 5 minute intervals.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LOCATIONS</code>: Provides availability score, performance score, total traffic, 
    #   				and time to first byte (TTFB) information, for the top location and ASN combinations that you're monitoring, by traffic volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LOCATION_DETAILS</code>: Provides TTFB for Amazon CloudFront, your 
    #   				current configuration, and the best performing EC2 configuration, at 1 hour intervals.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERALL_TRAFFIC_SUGGESTIONS</code>: Provides TTFB, using a 30-day weighted average, for all traffic in 
    #   				each Amazon Web Services location that is monitored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERALL_TRAFFIC_SUGGESTIONS_DETAILS</code>: Provides TTFB, using a 30-day weighted average, for each top 
    #   				location, for a proposed Amazon Web Services location. Must provide an Amazon Web Services location to search.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROUTING_SUGGESTIONS</code>: Provides the predicted average round-trip time (RTT) from an IP prefix toward 
    #   				an Amazon Web Services location for a DNS resolver. The RTT is calculated at one hour intervals, over a one hour period.</p>
    #               </li>
    #            </ul>
    #            <p>For lists of the fields returned with each query type and more information about how each type of query is
    #   			performed, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">
    #   				Using the Amazon CloudWatch Internet Monitor query interface</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @option params [Array<Types::FilterParameter>] :filter_parameters
    #   <p>The <code>FilterParameters</code> field that you use with Amazon CloudWatch Internet Monitor queries is a string the defines 
    #   			how you want a query to be filtered. The filter parameters that you can specify depend on the query type, since 
    #   			each query type returns a different set of Internet Monitor data.</p>
    #            <p>For more information about specifying filter parameters, see
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html">Using the Amazon CloudWatch Internet Monitor query interface</a>
    #   			in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @option params [String] :linked_account_id
    #   <p>The account ID for an account that you've set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You configure cross-account
    #   			sharing by using Amazon CloudWatch Observability Access Manager. For more information, see 
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html">Internet Monitor cross-account
    #   				observability</a> in the Amazon CloudWatch Internet Monitor User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     query_type: "QueryType", # required
    #     filter_parameters: [
    #       {
    #         field: "String",
    #         operator: "Operator",
    #         values: ["String"]
    #       }
    #     ],
    #     linked_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.start_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String", # required
    #   }
    # @return [Types::StartQueryOutput]
    def start_query(params = {}, options = {})
      request = build_request(:start_query, params)
      request.send_request(options)
    end

    # <p>Stop a query that is progress for a specific monitor.</p>
    # @param [Hash, Types::StopQueryInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query that you want to stop. A <code>QueryId</code> is an internally-generated identifier for a specific query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopQueryOutput]
    def stop_query(params = {}, options = {})
      request = build_request(:stop_query, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor. You can add a maximum of 50 tags in Internet Monitor.</p>
    #          <p>A minimum of one tag is required for this call. It returns an error if you use the <code>TagResource</code> request with 0 tags.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a tag that you add to a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that you add to a resource. You can add a maximum of 50 tags in Internet Monitor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "MonitorArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a tag you remove a resource from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys that you remove from a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "MonitorArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a monitor. You can update a monitor to change the percentage of traffic to monitor or the maximum number of city-networks 
    # 			(locations and ASNs), to add or remove resources, or to change the status of the monitor. Note that you can't change the name of a monitor.</p>
    #          <p>The city-network maximum that you choose is the limit, but you only pay for the number of city-networks that are actually monitored. 
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html">Choosing a city-network maximum value</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    # @param [Hash, Types::UpdateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor. </p>
    # @option params [Array<String>] :resources_to_add
    #   <p>The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs). Resources can be VPCs, NLBs,
    #   			Amazon CloudFront distributions, or Amazon WorkSpaces directories.</p>
    #            <p>You can add a combination of VPCs and CloudFront distributions, or you can add WorkSpaces directories, or you can add NLBs. You can't add 
    #   			NLBs or WorkSpaces directories together with any other resources.</p>
    #            <note>
    #               <p>If you add only Amazon Virtual Private Clouds resources, at least one VPC must have an Internet Gateway attached to it, to make sure that it has internet
    #   			connectivity.</p>
    #            </note>
    # @option params [Array<String>] :resources_to_remove
    #   <p>The resources to remove from a monitor, which you provide as a set of Amazon Resource Names (ARNs).</p>
    # @option params [String] :status
    #   <p>The status for a monitor. The accepted values for <code>Status</code> with the <code>UpdateMonitor</code> API call are the following: <code>ACTIVE</code> and
    #   			<code>INACTIVE</code>. The following values are <i>not</i> accepted: <code>PENDING</code>, and <code>ERROR</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. You should not reuse the same client
    #   			token for other API requests.</p>
    # @option params [Integer] :max_city_networks_to_monitor
    #   <p>The maximum number of city-networks to monitor for your application. A city-network is the location (city) where clients access your 
    #   			application resources from and the ASN or network provider, such as an internet service provider (ISP), that clients access the resources 
    #   			through. Setting this limit can help control billing costs.</p>
    # @option params [Types::InternetMeasurementsLogDelivery] :internet_measurements_log_delivery
    #   <p>Publish internet measurements for Internet Monitor to another location, such as an Amazon S3 bucket. The measurements are also published to Amazon CloudWatch Logs.</p>
    # @option params [Integer] :traffic_percentage_to_monitor
    #   <p>The percentage of the internet-facing traffic for your application that you want to monitor with this monitor. If you set a city-networks
    #   			maximum, that limit overrides the traffic percentage that you set.</p>
    #            <p>To learn more, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html">Choosing an application traffic percentage to monitor
    #   		</a> in the Amazon CloudWatch Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   <p>The list of health score thresholds. A threshold percentage for health scores, along with other configuration information,
    #   			determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview">
    #   			Change health event thresholds</a> in the Internet Monitor section of the <i>CloudWatch User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     resources_to_add: ["Arn"],
    #     resources_to_remove: ["Arn"],
    #     status: "MonitorConfigState",
    #     client_token: "String",
    #     max_city_networks_to_monitor: 1,
    #     internet_measurements_log_delivery: {
    #       s3_config: {
    #         bucket_name: "String",
    #         bucket_prefix: "String",
    #         log_delivery_status: "LogDeliveryStatus"
    #       }
    #     },
    #     traffic_percentage_to_monitor: 1,
    #     health_events_config: {
    #       availability_score_threshold: 1.0,
    #       performance_score_threshold: 1.0,
    #       availability_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       },
    #       performance_local_health_events_config: {
    #         status: "LocalHealthEventsConfigStatus",
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     status: "MonitorConfigState", # required
    #   }
    # @return [Types::UpdateMonitorOutput]
    def update_monitor(params = {}, options = {})
      request = build_request(:update_monitor, params)
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
      context[:gem_name] = 'aws-sdk-internetmonitor'
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
