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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mediapackage)

module Aws::MediaPackage
  # An API client for Aws::MediaPackage.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MediaPackage
    @identifier = :mediapackage

    add_plugin(::Aws::MediaPackage::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaPackage::EndpointProvider)
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

    # Changes the Channel's properities to configure log subscription
    # @param [Hash, Types::ConfigureLogsRequest] params
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    # @option params [String] :id
    #   The ID of the channel to log subscription.
    # @option params [Types::IngressAccessLogs] :ingress_access_logs
    #   Configure ingress access logging.
    # @example Request syntax with placeholder values
    #   params = {
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string", # required
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.configure_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ConfigureLogsResponse]
    def configure_logs(params = {}, options = {})
      request = build_request(:configure_logs, params)
      request.send_request(options)
    end

    # Creates a new Channel.
    # @param [Hash, Types::CreateChannelRequest] params
    # @option params [String] :description
    #   A short text description of the Channel.
    # @option params [String] :id
    #   The ID of the Channel. The ID must be unique within the region and it
    #   cannot be changed after a Channel is created.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__string",
    #     id: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateChannelResponse]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # Creates a new HarvestJob record.
    # @param [Hash, Types::CreateHarvestJobRequest] params
    # @option params [String] :end_time
    #   The end of the time-window which will be harvested
    # @option params [String] :id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted
    # @option params [String] :origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    # @option params [Types::S3Destination] :s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    # @option params [String] :start_time
    #   The start of the time-window which will be harvested
    # @example Request syntax with placeholder values
    #   params = {
    #     end_time: "__string", # required
    #     id: "__string", # required
    #     origin_endpoint_id: "__string", # required
    #     s3_destination: { # required
    #       bucket_name: "__string", # required
    #       manifest_key: "__string", # required
    #       role_arn: "__string", # required
    #     },
    #     start_time: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_harvest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     channel_id: "__string",
    #     created_at: "__string",
    #     end_time: "__string",
    #     id: "__string",
    #     origin_endpoint_id: "__string",
    #     s3_destination: {
    #       bucket_name: "__string", # required
    #       manifest_key: "__string", # required
    #       role_arn: "__string", # required
    #     },
    #     start_time: "__string",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   }
    # @return [Types::CreateHarvestJobResponse]
    def create_harvest_job(params = {}, options = {})
      request = build_request(:create_harvest_job, params)
      request.send_request(options)
    end

    # Creates a new OriginEndpoint record.
    # @param [Hash, Types::CreateOriginEndpointRequest] params
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    # @option params [String] :channel_id
    #   The ID of the Channel that the OriginEndpoint will be associated with.
    #   This cannot be changed after the OriginEndpoint is created.
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    # @option params [String] :description
    #   A short text description of the OriginEndpoint.
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    # @option params [String] :id
    #   The ID of the OriginEndpoint.  The ID must be unique within the region
    #   and it cannot be changed after the OriginEndpoint is created.
    # @option params [String] :manifest_name
    #   A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    # @option params [String] :origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    # @option params [Integer] :startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @option params [Integer] :time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    # @option params [Array<String>] :whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    # @example Request syntax with placeholder values
    #   params = {
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     channel_id: "__string", # required
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_iframe_only_stream: false,
    #       manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #       utc_timing_uri: "__string"
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     startover_window_seconds: 1,
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"]
    #   }
    #   options = {}
    #   response = client.create_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     channel_id: "__string",
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           url: "__string",
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     created_at: "__string",
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_iframe_only_stream: false,
    #       manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #       utc_timing_uri: "__string"
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string",
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     startover_window_seconds: 1,
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     time_delay_seconds: 1,
    #     url: "__string",
    #     whitelist: ["__string"]
    #   }
    # @return [Types::CreateOriginEndpointResponse]
    def create_origin_endpoint(params = {}, options = {})
      request = build_request(:create_origin_endpoint, params)
      request.send_request(options)
    end

    # Deletes an existing Channel.
    # @param [Hash, Types::DeleteChannelRequest] params
    # @option params [String] :id
    #   The ID of the Channel to delete.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
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

    # Deletes an existing OriginEndpoint.
    # @param [Hash, Types::DeleteOriginEndpointRequest] params
    # @option params [String] :id
    #   The ID of the OriginEndpoint to delete.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
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

    # Gets details about a Channel.
    # @param [Hash, Types::DescribeChannelRequest] params
    # @option params [String] :id
    #   The ID of a Channel.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeChannelResponse]
    def describe_channel(params = {}, options = {})
      request = build_request(:describe_channel, params)
      request.send_request(options)
    end

    # Gets details about an existing HarvestJob.
    # @param [Hash, Types::DescribeHarvestJobRequest] params
    # @option params [String] :id
    #   The ID of the HarvestJob.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_harvest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     channel_id: "__string",
    #     created_at: "__string",
    #     end_time: "__string",
    #     id: "__string",
    #     origin_endpoint_id: "__string",
    #     s3_destination: {
    #       bucket_name: "__string", # required
    #       manifest_key: "__string", # required
    #       role_arn: "__string", # required
    #     },
    #     start_time: "__string",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   }
    # @return [Types::DescribeHarvestJobResponse]
    def describe_harvest_job(params = {}, options = {})
      request = build_request(:describe_harvest_job, params)
      request.send_request(options)
    end

    # Gets details about an existing OriginEndpoint.
    # @param [Hash, Types::DescribeOriginEndpointRequest] params
    # @option params [String] :id
    #   The ID of the OriginEndpoint.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     channel_id: "__string",
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           url: "__string",
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     created_at: "__string",
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_iframe_only_stream: false,
    #       manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #       utc_timing_uri: "__string"
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string",
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     startover_window_seconds: 1,
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     time_delay_seconds: 1,
    #     url: "__string",
    #     whitelist: ["__string"]
    #   }
    # @return [Types::DescribeOriginEndpointResponse]
    def describe_origin_endpoint(params = {}, options = {})
      request = build_request(:describe_origin_endpoint, params)
      request.send_request(options)
    end

    # Returns a collection of Channels.
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         arn: "__string",
    #         created_at: "__string",
    #         description: "__string",
    #         egress_access_logs: {
    #           log_group_name: "__string"
    #         },
    #         hls_ingest: {
    #           ingest_endpoints: [
    #             {
    #               id: "__string",
    #               password: "SensitiveString",
    #               url: "__string",
    #               username: "SensitiveString"
    #             }
    #           ]
    #         },
    #         id: "__string",
    #         ingress_access_logs: {
    #           log_group_name: "__string"
    #         },
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # Returns a collection of HarvestJob records.
    # @param [Hash, Types::ListHarvestJobsRequest] params
    # @option params [String] :include_channel_id
    #   When specified, the request will return only HarvestJobs associated with the given Channel ID.
    # @option params [String] :include_status
    #   When specified, the request will return only HarvestJobs in the given status.
    # @option params [Integer] :max_results
    #   The upper bound on the number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @example Request syntax with placeholder values
    #   params = {
    #     include_channel_id: "__string",
    #     include_status: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_harvest_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harvest_jobs: [
    #       {
    #         arn: "__string",
    #         channel_id: "__string",
    #         created_at: "__string",
    #         end_time: "__string",
    #         id: "__string",
    #         origin_endpoint_id: "__string",
    #         s3_destination: {
    #           bucket_name: "__string", # required
    #           manifest_key: "__string", # required
    #           role_arn: "__string", # required
    #         },
    #         start_time: "__string",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListHarvestJobsResponse]
    def list_harvest_jobs(params = {}, options = {})
      request = build_request(:list_harvest_jobs, params)
      request.send_request(options)
    end

    # Returns a collection of OriginEndpoint records.
    # @param [Hash, Types::ListOriginEndpointsRequest] params
    # @option params [String] :channel_id
    #   When specified, the request will return only OriginEndpoints associated with the given Channel ID.
    # @option params [Integer] :max_results
    #   The upper bound on the number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_id: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_origin_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     origin_endpoints: [
    #       {
    #         arn: "__string",
    #         authorization: {
    #           cdn_identifier_secret: "__string", # required
    #           secrets_role_arn: "__string", # required
    #         },
    #         channel_id: "__string",
    #         cmaf_package: {
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               certificate_arn: "__string",
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           hls_manifests: [
    #             {
    #               ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #               id: "__string", # required
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #               playlist_window_seconds: 1,
    #               program_date_time_interval_seconds: 1,
    #               url: "__string",
    #               ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #               ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #             }
    #           ],
    #           segment_duration_seconds: 1,
    #           segment_prefix: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         },
    #         created_at: "__string",
    #         dash_package: {
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #           encryption: {
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               certificate_arn: "__string",
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           include_iframe_only_stream: false,
    #           manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           period_triggers: ["ADS" # One of: ["ADS"]],
    #           profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #           segment_duration_seconds: 1,
    #           segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           },
    #           suggested_presentation_delay_seconds: 1,
    #           utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #           utc_timing_uri: "__string"
    #         },
    #         description: "__string",
    #         hls_package: {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #             key_rotation_interval_seconds: 1,
    #             repeat_ext_x_key: false,
    #             speke_key_provider: { # required
    #               certificate_arn: "__string",
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           include_dvb_subtitles: false,
    #           include_iframe_only_stream: false,
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           },
    #           use_audio_rendition_group: false
    #         },
    #         id: "__string",
    #         manifest_name: "__string",
    #         mss_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               certificate_arn: "__string",
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           manifest_window_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         },
    #         origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #         startover_window_seconds: 1,
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         time_delay_seconds: 1,
    #         url: "__string",
    #         whitelist: ["__string"]
    #       }
    #     ]
    #   }
    # @return [Types::ListOriginEndpointsResponse]
    def list_origin_endpoints(params = {}, options = {})
      request = build_request(:list_origin_endpoints, params)
      request.send_request(options)
    end

    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    # @param [Hash, Types::RotateChannelCredentialsRequest] params
    # @option params [String] :id
    #   The ID of the channel to update.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.rotate_channel_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @deprecated
    #   This API is deprecated. Please use RotateIngestEndpointCredentials instead
    # @return [Types::RotateChannelCredentialsResponse]
    def rotate_channel_credentials(params = {}, options = {})
      request = build_request(:rotate_channel_credentials, params)
      request.send_request(options)
    end

    # Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    # @param [Hash, Types::RotateIngestEndpointCredentialsRequest] params
    # @option params [String] :id
    #   The ID of the channel the IngestEndpoint is on.
    # @option params [String] :ingest_endpoint_id
    #   The id of the IngestEndpoint whose credentials should be rotated
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #     ingest_endpoint_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.rotate_ingest_endpoint_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::RotateIngestEndpointCredentialsResponse]
    def rotate_ingest_endpoint_credentials(params = {}, options = {})
      request = build_request(:rotate_ingest_endpoint_credentials, params)
      request.send_request(options)
    end

    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    # @option params [Hash<String, String>] :tags
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
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

    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    # @option params [Array<String>] :tag_keys
    #   The key(s) of tag to be deleted
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # Updates an existing Channel.
    # @param [Hash, Types::UpdateChannelRequest] params
    # @option params [String] :description
    #   A short text description of the Channel.
    # @option params [String] :id
    #   The ID of the Channel to update.
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__string",
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     description: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     hls_ingest: {
    #       ingest_endpoints: [
    #         {
    #           id: "__string",
    #           password: "SensitiveString",
    #           url: "__string",
    #           username: "SensitiveString"
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     ingress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateChannelResponse]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # Updates an existing OriginEndpoint.
    # @param [Hash, Types::UpdateOriginEndpointRequest] params
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    # @option params [String] :description
    #   A short text description of the OriginEndpoint.
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    # @option params [String] :id
    #   The ID of the OriginEndpoint to update.
    # @option params [String] :manifest_name
    #   A short string that will be appended to the end of the Endpoint URL.
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    # @option params [String] :origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    # @option params [Integer] :startover_window_seconds
    #   Maximum duration (in seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    # @option params [Integer] :time_delay_seconds
    #   Amount of delay (in seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    # @option params [Array<String>] :whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    # @example Request syntax with placeholder values
    #   params = {
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_iframe_only_stream: false,
    #       manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #       utc_timing_uri: "__string"
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     startover_window_seconds: 1,
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"]
    #   }
    #   options = {}
    #   response = client.update_origin_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     channel_id: "__string",
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "SAMPLE_AES" # One of: ["SAMPLE_AES", "AES_CTR"],
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           url: "__string",
    #           ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #           ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     created_at: "__string",
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_iframe_only_stream: false,
    #       manifest_layout: "FULL" # One of: ["FULL", "COMPACT", "DRM_TOP_LEVEL_COMPACT"],
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       profile: "NONE" # One of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"],
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE" # One of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"],
    #       utc_timing_uri: "__string"
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"],
    #       ad_triggers: ["SPLICE_INSERT" # One of: ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]],
    #       ads_on_delivery_restrictions: "NONE" # One of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"],
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE" # One of: ["NONE", "EVENT", "VOD"],
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       },
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string",
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     origination: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     startover_window_seconds: 1,
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     time_delay_seconds: 1,
    #     url: "__string",
    #     whitelist: ["__string"]
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
      context[:gem_name] = 'aws-sdk-mediapackage'
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
