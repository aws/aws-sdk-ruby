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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mediapackagev2)

module Aws::MediaPackageV2
  # An API client for Aws::MediaPackageV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Mediapackagev2
    @identifier = :mediapackagev2

    add_plugin(::Aws::MediaPackageV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaPackageV2::EndpointProvider)
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

    # <p>Cancels an in-progress harvest job.</p>
    # @param [Hash, Types::CancelHarvestJobRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group containing the channel from which the harvest job is running.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel from which the harvest job is running.</p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name of the origin endpoint that the harvest job is harvesting from. This cannot be changed after the harvest job is submitted.</p>
    # @option params [String] :harvest_job_name
    #   <p>The name of the harvest job to cancel. This name must be unique within the channel and cannot be changed after the harvest job is submitted.</p>
    # @option params [String] :e_tag
    #   <p>The current Entity Tag (ETag) associated with the harvest job. Used for concurrency control.</p>
    # @example Cancel a Harvest Job
    #   # Example operation for cancel_harvest_job
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     harvest_job_name: "HarvestJobName"
    #   }
    #   options = {}
    #   response = client.cancel_harvest_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     harvest_job_name: "ResourceName", # required
    #     e_tag: "EntityTag"
    #   }
    #   options = {}
    #   response = client.cancel_harvest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelHarvestJobResponse]
    def cancel_harvest_job(params = {}, options = {})
      request = build_request(:cancel_harvest_job, params)
      request.send_request(options)
    end

    # <p>Create a channel to start receiving content streams. The channel represents the input to MediaPackage for incoming live content from an encoder such as AWS Elemental MediaLive. The channel receives content, and after packaging it, outputs it through an origin endpoint to downstream devices (such as video players or CDNs) that request the content. You can create only one channel with each request. We recommend that you spread out channels between channel groups, such as putting redundant channels in the same AWS Region in different channel groups.</p>
    # @param [Hash, Types::CreateChannelRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. You can't change the name after you create the channel.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :input_type
    #   <p>The input type is an immutable field. It defines whether the channel allows CMAF ingest, HLS ingest, or server-side multiview output. Multiview channels receive no ingest of their own. If unprovided, the value defaults to HLS.</p> <p>The allowed values are:</p> <ul> <li> <p> <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p> </li> <li> <p> <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p> </li> <li> <p> <code>MULTIVIEW</code> – Server-side multiview. The channel receives no ingest of its own. Instead, it composites video from the source channels in its <code>MultiviewConfiguration</code> into a single tiled output stream.</p> </li> </ul>
    # @option params [String] :description
    #   <p>Enter any descriptive text that helps you to identify the channel.</p>
    # @option params [Types::InputSwitchConfiguration] :input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    # @option params [Types::OutputHeaderConfiguration] :output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    # @option params [Types::MultiviewConfiguration] :multiview_configuration
    #   <p>The multiview configuration for the channel. This setting is required when <code>InputType</code> is <code>MULTIVIEW</code>, and can't be set for any other input type.</p>
    # @option params [String] :output_locking_mode
    #   <p>The output locking mode for the channel. This setting is only valid when <code>InputType</code> is <code>CMAF</code>. This value is immutable after channel creation. If you don't specify a value, the default is <code>EPOCH_LOCKED</code>.</p> <p>The allowed values are:</p> <ul> <li> <p> <code>EPOCH_LOCKED</code> - The channel uses epoch-locked behavior with deterministic sequence numbering and fixed segment boundaries aligned to epoch time. This mode supports cross-region synchronization and failover.</p> </li> <li> <p> <code>NON_EPOCH_LOCKED</code> - The channel uses non-epoch-locked behavior with duration-based segment combining and monotonically increasing sequence numbers starting from 0. This mode does not support cross-region synchronization or failover.</p> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p> <p> <code>"Key1": "Value1",</code> </p> <p> <code>"Key2": "Value2"</code> </p>
    # @example Creating a Channel
    #   # Example operation for create_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     input_type: HLS,
    #     description: "Description for exampleChannel",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     description: "Description for exampleChannel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     input_type: HLS,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Creating a CMAF Channel with non-epoch-locked output locking mode
    #   # Example operation for create_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel",
    #     input_type: CMAF,
    #     output_locking_mode: NON_EPOCH_LOCKED,
    #     description: "Non-epoch-locked CMAF channel"
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel",
    #     description: "Non-epoch-locked CMAF channel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleCmafChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     input_type: CMAF,
    #     output_locking_mode: NON_EPOCH_LOCKED,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     input_type: "HLS" # One of: ["HLS", "CMAF", "MULTIVIEW"],
    #     description: "ResourceDescription",
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false
    #     },
    #     multiview_configuration: {
    #       available_sources: ["ResourceName"], # required
    #       available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #     },
    #     output_locking_mode: "EPOCH_LOCKED" # One of: ["EPOCH_LOCKED", "NON_EPOCH_LOCKED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multiview_configuration: {
    #       available_sources: ["ResourceName"], # required
    #       available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #     },
    #     attached_multiview_channels: ["ResourceName"],
    #     arn: "String", # required
    #     channel_name: "String", # required
    #     channel_group_name: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     ingest_endpoints: [
    #       {
    #         id: "String",
    #         url: "String"
    #       }
    #     ],
    #     input_type: "HLS" # One of: ["HLS", "CMAF", "MULTIVIEW"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false
    #     },
    #     output_locking_mode: "EPOCH_LOCKED" # One of: ["EPOCH_LOCKED", "NON_EPOCH_LOCKED"]
    #   }
    # @return [Types::CreateChannelResponse]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>Create a channel group to group your channels and origin endpoints. A channel group is the top-level resource that consists of channels and origin endpoints that are associated with it and that provides predictable URLs for stream delivery. All channels and origin endpoints within the channel group are guaranteed to share the DNS. You can create only one channel group with each request. </p>
    # @param [Hash, Types::CreateChannelGroupRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region. You can't use spaces in the name. You can't change the name after you create the channel group.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>Enter any descriptive text that helps you to identify the channel group.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p> <p> <code>"Key1": "Value1",</code> </p> <p> <code>"Key2": "Value2"</code> </p>
    # @example Creating a Channel Group
    #   # Example operation for create_channel_group
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     description: "Description for exampleChannelGroup",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel_group(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     description: "Description for exampleChannelGroup",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup",
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "String", # required
    #     arn: "String", # required
    #     egress_domain: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     e_tag: "EntityTag",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateChannelGroupResponse]
    def create_channel_group(params = {}, options = {})
      request = build_request(:create_channel_group, params)
      request.send_request(options)
    end

    # <p>Creates a new harvest job to export content from a MediaPackage v2 channel to an S3 bucket.</p>
    # @param [Hash, Types::CreateHarvestJobRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group containing the channel from which to harvest content.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel from which to harvest content.</p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name of the origin endpoint from which to harvest content.</p>
    # @option params [String] :description
    #   <p>An optional description for the harvest job.</p>
    # @option params [Types::HarvestedManifests] :harvested_manifests
    #   <p>A list of manifests to be harvested.</p>
    # @option params [Types::HarvesterScheduleConfiguration] :schedule_configuration
    #   <p>The configuration for when the harvest job should run, including start and end times.</p>
    # @option params [Types::Destination] :destination
    #   <p>The S3 destination where the harvested content will be placed.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :harvest_job_name
    #   <p>A name for the harvest job. This name must be unique within the channel.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with the harvest job.</p>
    # @example Creating a Harvest Job
    #   # Example operation for create_harvest_job
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     description: "Example HarvestJob description",
    #     harvested_manifests: {
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest"
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest"
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest"
    #         }
    #       ]
    #     },
    #     schedule_configuration: {
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #     },
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket",
    #         destination_path: "manifests"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_harvest_job(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket",
    #         destination_path: "manifests"
    #       }
    #     },
    #     harvest_job_name: "HarvestJobName",
    #     harvested_manifests: {
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest"
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest"
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest"
    #         }
    #       ]
    #     },
    #     description: "Example HarvestJob description",
    #     schedule_configuration: {
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #     },
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #     created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #     modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #     status: QUEUED,
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     harvested_manifests: { # required
    #       hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ]
    #     },
    #     schedule_configuration: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     destination: { # required
    #       s3_destination: { # required
    #         bucket_name: "S3BucketName", # required
    #         destination_path: "S3DestinationPath", # required
    #       }
    #     },
    #     client_token: "IdempotencyToken",
    #     harvest_job_name: "ResourceName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_harvest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     destination: { # required
    #       s3_destination: { # required
    #         bucket_name: "S3BucketName", # required
    #         destination_path: "S3DestinationPath", # required
    #       }
    #     },
    #     harvest_job_name: "ResourceName", # required
    #     harvested_manifests: { # required
    #       hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ]
    #     },
    #     description: "ResourceDescription",
    #     schedule_configuration: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     arn: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"], # required
    #     error_message: "String",
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateHarvestJobResponse]
    def create_harvest_job(params = {}, options = {})
      request = build_request(:create_harvest_job, params)
      request.send_request(options)
    end

    # <p>The endpoint is attached to a channel, and represents the output of the live content. You can associate multiple endpoints to a single channel. Each endpoint gives players and downstream CDNs (such as Amazon CloudFront) access to the content for playback. Content can't be served from a channel until it has an endpoint. You can create only one endpoint with each request. </p>
    # @param [Hash, Types::CreateOriginEndpointRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and must be unique for your account in the AWS Region and channel. You can't use spaces in the name. You can't change the name after you create the endpoint.</p>
    # @option params [String] :container_type
    #   <p>The type of container to attach to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. You can't change the container type after you create the endpoint.</p>
    # @option params [Types::Segment] :segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>Enter any descriptive text that helps you to identify the origin endpoint.</p>
    # @option params [Integer] :startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days).</p>
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    # @option params [Array<Types::CreateDashManifestConfiguration>] :dash_manifests
    #   <p>A DASH manifest configuration.</p>
    # @option params [Array<Types::CreateMssManifestConfiguration>] :mss_manifests
    #   <p>A list of Microsoft Smooth Streaming (MSS) manifest configurations for the origin endpoint. You can configure multiple MSS manifests to provide different streaming experiences or to support different client requirements.</p>
    # @option params [Types::ForceEndpointErrorConfiguration] :force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    # @option params [String] :uri_separator
    #   <p>The separator character to use in generated URIs for this origin endpoint. This setting applies to all manifest types on the endpoint. If you don't specify a value, the default is <code>UNDERSCORE</code>.</p>
    # @option params [String] :stream_name_output_mode
    #   <p>The output mode for stream names in egress manifests. This setting is valid only when the associated channel's <code>InputType</code> is <code>HLS</code>. You can't change the stream name output mode after you create the endpoint.</p> <p> <code>INDEX</code> uses numeric indices for stream names (for example, 1, 2, 3). <code>PASSTHROUGH_NAME</code> uses the stream names from the input manifest. If you don't specify a value, the default is <code>INDEX</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p> <p> <code>"Key1": "Value1",</code> </p> <p> <code>"Key2": "Value2"</code> </p>
    # @example Creating an OriginEndpoint with container type TS, and encryption enabled
    #   # Example operation for create_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS",
    #     container_type: TS,
    #     description: "Description for exampleOriginEndpointTS",
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     stream_name_output_mode: INDEX,
    #     segment: {
    #       segment_duration_seconds: 6,
    #       segment_name: "segmentName",
    #       ts_use_audio_rendition_group: true,
    #       include_iframe_only_streams: true,
    #       ts_include_dvb_subtitles: true,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT,
    #           BREAK
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E",
    #         encryption_method: {
    #           ts_encryption_method: AES_128
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             CLEAR_KEY_AES_128
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       }
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: ROOT
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: ROOT
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       }
    #     ],
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS",
    #     description: "Description for exampleOriginEndpointTS",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: TS,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     stream_name_output_mode: INDEX,
    #     segment: {
    #       segment_duration_seconds: 6,
    #       segment_name: "segmentName",
    #       ts_use_audio_rendition_group: true,
    #       include_iframe_only_streams: true,
    #       ts_include_dvb_subtitles: true,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT,
    #           BREAK
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E",
    #         encryption_method: {
    #           ts_encryption_method: AES_128
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             CLEAR_KEY_AES_128
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       }
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8",
    #         uri_path_type: ROOT
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8",
    #         uri_path_type: ROOT
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8",
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8",
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Creating an OriginEndpoint with container type CMAF, and encryption enabled
    #   # Example operation for create_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointCMAF",
    #     container_type: CMAF,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 6,
    #       segment_name: "segmentName",
    #       include_iframe_only_streams: true,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT,
    #           BREAK
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B9F",
    #         encryption_method: {
    #           cmaf_encryption_method: CBCS
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: PRESET_AUDIO_1,
    #             preset_speke20_video: PRESET_VIDEO_1
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY,
    #             WIDEVINE
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       },
    #       output_timestamp_mode: REBASED_TO_CHANNEL_START
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "exampleDashManifest1",
    #         manifest_window_seconds: 300,
    #         min_update_period_seconds: 5,
    #         min_buffer_time_seconds: 30,
    #         suggested_presentation_delay_seconds: 2,
    #         segment_template_format: NUMBER_WITH_TIMELINE,
    #         period_triggers: [
    #           AVAILS
    #         ],
    #         scte_dash: {
    #           ad_marker_dash: XML
    #         },
    #         drm_signaling: INDIVIDUAL,
    #         utc_timing: {
    #           timing_mode: HTTP_HEAD,
    #           timing_source: "example"
    #         },
    #         profiles: [
    #           DVB_DASH
    #         ],
    #         base_urls: [
    #           {
    #             url: "http://example.com/",
    #             service_location: "A",
    #             dvb_priority: 1,
    #             dvb_weight: 3
    #           }
    #         ],
    #         program_information: {
    #           title: "exampleTitle",
    #           source: "exampleSource",
    #           copyright: "(c) Example. All rights reserved",
    #           language_code: "en",
    #           more_information_url: "https://example.com/more-information"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "https://example.com/fonts/SubtitleDisplay.woff",
    #             mime_type: "application/font",
    #             font_family: "SubtitleDisplay"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "https://example.com/dvb-errors/errors",
    #               probability: 500
    #             }
    #           ]
    #         },
    #         compactness: STANDARD
    #       },
    #       {
    #         manifest_name: "exampleDashManifest2",
    #         manifest_window_seconds: 60,
    #         min_update_period_seconds: 3,
    #         min_buffer_time_seconds: 9,
    #         suggested_presentation_delay_seconds: 12,
    #         segment_template_format: NUMBER_WITH_TIMELINE,
    #         period_triggers: [
    #           AVAILS,
    #           DRM_KEY_ROTATION,
    #           SOURCE_CHANGES,
    #           SOURCE_DISRUPTIONS
    #         ],
    #         scte_dash: {
    #           ad_marker_dash: XML
    #         },
    #         drm_signaling: INDIVIDUAL,
    #         utc_timing: {
    #           timing_mode: HTTP_HEAD,
    #           timing_source: "example"
    #         },
    #         profiles: [
    #           DVB_DASH
    #         ],
    #         base_urls: [
    #           {
    #             url: "http://example2.com/",
    #             service_location: "B",
    #             dvb_priority: 2,
    #             dvb_weight: 2
    #           }
    #         ],
    #         program_information: {
    #           title: "exampleTitle2",
    #           source: "exampleSource2",
    #           copyright: "(c) Example. All rights reserved",
    #           language_code: "en",
    #           more_information_url: "https://example2.com/more-information"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "https://example.com/fonts/SubtitleDisplay.woff",
    #             mime_type: "application/font",
    #             font_family: "SubtitleDisplay"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "https://example2.com/dvb-errors/errors",
    #               probability: 600
    #             }
    #           ]
    #         },
    #         compactness: STANDARD,
    #         availability_start_time_configuration: {
    #     "FixedAvailabilityStartTime" => 2026-04-17T23:00:00.00Z
    #   }
    #       }
    #     ],
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointCMAF",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointCMAF",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: CMAF,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 6,
    #       segment_name: "segmentName",
    #       include_iframe_only_streams: true,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT,
    #           BREAK
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B9F",
    #         encryption_method: {
    #           cmaf_encryption_method: CBCS
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: PRESET_AUDIO_1,
    #             preset_speke20_video: PRESET_VIDEO_1
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY,
    #             WIDEVINE
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       },
    #       output_timestamp_mode: REBASED_TO_CHANNEL_START
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest1.m3u8",
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest2.m3u8",
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest1.m3u8",
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest2.m3u8",
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "exampleDashManifest1",
    #         manifest_window_seconds: 300,
    #         min_update_period_seconds: 5,
    #         min_buffer_time_seconds: 30,
    #         suggested_presentation_delay_seconds: 2,
    #         segment_template_format: NUMBER_WITH_TIMELINE,
    #         period_triggers: [
    #           AVAILS
    #         ],
    #         scte_dash: {
    #           ad_marker_dash: XML
    #         },
    #         drm_signaling: INDIVIDUAL,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest1.mpd",
    #         utc_timing: {
    #           timing_mode: HTTP_HEAD,
    #           timing_source: "example"
    #         },
    #         profiles: [
    #           DVB_DASH
    #         ],
    #         base_urls: [
    #           {
    #             url: "http://example.com/",
    #             service_location: "A",
    #             dvb_priority: 1,
    #             dvb_weight: 3
    #           }
    #         ],
    #         program_information: {
    #           title: "exampleTitle",
    #           source: "exampleSource",
    #           copyright: "(c) Example. All rights reserved",
    #           language_code: "en",
    #           more_information_url: "https://example.com/more-information"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "https://example.com/fonts/SubtitleDisplay.woff",
    #             mime_type: "application/font",
    #             font_family: "SubtitleDisplay"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "https://example.com/dvb-errors/errors",
    #               probability: 500
    #             }
    #           ]
    #         },
    #         compactness: STANDARD,
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleDashManifest2",
    #         manifest_window_seconds: 60,
    #         min_update_period_seconds: 3,
    #         min_buffer_time_seconds: 9,
    #         suggested_presentation_delay_seconds: 12,
    #         segment_template_format: NUMBER_WITH_TIMELINE,
    #         period_triggers: [
    #           AVAILS,
    #           DRM_KEY_ROTATION,
    #           SOURCE_CHANGES,
    #           SOURCE_DISRUPTIONS
    #         ],
    #         scte_dash: {
    #           ad_marker_dash: XML
    #         },
    #         drm_signaling: INDIVIDUAL,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest2.mpd",
    #         utc_timing: {
    #           timing_mode: HTTP_HEAD,
    #           timing_source: "example"
    #         },
    #         profiles: [
    #           DVB_DASH
    #         ],
    #         base_urls: [
    #           {
    #             url: "http://example2.com/",
    #             service_location: "B",
    #             dvb_priority: 2,
    #             dvb_weight: 2
    #           }
    #         ],
    #         program_information: {
    #           title: "exampleTitle2",
    #           source: "exampleSource2",
    #           copyright: "(c) Example. All rights reserved",
    #           language_code: "en",
    #           more_information_url: "https://example2.com/more-information"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "https://example.com/fonts/SubtitleDisplay.woff",
    #             mime_type: "application/font",
    #             font_family: "SubtitleDisplay"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "https://example2.com/dvb-errors/errors",
    #               probability: 600
    #             }
    #           ]
    #         },
    #         compactness: STANDARD,
    #         uri_path_type: LEAF,
    #         availability_start_time_configuration: {
    #     "FixedAvailabilityStartTime" => 2026-04-17T23:00:00.00Z
    #   }
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Creating an OriginEndpoint with container type ISM, and encryption enabled
    #   # Example operation for create_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM",
    #     container_type: ISM,
    #     description: "Description for exampleOriginEndpointISM",
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 2,
    #       segment_name: "segmentName",
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: CENC
    #         },
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://speke-key-provider.example.com"
    #         }
    #       }
    #     },
    #     mss_manifests: [
    #       {
    #         manifest_name: "exampleMssManifest1",
    #         manifest_window_seconds: 60,
    #         manifest_layout: FULL
    #       }
    #     ],
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM",
    #     description: "Description for exampleOriginEndpointISM",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: ISM,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 2,
    #       segment_name: "segmentName",
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: CENC
    #         },
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://speke-key-provider.example.com"
    #         }
    #       }
    #     },
    #     mss_manifests: [
    #       {
    #         manifest_name: "exampleMssManifest1",
    #         manifest_window_seconds: 60,
    #         manifest_layout: FULL,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "String",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK", "PROVIDER_PROMO", "DISTRIBUTOR_PROMO", "PROVIDER_AD_BLOCK", "DISTRIBUTOR_AD_BLOCK", "CONTENT_IDENTIFICATION", "CALL_AD_SERVER"]],
    #         scte_in_segments: "NONE" # One of: ["NONE", "ALL", "MATCHES_FILTER"],
    #         custom_ad_types: ["PROGRAM" # One of: ["PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK"]]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "String",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #           cmaf_encryption_method: "CENC" # One of: ["CENC", "CBCS"],
    #           ism_encryption_method: "CENC" # One of: ["CENC"]
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke20_audio: "PRESET_AUDIO_1" # One of: ["PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET_VIDEO_1" # One of: ["PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "String", # required
    #           drm_systems: ["CLEAR_KEY_AES_128" # One of: ["CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"]], # required
    #           role_arn: "String", # required
    #           url: "String", # required
    #           certificate_arn: "String",
    #           speke_version: "V2_0" # One of: ["V2_0", "V2_1"],
    #           content_key_period_configuration: {
    #             content_key_period_timing: "INDEX_ONLY" # One of: ["INDEX_ONLY", "START_END_ONLY", "INDEX_WITH_START_END"]
    #           }
    #         }
    #       },
    #       output_timestamp_mode: "PASSTHROUGH" # One of: ["PASSTHROUGH", "REBASED_TO_CHANNEL_START"]
    #     },
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE"],
    #         period_triggers: ["AVAILS" # One of: ["AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"]],
    #         scte_dash: {
    #           ad_marker_dash: "BINARY" # One of: ["BINARY", "XML"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         drm_signaling: "INDIVIDUAL" # One of: ["INDIVIDUAL", "REFERENCED"],
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD" # One of: ["HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"],
    #           timing_source: "String"
    #         },
    #         profiles: ["DVB_DASH" # One of: ["DVB_DASH"]],
    #         base_urls: [
    #           {
    #             url: "String", # required
    #             service_location: "String",
    #             dvb_priority: 1,
    #             dvb_weight: 1
    #           }
    #         ],
    #         program_information: {
    #           title: "String",
    #           source: "String",
    #           copyright: "String",
    #           language_code: "String",
    #           more_information_url: "String"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "String",
    #             mime_type: "String",
    #             font_family: "String"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "String", # required
    #               probability: 1
    #             }
    #           ]
    #         },
    #         compactness: "STANDARD" # One of: ["STANDARD", "NONE"],
    #         audio_timeline_pattern: "NONE" # One of: ["NONE", "PATTERNED"],
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1" # One of: ["IMSC_1", "EBU_TT_D_101"], # required
    #           }
    #         },
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"],
    #         availability_start_time_configuration: {
    #           # One of:
    #           fixed_availability_start_time: Time.now
    #         }
    #       }
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         manifest_layout: "FULL" # One of: ["FULL", "COMPACT"]
    #       }
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #     },
    #     uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #     stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #     segment: { # required
    #       segment_duration_seconds: 1,
    #       segment_name: "String",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK", "PROVIDER_PROMO", "DISTRIBUTOR_PROMO", "PROVIDER_AD_BLOCK", "DISTRIBUTOR_AD_BLOCK", "CONTENT_IDENTIFICATION", "CALL_AD_SERVER"]],
    #         scte_in_segments: "NONE" # One of: ["NONE", "ALL", "MATCHES_FILTER"],
    #         custom_ad_types: ["PROGRAM" # One of: ["PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK"]]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "String",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #           cmaf_encryption_method: "CENC" # One of: ["CENC", "CBCS"],
    #           ism_encryption_method: "CENC" # One of: ["CENC"]
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke20_audio: "PRESET_AUDIO_1" # One of: ["PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET_VIDEO_1" # One of: ["PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "String", # required
    #           drm_systems: ["CLEAR_KEY_AES_128" # One of: ["CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"]], # required
    #           role_arn: "String", # required
    #           url: "String", # required
    #           certificate_arn: "String",
    #           speke_version: "V2_0" # One of: ["V2_0", "V2_1"],
    #           content_key_period_configuration: {
    #             content_key_period_timing: "INDEX_ONLY" # One of: ["INDEX_ONLY", "START_END_ONLY", "INDEX_WITH_START_END"]
    #           }
    #         }
    #       },
    #       output_timestamp_mode: "PASSTHROUGH" # One of: ["PASSTHROUGH", "REBASED_TO_CHANNEL_START"]
    #     },
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE"],
    #         period_triggers: ["AVAILS" # One of: ["AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"]],
    #         scte_dash: {
    #           ad_marker_dash: "BINARY" # One of: ["BINARY", "XML"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         drm_signaling: "INDIVIDUAL" # One of: ["INDIVIDUAL", "REFERENCED"],
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD" # One of: ["HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"],
    #           timing_source: "String"
    #         },
    #         profiles: ["DVB_DASH" # One of: ["DVB_DASH"]],
    #         base_urls: [
    #           {
    #             url: "String", # required
    #             service_location: "String",
    #             dvb_priority: 1,
    #             dvb_weight: 1
    #           }
    #         ],
    #         program_information: {
    #           title: "String",
    #           source: "String",
    #           copyright: "String",
    #           language_code: "String",
    #           more_information_url: "String"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "String",
    #             mime_type: "String",
    #             font_family: "String"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "String", # required
    #               probability: 1
    #             }
    #           ]
    #         },
    #         compactness: "STANDARD" # One of: ["STANDARD", "NONE"],
    #         audio_timeline_pattern: "NONE" # One of: ["NONE", "PATTERNED"],
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1" # One of: ["IMSC_1", "EBU_TT_D_101"], # required
    #           }
    #         },
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"],
    #         availability_start_time_configuration: {
    #           # One of:
    #           fixed_availability_start_time: Time.now
    #         }
    #       }
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         url: "String", # required
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         manifest_window_seconds: 1,
    #         manifest_layout: "FULL" # One of: ["FULL", "COMPACT"]
    #       }
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #     },
    #     uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #     stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateOriginEndpointResponse]
    def create_origin_endpoint(params = {}, options = {})
      request = build_request(:create_origin_endpoint, params)
      request.send_request(options)
    end

    # <p>Delete a channel to stop AWS Elemental MediaPackage from receiving further content. You must delete the channel's origin endpoints before you can delete the channel.</p>
    # @param [Hash, Types::DeleteChannelRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    # @example Deleting a Channel
    #   # Example operation for delete_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelResponse]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>Delete a channel group. You must delete the channel group's channels and origin endpoints before you can delete the channel group. If you delete a channel group, you'll lose access to the egress domain and will have to create a new channel group to replace it.</p>
    # @param [Hash, Types::DeleteChannelGroupRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @example Deleting a Channel Group
    #   # Example operation for delete_channel_group
    #   params = {
    #     channel_group_name: "exampleChannelGroup"
    #   }
    #   options = {}
    #   response = client.delete_channel_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelGroupResponse]
    def delete_channel_group(params = {}, options = {})
      request = build_request(:delete_channel_group, params)
      request.send_request(options)
    end

    # <p>Delete a channel policy.</p>
    # @param [Hash, Types::DeleteChannelPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    # @example Deleting a Channel Policy
    #   # Example operation for delete_channel_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.delete_channel_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelPolicyResponse]
    def delete_channel_policy(params = {}, options = {})
      request = build_request(:delete_channel_policy, params)
      request.send_request(options)
    end

    # <p>Origin endpoints can serve content until they're deleted. Delete the endpoint if it should no longer respond to playback requests. You must delete all endpoints from a channel before you can delete the channel.</p>
    # @param [Hash, Types::DeleteOriginEndpointRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @example Deleting an OriginEndpoint
    #   # Example operation for delete_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS"
    #   }
    #   options = {}
    #   response = client.delete_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOriginEndpointResponse]
    def delete_origin_endpoint(params = {}, options = {})
      request = build_request(:delete_origin_endpoint, params)
      request.send_request(options)
    end

    # <p>Delete an origin endpoint policy.</p>
    # @param [Hash, Types::DeleteOriginEndpointPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @example Deleting an Origin Endpoint Policy
    #   # Example operation for delete_origin_endpoint_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint"
    #   }
    #   options = {}
    #   response = client.delete_origin_endpoint_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_origin_endpoint_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOriginEndpointPolicyResponse]
    def delete_origin_endpoint_policy(params = {}, options = {})
      request = build_request(:delete_origin_endpoint_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified channel that's configured in AWS Elemental MediaPackage.</p>
    # @param [Hash, Types::GetChannelRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @example Getting a Channel
    #   # Example operation for get_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     description: "Description for exampleChannel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     input_type: HLS,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Getting a CMAF Channel with non-epoch-locked output locking mode
    #   # Example operation for get_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel"
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel",
    #     description: "Non-epoch-locked CMAF channel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleCmafChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     input_type: CMAF,
    #     output_locking_mode: NON_EPOCH_LOCKED,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multiview_configuration: {
    #       available_sources: ["ResourceName"], # required
    #       available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #     },
    #     attached_multiview_channels: ["ResourceName"],
    #     arn: "String", # required
    #     channel_name: "String", # required
    #     channel_group_name: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     reset_at: Time.now,
    #     description: "ResourceDescription",
    #     ingest_endpoints: [
    #       {
    #         id: "String",
    #         url: "String"
    #       }
    #     ],
    #     input_type: "HLS" # One of: ["HLS", "CMAF", "MULTIVIEW"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false
    #     },
    #     output_locking_mode: "EPOCH_LOCKED" # One of: ["EPOCH_LOCKED", "NON_EPOCH_LOCKED"]
    #   }
    # @return [Types::GetChannelResponse]
    def get_channel(params = {}, options = {})
      request = build_request(:get_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified channel group that's configured in AWS Elemental MediaPackage.</p>
    # @param [Hash, Types::GetChannelGroupRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @example Getting a Channel Group
    #   # Example operation for get_channel_group
    #   params = {
    #     channel_group_name: "exampleChannelGroup"
    #   }
    #   options = {}
    #   response = client.get_channel_group(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     description: "Description for exampleChannelGroup",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup",
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_channel_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "String", # required
    #     arn: "String", # required
    #     egress_domain: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetChannelGroupResponse]
    def get_channel_group(params = {}, options = {})
      request = build_request(:get_channel_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified channel policy that's configured in AWS Elemental MediaPackage. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources.</p>
    # @param [Hash, Types::GetChannelPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @example Getting a Channel Policy
    #   # Example operation for get_channel_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.get_channel_policy(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     policy: "{...}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "String", # required
    #     channel_name: "String", # required
    #     policy: "PolicyText", # required
    #   }
    # @return [Types::GetChannelPolicyResponse]
    def get_channel_policy(params = {}, options = {})
      request = build_request(:get_channel_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific harvest job.</p>
    # @param [Hash, Types::GetHarvestJobRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group containing the channel associated with the harvest job.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel associated with the harvest job.</p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name of the origin endpoint associated with the harvest job.</p>
    # @option params [String] :harvest_job_name
    #   <p>The name of the harvest job to retrieve.</p>
    # @example Getting a Harvest Job
    #   # Example operation for get_harvest_job
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     harvest_job_name: "HarvestJobName"
    #   }
    #   options = {}
    #   response = client.get_harvest_job(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket",
    #         destination_path: "manifests"
    #       }
    #     },
    #     harvest_job_name: "HarvestJobName",
    #     harvested_manifests: {
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest"
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest"
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest"
    #         }
    #       ]
    #     },
    #     description: "Example HarvestJob description",
    #     schedule_configuration: {
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #     },
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #     created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #     modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #     status: QUEUED,
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     harvest_job_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_harvest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     destination: { # required
    #       s3_destination: { # required
    #         bucket_name: "S3BucketName", # required
    #         destination_path: "S3DestinationPath", # required
    #       }
    #     },
    #     harvest_job_name: "ResourceName", # required
    #     harvested_manifests: { # required
    #       hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         }
    #       ]
    #     },
    #     description: "ResourceDescription",
    #     schedule_configuration: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     arn: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"], # required
    #     error_message: "String",
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetHarvestJobResponse]
    def get_harvest_job(params = {}, options = {})
      request = build_request(:get_harvest_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified origin endpoint that's configured in AWS Elemental MediaPackage to obtain its playback URL and to view the packaging settings that it's currently using.</p>
    # @param [Hash, Types::GetOriginEndpointRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @example Getting an OriginEndpoint
    #   # Example operation for get_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS"
    #   }
    #   options = {}
    #   response = client.get_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS",
    #     description: "Description for exampleOriginEndpointTS",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: TS,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 6,
    #       segment_name: "segmentName",
    #       ts_use_audio_rendition_group: true,
    #       include_iframe_only_streams: true,
    #       ts_include_dvb_subtitles: true,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT,
    #           BREAK
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E",
    #         encryption_method: {
    #           ts_encryption_method: AES_128
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             CLEAR_KEY_AES_128
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       }
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8",
    #         uri_path_type: ROOT
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8",
    #         uri_path_type: ROOT
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8",
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8",
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Getting an OriginEndpoint with ISM container
    #   # Example operation for get_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM"
    #   }
    #   options = {}
    #   response = client.get_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM",
    #     description: "Description for exampleOriginEndpointISM",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: ISM,
    #     startover_window_seconds: 300,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: UNDERSCORE,
    #     segment: {
    #       segment_duration_seconds: 2,
    #       segment_name: "segmentName",
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: CENC
    #         },
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://speke-key-provider.example.com"
    #         }
    #       }
    #     },
    #     mss_manifests: [
    #       {
    #         manifest_name: "exampleMssManifest1",
    #         manifest_window_seconds: 60,
    #         manifest_layout: FULL,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest"
    #       },
    #       {
    #         manifest_name: "exampleMssManifest2",
    #         manifest_window_seconds: 30,
    #         manifest_layout: COMPACT,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest"
    #       }
    #     ],
    #     e_tag: "HmgU+ewBzHJS5xvz9nLXm2SEQxTsjRfk0rVvuMayoyl=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #     segment: { # required
    #       segment_duration_seconds: 1,
    #       segment_name: "String",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK", "PROVIDER_PROMO", "DISTRIBUTOR_PROMO", "PROVIDER_AD_BLOCK", "DISTRIBUTOR_AD_BLOCK", "CONTENT_IDENTIFICATION", "CALL_AD_SERVER"]],
    #         scte_in_segments: "NONE" # One of: ["NONE", "ALL", "MATCHES_FILTER"],
    #         custom_ad_types: ["PROGRAM" # One of: ["PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK"]]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "String",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #           cmaf_encryption_method: "CENC" # One of: ["CENC", "CBCS"],
    #           ism_encryption_method: "CENC" # One of: ["CENC"]
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke20_audio: "PRESET_AUDIO_1" # One of: ["PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET_VIDEO_1" # One of: ["PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "String", # required
    #           drm_systems: ["CLEAR_KEY_AES_128" # One of: ["CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"]], # required
    #           role_arn: "String", # required
    #           url: "String", # required
    #           certificate_arn: "String",
    #           speke_version: "V2_0" # One of: ["V2_0", "V2_1"],
    #           content_key_period_configuration: {
    #             content_key_period_timing: "INDEX_ONLY" # One of: ["INDEX_ONLY", "START_END_ONLY", "INDEX_WITH_START_END"]
    #           }
    #         }
    #       },
    #       output_timestamp_mode: "PASSTHROUGH" # One of: ["PASSTHROUGH", "REBASED_TO_CHANNEL_START"]
    #     },
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     reset_at: Time.now,
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE"],
    #         period_triggers: ["AVAILS" # One of: ["AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"]],
    #         scte_dash: {
    #           ad_marker_dash: "BINARY" # One of: ["BINARY", "XML"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         drm_signaling: "INDIVIDUAL" # One of: ["INDIVIDUAL", "REFERENCED"],
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD" # One of: ["HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"],
    #           timing_source: "String"
    #         },
    #         profiles: ["DVB_DASH" # One of: ["DVB_DASH"]],
    #         base_urls: [
    #           {
    #             url: "String", # required
    #             service_location: "String",
    #             dvb_priority: 1,
    #             dvb_weight: 1
    #           }
    #         ],
    #         program_information: {
    #           title: "String",
    #           source: "String",
    #           copyright: "String",
    #           language_code: "String",
    #           more_information_url: "String"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "String",
    #             mime_type: "String",
    #             font_family: "String"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "String", # required
    #               probability: 1
    #             }
    #           ]
    #         },
    #         compactness: "STANDARD" # One of: ["STANDARD", "NONE"],
    #         audio_timeline_pattern: "NONE" # One of: ["NONE", "PATTERNED"],
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1" # One of: ["IMSC_1", "EBU_TT_D_101"], # required
    #           }
    #         },
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"],
    #         availability_start_time_configuration: {
    #           # One of:
    #           fixed_availability_start_time: Time.now
    #         }
    #       }
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         url: "String", # required
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         manifest_window_seconds: 1,
    #         manifest_layout: "FULL" # One of: ["FULL", "COMPACT"]
    #       }
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #     },
    #     uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #     stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetOriginEndpointResponse]
    def get_origin_endpoint(params = {}, options = {})
      request = build_request(:get_origin_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified origin endpoint policy that's configured in AWS Elemental MediaPackage.</p>
    # @param [Hash, Types::GetOriginEndpointPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @example Getting an Origin Endpoint Policy
    #   # Example operation for get_origin_endpoint_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint"
    #   }
    #   options = {}
    #   response = client.get_origin_endpoint_policy(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint",
    #     policy: "{...}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_origin_endpoint_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #     cdn_auth_configuration: {
    #       cdn_identifier_secret_arns: ["CdnIdentifierSecretArn"], # required
    #       secrets_role_arn: "String", # required
    #     }
    #   }
    # @return [Types::GetOriginEndpointPolicyResponse]
    def get_origin_endpoint_policy(params = {}, options = {})
      request = build_request(:get_origin_endpoint_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves all channel groups that are configured in Elemental MediaPackage.</p>
    # @param [Hash, Types::ListChannelGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    # @example Listing all Channel Groups
    #   # Example operation for list_channel_groups
    #   params = {}
    #   options = {}
    #   response = client.list_channel_groups(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         description: "Description for exampleChannelGroup",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup",
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z")
    #       },
    #       {
    #         channel_group_name: "anotherExampleChannelGroup",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/anotherExampleChannelGroup",
    #         created_at: Time.parse("2022-10-18T10:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T10:36:00.00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_channel_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "String", # required
    #         arn: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListChannelGroupsResponse]
    def list_channel_groups(params = {}, options = {})
      request = build_request(:list_channel_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves all channels in a specific channel group that are configured in AWS Elemental MediaPackage.</p>
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    # @example Listing all Channels
    #   # Example operation for list_channels
    #   params = {
    #     channel_group_name: "exampleChannelGroup"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannel",
    #         description: "Description for exampleChannel",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z")
    #       },
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "anotherExampleChannel",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/anotherExampleChannel",
    #         created_at: Time.parse("2022-10-18T10:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T10:36:00.00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "String", # required
    #         channel_name: "String", # required
    #         channel_group_name: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         description: "ResourceDescription",
    #         input_type: "HLS" # One of: ["HLS", "CMAF", "MULTIVIEW"],
    #         output_locking_mode: "EPOCH_LOCKED" # One of: ["EPOCH_LOCKED", "NON_EPOCH_LOCKED"],
    #         multiview_configuration: {
    #           available_sources: ["ResourceName"], # required
    #           available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #         },
    #         attached_multiview_channels: ["ResourceName"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of harvest jobs that match the specified criteria.</p>
    # @param [Hash, Types::ListHarvestJobsRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group to filter the harvest jobs by. If specified, only harvest jobs associated with channels in this group will be returned.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel to filter the harvest jobs by. If specified, only harvest jobs associated with this channel will be returned.</p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name of the origin endpoint to filter the harvest jobs by. If specified, only harvest jobs associated with this origin endpoint will be returned.</p>
    # @option params [String] :status
    #   <p>The status to filter the harvest jobs by. If specified, only harvest jobs with this status will be returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of harvest jobs to return in a single request. If not specified, a default value will be used.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination. Provide this value in subsequent requests to retrieve the next set of results.</p>
    # @example ListHarvestJobs: Specify ChannelGroup only
    #   # Example operation for list_harvest_jobs
    #   params = {
    #     channel_group_name: "exampleChannelGroup"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName",
    #         origin_endpoint_name: "exampleOriginEndpointName",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         status: QUEUED,
    #         e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #       },
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName2",
    #         origin_endpoint_name: "exampleOriginEndpointName2",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName2",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob2 description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T02:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName2/originEndpoint/exampleOriginEndpointName2/harvestJob/HarvestJobName2",
    #         created_at: Time.parse("2024-05-28T15:30:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T15:30:00.00Z"),
    #         status: IN_PROGRESS,
    #         e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #       }
    #     ],
    #     next_token: "someTokenValue"
    #   }
    # @example ListHarvestJobs: Specify ChannelGroup, Channel only
    #   # Example operation for list_harvest_jobs
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName",
    #         origin_endpoint_name: "exampleOriginEndpointName",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         status: QUEUED,
    #         e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #       },
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName",
    #         origin_endpoint_name: "exampleOriginEndpointName2",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName2",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob2 description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T02:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName2/harvestJob/HarvestJobName2",
    #         created_at: Time.parse("2024-05-28T15:30:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T15:30:00.00Z"),
    #         status: IN_PROGRESS
    #       }
    #     ],
    #     next_token: "someTokenValue"
    #   }
    # @example ListHarvestJobs: Specify ChannelGroup, Channel, OriginEndpoint
    #   # Example operation for list_harvest_jobs
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName",
    #         origin_endpoint_name: "exampleOriginEndpointName",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         status: QUEUED,
    #         e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #       }
    #     ],
    #     next_token: "someTokenValue"
    #   }
    # @example ListHarvestJobs: Specify ChannelGroup, Channel, OriginEndpoint + Status filter
    #   # Example operation for list_harvest_jobs
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName",
    #     status: QUEUED
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannelName",
    #         origin_endpoint_name: "exampleOriginEndpointName",
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket",
    #             destination_path: "manifests"
    #           }
    #         },
    #         harvest_job_name: "HarvestJobName",
    #         harvested_manifests: {
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest"
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest"
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest"
    #             }
    #           ]
    #         },
    #         description: "Example HarvestJob description",
    #         schedule_configuration: {
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"),
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z")
    #         },
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName",
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"),
    #         status: QUEUED,
    #         e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk="
    #       }
    #     ],
    #     next_token: "someTokenValue"
    #   }
    # @example ListHarvestJobs: Empty response
    #   # Example operation for list_harvest_jobs
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannelName",
    #     origin_endpoint_name: "exampleOriginEndpointName"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName",
    #     origin_endpoint_name: "ResourceName",
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "ResourceName", # required
    #         channel_name: "ResourceName", # required
    #         origin_endpoint_name: "ResourceName", # required
    #         destination: { # required
    #           s3_destination: { # required
    #             bucket_name: "S3BucketName", # required
    #             destination_path: "S3DestinationPath", # required
    #           }
    #         },
    #         harvest_job_name: "ResourceName", # required
    #         harvested_manifests: { # required
    #           hls_manifests: [
    #             {
    #               manifest_name: "ResourceName", # required
    #             }
    #           ],
    #           dash_manifests: [
    #             {
    #               manifest_name: "ResourceName", # required
    #             }
    #           ],
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "ResourceName", # required
    #             }
    #           ]
    #         },
    #         description: "ResourceDescription",
    #         schedule_configuration: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         arn: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"], # required
    #         error_message: "String",
    #         e_tag: "EntityTag"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListHarvestJobsResponse]
    def list_harvest_jobs(params = {}, options = {})
      request = build_request(:list_harvest_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves all origin endpoints in a specific channel that are configured in AWS Elemental MediaPackage.</p>
    # @param [Hash, Types::ListOriginEndpointsRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    # @example Listing all OriginEndpoints
    #   # Example operation for list_origin_endpoints
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.list_origin_endpoints(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannel",
    #         origin_endpoint_name: "exampleOriginEndpointTS",
    #         description: "Description for exampleOriginEndpointTS",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS",
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         container_type: TS,
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             STALE_MANIFEST,
    #             INCOMPLETE_MANIFEST,
    #             MISSING_DRM_KEY,
    #             SLATE_INPUT
    #           ]
    #         },
    #         uri_separator: UNDERSCORE,
    #         hls_manifests: [
    #           {
    #             manifest_name: "exampleManifest1",
    #             child_manifest_name: "exampleChildManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8"
    #           },
    #           {
    #             manifest_name: "exampleManifest2",
    #             child_manifest_name: "exampleManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8"
    #           }
    #         ],
    #         low_latency_hls_manifests: [
    #           {
    #             manifest_name: "exampleLLManifest1",
    #             child_manifest_name: "exampleLLChildManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8"
    #           },
    #           {
    #             manifest_name: "exampleLLManifest2",
    #             child_manifest_name: "exampleLLManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8"
    #           }
    #         ]
    #       },
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannel",
    #         origin_endpoint_name: "exampleOriginEndpointCMAF",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointCMAF",
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         container_type: CMAF,
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             STALE_MANIFEST,
    #             INCOMPLETE_MANIFEST,
    #             MISSING_DRM_KEY,
    #             SLATE_INPUT
    #           ]
    #         },
    #         uri_separator: UNDERSCORE,
    #         hls_manifests: [
    #           {
    #             manifest_name: "exampleManifest1",
    #             child_manifest_name: "exampleChildManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest1.m3u8"
    #           },
    #           {
    #             manifest_name: "exampleManifest2",
    #             child_manifest_name: "exampleManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest2.m3u8"
    #           }
    #         ],
    #         low_latency_hls_manifests: [
    #           {
    #             manifest_name: "exampleLLManifest1",
    #             child_manifest_name: "exampleLLChildManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest1.m3u8"
    #           },
    #           {
    #             manifest_name: "exampleLLManifest2",
    #             child_manifest_name: "exampleLLManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest2.m3u8"
    #           }
    #         ],
    #         dash_manifests: [
    #           {
    #             manifest_name: "exampleDashManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest1.mpd"
    #           },
    #           {
    #             manifest_name: "exampleDashManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest2.mpd"
    #           }
    #         ]
    #       },
    #       {
    #         channel_group_name: "exampleChannelGroup",
    #         channel_name: "exampleChannel",
    #         origin_endpoint_name: "exampleOriginEndpointISM",
    #         description: "Description for exampleOriginEndpointISM",
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM",
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #         container_type: ISM,
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             STALE_MANIFEST,
    #             INCOMPLETE_MANIFEST,
    #             MISSING_DRM_KEY,
    #             SLATE_INPUT
    #           ]
    #         },
    #         uri_separator: UNDERSCORE,
    #         mss_manifests: [
    #           {
    #             manifest_name: "exampleMssManifest1",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest"
    #           },
    #           {
    #             manifest_name: "exampleMssManifest2",
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_origin_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "String", # required
    #         channel_group_name: "ResourceName", # required
    #         channel_name: "ResourceName", # required
    #         origin_endpoint_name: "ResourceName", # required
    #         container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #         description: "ResourceDescription",
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         hls_manifests: [
    #           {
    #             manifest_name: "ResourceName", # required
    #             child_manifest_name: "ResourceName",
    #             url: "String"
    #           }
    #         ],
    #         low_latency_hls_manifests: [
    #           {
    #             manifest_name: "ResourceName", # required
    #             child_manifest_name: "ResourceName",
    #             url: "String"
    #           }
    #         ],
    #         dash_manifests: [
    #           {
    #             manifest_name: "ResourceName", # required
    #             url: "String"
    #           }
    #         ],
    #         mss_manifests: [
    #           {
    #             manifest_name: "ResourceName", # required
    #             url: "String"
    #           }
    #         ],
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #         },
    #         uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #         stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOriginEndpointsResponse]
    def list_origin_endpoints(params = {}, options = {})
      request = build_request(:list_origin_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch resource that you want to view tags for.</p>
    # @example List all tags for a resource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
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

    # <p>Attaches an IAM policy to the specified channel. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources. You can attach only one policy with each request.</p>
    # @param [Hash, Types::PutChannelPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :policy
    #   <p>The policy to attach to the specified channel.</p>
    # @example Creating a Channel Policy
    #   # Example operation for put_channel_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     policy: "{...}"
    #   }
    #   options = {}
    #   response = client.put_channel_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #   }
    #   options = {}
    #   response = client.put_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutChannelPolicyResponse]
    def put_channel_policy(params = {}, options = {})
      request = build_request(:put_channel_policy, params)
      request.send_request(options)
    end

    # <p>Attaches an IAM policy to the specified origin endpoint. You can attach only one policy with each request.</p>
    # @param [Hash, Types::PutOriginEndpointPolicyRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @option params [String] :policy
    #   <p>The policy to attach to the specified origin endpoint.</p>
    # @option params [Types::CdnAuthConfiguration] :cdn_auth_configuration
    #   <p>The settings for using authorization headers between the MediaPackage endpoint and your CDN. </p> <p>For information about CDN authorization, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html">CDN authorization in Elemental MediaPackage</a> in the MediaPackage user guide. </p>
    # @example Creating an Origin Endpoint Policy
    #   # Example operation for put_origin_endpoint_policy
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint",
    #     policy: "{...}"
    #   }
    #   options = {}
    #   response = client.put_origin_endpoint_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #     cdn_auth_configuration: {
    #       cdn_identifier_secret_arns: ["CdnIdentifierSecretArn"], # required
    #       secrets_role_arn: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_origin_endpoint_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutOriginEndpointPolicyResponse]
    def put_origin_endpoint_policy(params = {}, options = {})
      request = build_request(:put_origin_endpoint_policy, params)
      request.send_request(options)
    end

    # <p>Resetting the channel can help to clear errors from misconfigurations in the encoder. A reset refreshes the ingest stream and removes previous content. </p> <p> Be sure to stop the encoder before you reset the channel, and wait at least 30 seconds before you restart the encoder. </p>
    # @param [Hash, Types::ResetChannelStateRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group that contains the channel that you are resetting.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel that you are resetting.</p>
    # @example Reset a Channel
    #   # Example operation for reset_channel_state
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel"
    #   }
    #   options = {}
    #   response = client.reset_channel_state(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     reset_at: Time.parse("2024-10-09T09:36:00.00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.reset_channel_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "String", # required
    #     channel_name: "String", # required
    #     arn: "String", # required
    #     reset_at: Time.now, # required
    #   }
    # @return [Types::ResetChannelStateResponse]
    def reset_channel_state(params = {}, options = {})
      request = build_request(:reset_channel_state, params)
      request.send_request(options)
    end

    # <p>Resetting the origin endpoint can help to resolve unexpected behavior and other content packaging issues. It also helps to preserve special events when you don't want the previous content to be available for viewing. A reset clears out all previous content from the origin endpoint.</p> <p>MediaPackage might return old content from this endpoint in the first 30 seconds after the endpoint reset. For best results, when possible, wait 30 seconds from endpoint reset to send playback requests to this endpoint. </p>
    # @param [Hash, Types::ResetOriginEndpointStateRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name of the channel group that contains the channel with the origin endpoint that you are resetting.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel with the origin endpoint that you are resetting.</p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name of the origin endpoint that you are resetting.</p>
    # @example Reset an OriginEndpoint
    #   # Example operation for reset_origin_endpoint_state
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint"
    #   }
    #   options = {}
    #   response = client.reset_origin_endpoint_state(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpoint",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpoint",
    #     reset_at: Time.parse("2024-10-09T09:36:00.00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.reset_origin_endpoint_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     arn: "String", # required
    #     reset_at: Time.now, # required
    #   }
    # @return [Types::ResetOriginEndpointStateResponse]
    def reset_origin_endpoint_state(params = {}, options = {})
      request = build_request(:reset_origin_endpoint_state, params)
      request.send_request(options)
    end

    # <p>Assigns one of more tags (key-value pairs) to the specified MediaPackage resource.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the MediaPackage resource that you're adding tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
    # @example Add tags to a resource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     tags: {
    #       "key3" => "value3",
    #       "key4" => "value4"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the MediaPackage resource that you're removing tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Remove tags from a resource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     tag_keys: [
    #       "key3",
    #       "key4"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>Update the specified channel. You can edit if MediaPackage sends ingest or egress access logs to the CloudWatch log group, if content will be encrypted, the description on a channel, and your channel's policy settings. You can't edit the name of the channel or CloudFront distribution details.</p> <p>Any edits you make that impact the video output may not be reflected for a few minutes.</p>
    # @param [Hash, Types::UpdateChannelRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    # @option params [String] :description
    #   <p>Any descriptive information that you want to add to the channel for future identification purposes.</p>
    # @option params [Types::InputSwitchConfiguration] :input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    # @option params [Types::OutputHeaderConfiguration] :output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    # @option params [Types::MultiviewConfiguration] :multiview_configuration
    #   <p>The multiview configuration for the channel. This setting is required when the channel's <code>InputType</code> is <code>MULTIVIEW</code>, and can't be set for any other input type. Because <code>InputType</code> is immutable, you can change a multiview channel's sources and layouts. You can't add or remove the multiview configuration itself.</p>
    # @example Updating a Channel
    #   # Example operation for update_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     description: "Updated description for exampleChannel"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     description: "Updated description for exampleChannel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T10:36:00.00Z"),
    #     input_type: HLS,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Updating a CMAF Channel with non-epoch-locked output locking mode
    #   # Example operation for update_channel
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel",
    #     description: "Updated non-epoch-locked CMAF channel"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleCmafChannel",
    #     description: "Updated non-epoch-locked CMAF channel",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleCmafChannel",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T10:36:00.00Z"),
    #     input_type: CMAF,
    #     output_locking_mode: NON_EPOCH_LOCKED,
    #     ingest_endpoints: [
    #       {
    #         id: "1",
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       },
    #       {
    #         id: "2",
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleCmafChannel"
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     e_tag: "EntityTag",
    #     description: "ResourceDescription",
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false
    #     },
    #     multiview_configuration: {
    #       available_sources: ["ResourceName"], # required
    #       available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multiview_configuration: {
    #       available_sources: ["ResourceName"], # required
    #       available_layouts: ["LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"]], # required
    #     },
    #     attached_multiview_channels: ["ResourceName"],
    #     arn: "String", # required
    #     channel_name: "String", # required
    #     channel_group_name: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     ingest_endpoints: [
    #       {
    #         id: "String",
    #         url: "String"
    #       }
    #     ],
    #     input_type: "HLS" # One of: ["HLS", "CMAF", "MULTIVIEW"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false
    #     },
    #     output_locking_mode: "EPOCH_LOCKED" # One of: ["EPOCH_LOCKED", "NON_EPOCH_LOCKED"]
    #   }
    # @return [Types::UpdateChannelResponse]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Update the specified channel group. You can edit the description on a channel group for easier identification later from the AWS Elemental MediaPackage console. You can't edit the name of the channel group.</p> <p>Any edits you make that impact the video output may not be reflected for a few minutes.</p>
    # @param [Hash, Types::UpdateChannelGroupRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    # @option params [String] :description
    #   <p>Any descriptive information that you want to add to the channel group for future identification purposes.</p>
    # @example Updating a Channel Group
    #   # Example operation for update_channel_group
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     description: "Updated description for exampleChannelGroup"
    #   }
    #   options = {}
    #   response = client.update_channel_group(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     description: "Updated description for exampleChannelGroup",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup",
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T10:36:00.00Z"),
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     e_tag: "EntityTag",
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_channel_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_group_name: "String", # required
    #     arn: "String", # required
    #     egress_domain: "String", # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateChannelGroupResponse]
    def update_channel_group(params = {}, options = {})
      request = build_request(:update_channel_group, params)
      request.send_request(options)
    end

    # <p>Update the specified origin endpoint. Edit the packaging preferences on an endpoint to optimize the viewing experience. You can't edit the name of the endpoint.</p> <p>Any edits you make that impact the video output may not be reflected for a few minutes.</p>
    # @param [Hash, Types::UpdateOriginEndpointRequest] params
    # @option params [String] :channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    # @option params [String] :channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    # @option params [String] :origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    # @option params [String] :container_type
    #   <p>The type of container attached to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. </p>
    # @option params [Types::Segment] :segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    # @option params [String] :description
    #   <p>Any descriptive information that you want to add to the origin endpoint for future identification purposes.</p>
    # @option params [Integer] :startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days).</p>
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    # @option params [Array<Types::CreateDashManifestConfiguration>] :dash_manifests
    #   <p>A DASH manifest configuration.</p>
    # @option params [Array<Types::CreateMssManifestConfiguration>] :mss_manifests
    #   <p>A list of Microsoft Smooth Streaming (MSS) manifest configurations to update for the origin endpoint. This replaces the existing MSS manifest configurations.</p>
    # @option params [Types::ForceEndpointErrorConfiguration] :force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    # @option params [String] :uri_separator
    #   <p>The separator character to use in generated URIs for this origin endpoint. This setting applies to all manifest types on the endpoint. If you don't specify a value in the update request, the current value is preserved.</p>
    # @option params [String] :stream_name_output_mode
    #   <p>The output mode for stream names in egress manifests. If you provide a value, it must match the current value. You can't change the stream name output mode after you create the endpoint.</p>
    # @option params [String] :e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    # @example Updating an OriginEndpoint
    #   # Example operation for update_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS",
    #     container_type: TS,
    #     description: "Updated description for exampleOriginEndpointTS",
    #     startover_window_seconds: 600,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: HYPHEN,
    #     segment: {
    #       segment_duration_seconds: 7,
    #       segment_name: "segmentName2",
    #       ts_use_audio_rendition_group: true,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E",
    #         encryption_method: {
    #           ts_encryption_method: AES_128
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             CLEAR_KEY_AES_128
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       }
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: ROOT
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         uri_path_type: ROOT
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointTS",
    #     description: "Updated description for exampleOriginEndpointTS",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     container_type: TS,
    #     startover_window_seconds: 600,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: HYPHEN,
    #     segment: {
    #       segment_duration_seconds: 7,
    #       segment_name: "segmentName2",
    #       ts_use_audio_rendition_group: true,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: [
    #           SPLICE_INSERT
    #         ]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E",
    #         encryption_method: {
    #           ts_encryption_method: AES_128
    #         },
    #         key_rotation_interval_seconds: 300,
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             CLEAR_KEY_AES_128
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://foo.com",
    #           certificate_arn: "arn:aws:acm:us-west-2:123456789012:certificate/0c6a65f1-7bd3-48ac-be17-f38675def22e"
    #         }
    #       }
    #     },
    #     hls_manifests: [
    #       {
    #         manifest_name: "exampleManifest1",
    #         child_manifest_name: "exampleChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8",
    #         uri_path_type: LEAF
    #       },
    #       {
    #         manifest_name: "exampleManifest2",
    #         child_manifest_name: "exampleManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8",
    #         uri_path_type: LEAF
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "exampleLLManifest1",
    #         child_manifest_name: "exampleLLChildManifest1",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8",
    #         uri_path_type: ROOT
    #       },
    #       {
    #         manifest_name: "exampleLLManifest2",
    #         child_manifest_name: "exampleLLManifest2",
    #         scte_hls: {
    #           ad_marker_hls: DATERANGE
    #         },
    #         manifest_window_seconds: 30,
    #         program_date_time_interval_seconds: 60,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8",
    #         uri_path_type: ROOT
    #       }
    #     ],
    #     e_tag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Updating an OriginEndpoint with ISM container
    #   # Example operation for update_origin_endpoint
    #   params = {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM",
    #     container_type: ISM,
    #     description: "Updated description for exampleOriginEndpointISM",
    #     startover_window_seconds: 600,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: HYPHEN,
    #     segment: {
    #       segment_duration_seconds: 2,
    #       segment_name: "segmentName2",
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: CENC
    #         },
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://speke-key-provider.example.com"
    #         }
    #       }
    #     },
    #     mss_manifests: [
    #       {
    #         manifest_name: "exampleMssManifest1",
    #         manifest_window_seconds: 60,
    #         manifest_layout: FULL
    #       },
    #       {
    #         manifest_name: "exampleMssManifest2",
    #         manifest_window_seconds: 30,
    #         manifest_layout: COMPACT
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_origin_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     channel_group_name: "exampleChannelGroup",
    #     channel_name: "exampleChannel",
    #     origin_endpoint_name: "exampleOriginEndpointISM",
    #     description: "Updated description for exampleOriginEndpointISM",
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM",
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"),
    #     modified_at: Time.parse("2022-10-18T09:37:00.00Z"),
    #     container_type: ISM,
    #     startover_window_seconds: 600,
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         STALE_MANIFEST,
    #         INCOMPLETE_MANIFEST,
    #         MISSING_DRM_KEY,
    #         SLATE_INPUT
    #       ]
    #     },
    #     uri_separator: HYPHEN,
    #     segment: {
    #       segment_duration_seconds: 2,
    #       segment_name: "segmentName2",
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: CENC
    #         },
    #         speke_key_provider: {
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: SHARED,
    #             preset_speke20_video: SHARED
    #           },
    #           resource_id: "ResourceId",
    #           drm_systems: [
    #             PLAYREADY
    #           ],
    #           role_arn: "arn:aws:iam::123456789012:role/empRole",
    #           url: "https://speke-key-provider.example.com"
    #         }
    #       }
    #     },
    #     mss_manifests: [
    #       {
    #         manifest_name: "exampleMssManifest1",
    #         manifest_window_seconds: 60,
    #         manifest_layout: FULL,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest"
    #       },
    #       {
    #         manifest_name: "exampleMssManifest2",
    #         manifest_window_seconds: 30,
    #         manifest_layout: COMPACT,
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest"
    #       }
    #     ],
    #     e_tag: "HmgU+ewBzHJS5xvz9nLXm2SEQxTsjRfk0rVvuMayoyl=",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "String",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK", "PROVIDER_PROMO", "DISTRIBUTOR_PROMO", "PROVIDER_AD_BLOCK", "DISTRIBUTOR_AD_BLOCK", "CONTENT_IDENTIFICATION", "CALL_AD_SERVER"]],
    #         scte_in_segments: "NONE" # One of: ["NONE", "ALL", "MATCHES_FILTER"],
    #         custom_ad_types: ["PROGRAM" # One of: ["PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK"]]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "String",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #           cmaf_encryption_method: "CENC" # One of: ["CENC", "CBCS"],
    #           ism_encryption_method: "CENC" # One of: ["CENC"]
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke20_audio: "PRESET_AUDIO_1" # One of: ["PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET_VIDEO_1" # One of: ["PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "String", # required
    #           drm_systems: ["CLEAR_KEY_AES_128" # One of: ["CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"]], # required
    #           role_arn: "String", # required
    #           url: "String", # required
    #           certificate_arn: "String",
    #           speke_version: "V2_0" # One of: ["V2_0", "V2_1"],
    #           content_key_period_configuration: {
    #             content_key_period_timing: "INDEX_ONLY" # One of: ["INDEX_ONLY", "START_END_ONLY", "INDEX_WITH_START_END"]
    #           }
    #         }
    #       },
    #       output_timestamp_mode: "PASSTHROUGH" # One of: ["PASSTHROUGH", "REBASED_TO_CHANNEL_START"]
    #     },
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE"],
    #         period_triggers: ["AVAILS" # One of: ["AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"]],
    #         scte_dash: {
    #           ad_marker_dash: "BINARY" # One of: ["BINARY", "XML"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         drm_signaling: "INDIVIDUAL" # One of: ["INDIVIDUAL", "REFERENCED"],
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD" # One of: ["HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"],
    #           timing_source: "String"
    #         },
    #         profiles: ["DVB_DASH" # One of: ["DVB_DASH"]],
    #         base_urls: [
    #           {
    #             url: "String", # required
    #             service_location: "String",
    #             dvb_priority: 1,
    #             dvb_weight: 1
    #           }
    #         ],
    #         program_information: {
    #           title: "String",
    #           source: "String",
    #           copyright: "String",
    #           language_code: "String",
    #           more_information_url: "String"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "String",
    #             mime_type: "String",
    #             font_family: "String"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "String", # required
    #               probability: 1
    #             }
    #           ]
    #         },
    #         compactness: "STANDARD" # One of: ["STANDARD", "NONE"],
    #         audio_timeline_pattern: "NONE" # One of: ["NONE", "PATTERNED"],
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1" # One of: ["IMSC_1", "EBU_TT_D_101"], # required
    #           }
    #         },
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"],
    #         availability_start_time_configuration: {
    #           # One of:
    #           fixed_availability_start_time: Time.now
    #         }
    #       }
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         manifest_layout: "FULL" # One of: ["FULL", "COMPACT"]
    #       }
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #     },
    #     uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #     stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"],
    #     e_tag: "EntityTag"
    #   }
    #   options = {}
    #   response = client.update_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS" # One of: ["TS", "CMAF", "ISM"], # required
    #     segment: { # required
    #       segment_duration_seconds: 1,
    #       segment_name: "String",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK", "PROVIDER_PROMO", "DISTRIBUTOR_PROMO", "PROVIDER_AD_BLOCK", "DISTRIBUTOR_AD_BLOCK", "CONTENT_IDENTIFICATION", "CALL_AD_SERVER"]],
    #         scte_in_segments: "NONE" # One of: ["NONE", "ALL", "MATCHES_FILTER"],
    #         custom_ad_types: ["PROGRAM" # One of: ["PROGRAM", "CHAPTER", "UNSCHEDULED_EVENT", "ALTERNATE_CONTENT_OPPORTUNITY", "NETWORK"]]
    #       },
    #       encryption: {
    #         constant_initialization_vector: "String",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #           cmaf_encryption_method: "CENC" # One of: ["CENC", "CBCS"],
    #           ism_encryption_method: "CENC" # One of: ["CENC"]
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke20_audio: "PRESET_AUDIO_1" # One of: ["PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET_VIDEO_1" # One of: ["PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "String", # required
    #           drm_systems: ["CLEAR_KEY_AES_128" # One of: ["CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"]], # required
    #           role_arn: "String", # required
    #           url: "String", # required
    #           certificate_arn: "String",
    #           speke_version: "V2_0" # One of: ["V2_0", "V2_1"],
    #           content_key_period_configuration: {
    #             content_key_period_timing: "INDEX_ONLY" # One of: ["INDEX_ONLY", "START_END_ONLY", "INDEX_WITH_START_END"]
    #           }
    #         }
    #       },
    #       output_timestamp_mode: "PASSTHROUGH" # One of: ["PASSTHROUGH", "REBASED_TO_CHANNEL_START"]
    #     },
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         child_manifest_name: "ResourceName",
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false
    #         },
    #         url_encode_child_manifest: false,
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"]
    #       }
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         url: "String", # required
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         manifest_window_seconds: 1,
    #         manifest_layout: "FULL" # One of: ["FULL", "COMPACT"]
    #       }
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST" # One of: ["STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"]]
    #     },
    #     uri_separator: "UNDERSCORE" # One of: ["UNDERSCORE", "HYPHEN"],
    #     stream_name_output_mode: "INDEX" # One of: ["INDEX", "PASSTHROUGH_NAME"],
    #     e_tag: "EntityTag",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     dash_manifests: [
    #       {
    #         manifest_name: "ResourceName", # required
    #         url: "String", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "String",
    #           drm_settings: "String",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #           multiview: {
    #             layout: "LAYOUT_2EH" # One of: ["LAYOUT_2EH", "LAYOUT_2PL", "LAYOUT_3EL", "LAYOUT_3PL", "LAYOUT_4E", "LAYOUT_4PL"], # required
    #             sources: ["ResourceName"], # required
    #           }
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE"],
    #         period_triggers: ["AVAILS" # One of: ["AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"]],
    #         scte_dash: {
    #           ad_marker_dash: "BINARY" # One of: ["BINARY", "XML"],
    #           scte_in_manifests: "ALL" # One of: ["ALL", "MATCHES_FILTER"]
    #         },
    #         drm_signaling: "INDIVIDUAL" # One of: ["INDIVIDUAL", "REFERENCED"],
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD" # One of: ["HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"],
    #           timing_source: "String"
    #         },
    #         profiles: ["DVB_DASH" # One of: ["DVB_DASH"]],
    #         base_urls: [
    #           {
    #             url: "String", # required
    #             service_location: "String",
    #             dvb_priority: 1,
    #             dvb_weight: 1
    #           }
    #         ],
    #         program_information: {
    #           title: "String",
    #           source: "String",
    #           copyright: "String",
    #           language_code: "String",
    #           more_information_url: "String"
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "String",
    #             mime_type: "String",
    #             font_family: "String"
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "String", # required
    #               probability: 1
    #             }
    #           ]
    #         },
    #         compactness: "STANDARD" # One of: ["STANDARD", "NONE"],
    #         audio_timeline_pattern: "NONE" # One of: ["NONE", "PATTERNED"],
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1" # One of: ["IMSC_1", "EBU_TT_D_101"], # required
    #           }
    #         },
    #         uri_path_type: "LEAF" # One of: ["LEAF", "ROOT"],
    #         availability_start_time_configuration: {
    #           # One of:
    #           fixed_availability_start_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateOriginEndpointResponse]
    def update_origin_endpoint(params = {}, options = {})
      request = build_request(:update_origin_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-mediapackagev2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        harvest_job_finished: Waiters::HarvestJobFinished
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
