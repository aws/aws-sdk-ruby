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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotsitewise)

module Aws::IoTSiteWise
  # An API client for Aws::IoTSiteWise.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIoTSiteWise
    @identifier = :iotsitewise

    add_plugin(::Aws::IoTSiteWise::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTSiteWise::EndpointProvider)
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

    # <p>Associates a child asset with the given parent asset through a hierarchy defined in the
    #       parent asset's model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html">Associating assets</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::AssociateAssetsRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the parent asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow
    #         different groupings of assets to be formed that all come from the same asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :child_asset_id
    #   <p>The ID of the child asset to be associated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID", # required
    #     child_asset_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_assets(params = {}, options = {})
      request = build_request(:associate_assets, params)
      request.send_request(options)
    end

    # <p>Associates a time series (data stream) with an asset property.</p>
    # @param [Hash, Types::AssociateTimeSeriesToAssetPropertyRequest] params
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "PropertyAlias", # required
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_time_series_to_asset_property(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_time_series_to_asset_property(params = {}, options = {})
      request = build_request(:associate_time_series_to_asset_property, params)
      request.send_request(options)
    end

    # <p>Associates a group (batch) of assets with an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::BatchAssociateProjectAssetsRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project to which to associate the assets.</p>
    # @option params [Array<String>] :asset_ids
    #   <p>The IDs of the assets to be associated to the project.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_associate_project_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         asset_id: "ID", # required
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE"], # required
    #         message: "AssetErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateProjectAssetsResponse]
    def batch_associate_project_assets(params = {}, options = {})
      request = build_request(:batch_associate_project_assets, params)
      request.send_request(options)
    end

    # <p>Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::BatchDisassociateProjectAssetsRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project from which to disassociate the assets.</p>
    # @option params [Array<String>] :asset_ids
    #   <p>The IDs of the assets to be disassociated from the project.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_disassociate_project_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         asset_id: "ID", # required
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE"], # required
    #         message: "AssetErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateProjectAssetsResponse]
    def batch_disassociate_project_assets(params = {}, options = {})
      request = build_request(:batch_disassociate_project_assets, params)
      request.send_request(options)
    end

    # <p>Gets aggregated values (for example, average, minimum, and maximum) for one or more asset
    #       properties. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates">Querying aggregates</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::BatchGetAssetPropertyAggregatesRequest] params
    # @option params [Array<Types::BatchGetAssetPropertyAggregatesEntry>] :entries
    #   <p>The list of asset property aggregate entries for the batch get request. You can specify up
    #         to 16 entries per request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         aggregate_types: ["AVERAGE" # One of: ["AVERAGE", "COUNT", "MAXIMUM", "MINIMUM", "SUM", "STANDARD_DEVIATION"]], # required
    #         resolution: "Resolution", # required
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         qualities: ["GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]],
    #         time_ordering: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.batch_get_asset_property_aggregates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [ # required
    #       {
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #         error_message: "ErrorMessage", # required
    #         entry_id: "EntryId", # required
    #       }
    #     ],
    #     success_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         aggregated_values: [ # required
    #           {
    #             timestamp: Time.now, # required
    #             quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"],
    #             value: { # required
    #               average: 1.0,
    #               count: 1.0,
    #               maximum: 1.0,
    #               minimum: 1.0,
    #               sum: 1.0,
    #               standard_deviation: 1.0
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     skipped_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         completion_status: "SUCCESS" # One of: ["SUCCESS", "ERROR"], # required
    #         error_info: {
    #           error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #           error_timestamp: Time.now, # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::BatchGetAssetPropertyAggregatesResponse]
    def batch_get_asset_property_aggregates(params = {}, options = {})
      request = build_request(:batch_get_asset_property_aggregates, params)
      request.send_request(options)
    end

    # <p>Gets the current value for one or more asset properties. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values">Querying
    #         current values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::BatchGetAssetPropertyValueRequest] params
    # @option params [Array<Types::BatchGetAssetPropertyValueEntry>] :entries
    #   <p>The list of asset property value entries for the batch get request. You can specify up to
    #         128 entries per request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.batch_get_asset_property_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [ # required
    #       {
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #         error_message: "ErrorMessage", # required
    #         entry_id: "EntryId", # required
    #       }
    #     ],
    #     success_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_property_value: {
    #           value: { # required
    #             string_value: "PropertyValueStringValue",
    #             integer_value: 1,
    #             double_value: 1.0,
    #             boolean_value: false,
    #             null_value: {
    #               value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #             }
    #           },
    #           timestamp: { # required
    #             time_in_seconds: 1, # required
    #             offset_in_nanos: 1
    #           },
    #           quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]
    #         }
    #       }
    #     ],
    #     skipped_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         completion_status: "SUCCESS" # One of: ["SUCCESS", "ERROR"], # required
    #         error_info: {
    #           error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #           error_timestamp: Time.now, # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::BatchGetAssetPropertyValueResponse]
    def batch_get_asset_property_value(params = {}, options = {})
      request = build_request(:batch_get_asset_property_value, params)
      request.send_request(options)
    end

    # <p>Gets the historical values for one or more asset properties. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values">Querying historical values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::BatchGetAssetPropertyValueHistoryRequest] params
    # @option params [Array<Types::BatchGetAssetPropertyValueHistoryEntry>] :entries
    #   <p>The list of asset property historical value entries for the batch get request. You can
    #         specify up to 16 entries per request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 4 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         qualities: ["GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]],
    #         time_ordering: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.batch_get_asset_property_value_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [ # required
    #       {
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #         error_message: "ErrorMessage", # required
    #         entry_id: "EntryId", # required
    #       }
    #     ],
    #     success_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_property_value_history: [ # required
    #           {
    #             value: { # required
    #               string_value: "PropertyValueStringValue",
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false,
    #               null_value: {
    #                 value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #               }
    #             },
    #             timestamp: { # required
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1
    #             },
    #             quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]
    #           }
    #         ]
    #       }
    #     ],
    #     skipped_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         completion_status: "SUCCESS" # One of: ["SUCCESS", "ERROR"], # required
    #         error_info: {
    #           error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"], # required
    #           error_timestamp: Time.now, # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::BatchGetAssetPropertyValueHistoryResponse]
    def batch_get_asset_property_value_history(params = {}, options = {})
      request = build_request(:batch_get_asset_property_value_history, params)
      request.send_request(options)
    end

    # <p>Sends a list of asset property values to IoT SiteWise. Each value is a timestamp-quality-value
    #       (TQV) data point. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html">Ingesting data using the API</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have a timestamp of no more
    #         than 7 days in the past and no more than 10 minutes in the future. IoT SiteWise rejects timestamps
    #         outside of the inclusive range of [-7 days, +10 minutes] and returns a
    #           <code>TimestampOutOfRangeException</code> error.</p>
    #             <p>For each asset property, IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer
    #         TQV has a different quality. For example, if you store a TQV <code>{T1, GOOD, V1}</code>,
    #         then storing <code>{T1, GOOD, V2}</code> replaces the existing TQV.</p>
    #          </important>
    #          <p>IoT SiteWise authorizes access to each <code>BatchPutAssetPropertyValue</code> entry individually.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action">BatchPutAssetPropertyValue authorization</a> in the
    #       <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::BatchPutAssetPropertyValueRequest] params
    # @option params [Boolean] :enable_partial_entry_processing
    #   <p>This setting enables partial ingestion at entry-level. If set to <code>true</code>, we
    #         ingest all TQVs not resulting in an error. If set to <code>false</code>, an invalid TQV fails
    #         ingestion of the entire entry that contains it.</p>
    # @option params [Array<Types::PutAssetPropertyValueEntry>] :entries
    #   <p>The list of asset property value entries for the batch put request. You can specify up to
    #         10 entries per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enable_partial_entry_processing: false,
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         property_values: [ # required
    #           {
    #             value: { # required
    #               string_value: "PropertyValueStringValue",
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false,
    #               null_value: {
    #                 value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #               }
    #             },
    #             timestamp: { # required
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1
    #             },
    #             quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_asset_property_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         errors: [ # required
    #           {
    #             error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException", "LimitExceededException", "ConflictingOperationException", "TimestampOutOfRangeException", "AccessDeniedException"], # required
    #             error_message: "ErrorMessage", # required
    #             timestamps: [ # required
    #               {
    #                 time_in_seconds: 1, # required
    #                 offset_in_nanos: 1
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutAssetPropertyValueResponse]
    def batch_put_asset_property_value(params = {}, options = {})
      request = build_request(:batch_put_asset_property_value, params)
      request.send_request(options)
    end

    # <p>Creates an access policy that grants the specified identity (IAM Identity Center user, IAM Identity Center group, or
    #       IAM user) access to the specified IoT SiteWise Monitor portal or project resource.</p>
    #          <note>
    #             <p>Support for access policies that use an SSO Group as the identity is not supported at this time.</p>
    #          </note>
    # @param [Hash, Types::CreateAccessPolicyRequest] params
    # @option params [Types::Identity] :access_policy_identity
    #   <p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>
    # @option params [Types::Resource] :access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    # @option params [String] :access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "IamArn", # required
    #       },
    #       iam_role: {
    #         arn: "IamArn", # required
    #       }
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       }
    #     },
    #     access_policy_permission: "ADMINISTRATOR" # One of: ["ADMINISTRATOR", "VIEWER"], # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_id: "ID", # required
    #     access_policy_arn: "ARN", # required
    #   }
    # @return [Types::CreateAccessPolicyResponse]
    def create_access_policy(params = {}, options = {})
      request = build_request(:create_access_policy, params)
      request.send_request(options)
    end

    # <p>Creates an asset from an existing asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html">Creating assets</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::CreateAssetRequest] params
    # @option params [String] :asset_name
    #   <p>A friendly name for the asset.</p>
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model from which to create the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_id
    #   <p>The ID to assign to the asset, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    # @option params [String] :asset_external_id
    #   <p>An external ID to assign to the asset. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_description
    #   <p>A description for the asset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_name: "Name", # required
    #     asset_model_id: "CustomID", # required
    #     asset_id: "ID",
    #     asset_external_id: "ExternalId",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     asset_description: "Description"
    #   }
    #   options = {}
    #   response = client.create_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_id: "ID", # required
    #     asset_arn: "ARN", # required
    #     asset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateAssetResponse]
    def create_asset(params = {}, options = {})
      request = build_request(:create_asset, params)
      request.send_request(options)
    end

    # <p>Creates an asset model from specified property and hierarchy definitions. You create
    #       assets from asset models. With asset models, you can easily create assets of the same type
    #       that have standardized definitions. Each asset created from a model inherits the asset model's
    #       property and hierarchy definitions. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html">Defining asset models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <p>You can create three types of asset models, <code>ASSET_MODEL</code>,
    #         <code>COMPONENT_MODEL</code>, or an <code>INTERFACE</code>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>ASSET_MODEL</b> – (default) An asset model that
    #           you can use to create assets. Can't be included as a component in another asset
    #           model.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>COMPONENT_MODEL</b> – A reusable component that
    #           you can include in the composite models of other asset models. You can't create
    #           assets directly from this type of asset model. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>INTERFACE</b> – An interface is a type of model
    #           that defines a standard structure that can be applied to different asset models.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateAssetModelRequest] params
    # @option params [String] :asset_model_name
    #   <p>A unique name for the asset model.</p>
    # @option params [String] :asset_model_type
    #   <p>The type of asset model.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.
    #      Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite
    #      models of other asset models. You can't create assets directly from this type of asset model. </p>
    #               </li>
    #            </ul>
    # @option params [String] :asset_model_id
    #   <p>The ID to assign to the asset model, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    # @option params [String] :asset_model_external_id
    #   <p>An external ID to assign to the asset model. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_model_description
    #   <p>A description for the asset model.</p>
    # @option params [Array<Types::AssetModelPropertyDefinition>] :asset_model_properties
    #   <p>The property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Array<Types::AssetModelHierarchyDefinition>] :asset_model_hierarchies
    #   <p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model
    #         whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Array<Types::AssetModelCompositeModelDefinition>] :asset_model_composite_models
    #   <p>The composite models that are part of this asset model. It groups properties
    #     (such as attributes, measurements, transforms, and metrics) and child composite models that
    #         model parts of your industrial equipment. Each composite model has a type that defines the
    #         properties that the composite model supports. Use composite models to define alarms on this asset model.</p>
    #            <note>
    #               <p>When creating custom composite models, you need to use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">CreateAssetModelCompositeModel</a>. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html">Creating custom composite models (Components)</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the asset model. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_name: "Name", # required
    #     asset_model_type: "ASSET_MODEL" # One of: ["ASSET_MODEL", "COMPONENT_MODEL", "INTERFACE"],
    #     asset_model_id: "ID",
    #     asset_model_external_id: "ExternalId",
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         child_asset_model_id: "CustomID", # required
    #       }
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [
    #           {
    #             id: "ID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue"
    #               },
    #               measurement: {
    #                 processing_config: {
    #                   forwarding_config: { # required
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                   forwarding_config: {
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               metric: {
    #                 expression: "Expression",
    #                 variables: [
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                     offset: "Offset"
    #                   }
    #                 },
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                 }
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_asset_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     asset_model_arn: "ARN", # required
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateAssetModelResponse]
    def create_asset_model(params = {}, options = {})
      request = build_request(:create_asset_model, params)
      request.send_request(options)
    end

    # <p>Creates a custom composite model from specified property and hierarchy definitions. There
    #       are two types of custom composite models, <code>inline</code> and
    #         <code>component-model-based</code>. </p>
    #          <p>Use component-model-based custom composite models to define standard, reusable components.
    #       A component-model-based custom composite model consists of a name, a description, and the ID
    #       of the component model it references. A component-model-based custom composite model has no
    #       properties of its own; its referenced component model provides its associated properties to
    #       any created assets. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html">Custom composite models (Components)</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>Use inline custom composite models to organize the properties of an asset model. The
    #       properties of inline custom composite models are local to the asset model where they are
    #       included and can't be used to create multiple assets.</p>
    #          <p>To create a component-model-based model, specify the <code>composedAssetModelId</code> of
    #       an existing asset model with <code>assetModelType</code> of
    #       <code>COMPONENT_MODEL</code>.</p>
    #          <p>To create an inline model, specify the <code>assetModelCompositeModelProperties</code> and
    #       don't include an <code>composedAssetModelId</code>.</p>
    # @param [Hash, Types::CreateAssetModelCompositeModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model this composite model is a part of.</p>
    # @option params [String] :asset_model_composite_model_external_id
    #   <p>An external ID to assign to the composite model.</p>
    #            <p>If the composite model is a derived composite model, or one nested inside a component
    #         model, you can only set the external ID using <code>UpdateAssetModelCompositeModel</code> and
    #         specifying the derived ID of the model or property from the created model it's a part
    #         of.</p>
    # @option params [String] :parent_asset_model_composite_model_id
    #   <p>The ID of the parent composite model in this asset model relationship.</p>
    # @option params [String] :asset_model_composite_model_id
    #   <p>The ID of the composite model. IoT SiteWise automatically generates a unique ID for you, so this
    #         parameter is never required. However, if you prefer to supply your own ID instead, you can
    #         specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>
    # @option params [String] :asset_model_composite_model_description
    #   <p>A description for the composite model.</p>
    # @option params [String] :asset_model_composite_model_name
    #   <p>A unique name for the composite model.</p>
    # @option params [String] :asset_model_composite_model_type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or <code> AWS/L4E_ANOMALY</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :composed_asset_model_id
    #   <p>The ID of a component model which is reused to create this composite model.</p>
    # @option params [Array<Types::AssetModelPropertyDefinition>] :asset_model_composite_model_properties
    #   <p>The property definitions of the composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models">
    #           Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per composite model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The create request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_none_match
    #   <p>Accepts <b>*</b> to reject the create request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    # @option params [String] :match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the create operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_external_id: "ExternalId",
    #     parent_asset_model_composite_model_id: "CustomID",
    #     asset_model_composite_model_id: "ID",
    #     asset_model_composite_model_description: "Description",
    #     asset_model_composite_model_name: "Name", # required
    #     asset_model_composite_model_type: "Name", # required
    #     client_token: "ClientToken",
    #     composed_asset_model_id: "CustomID",
    #     asset_model_composite_model_properties: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST" # One of: ["LATEST", "ACTIVE"]
    #   }
    #   options = {}
    #   response = client.create_asset_model_composite_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_composite_model_id: "ID", # required
    #     asset_model_composite_model_path: [ # required
    #       {
    #         id: "ID",
    #         name: "Name"
    #       }
    #     ],
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateAssetModelCompositeModelResponse]
    def create_asset_model_composite_model(params = {}, options = {})
      request = build_request(:create_asset_model_composite_model, params)
      request.send_request(options)
    end

    # <p>Defines a job to ingest data to IoT SiteWise from Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html">Create a
    #         bulk import job (CLI)</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #          <important>
    #             <p>Before you create a bulk import job, you must enable IoT SiteWise warm tier or IoT SiteWise cold tier.
    #         For more information about how to configure storage settings, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html">PutStorageConfiguration</a>.</p>
    #             <p>Bulk import is designed to store historical data to IoT SiteWise.</p>
    #             <ul>
    #                <li>
    #                   <p>Newly ingested data in the hot tier triggers notifications and computations.</p>
    #                </li>
    #                <li>
    #                   <p>After data moves from the hot tier to the warm or cold tier based on retention
    #             settings, it does not trigger computations or notifications.</p>
    #                </li>
    #                <li>
    #                   <p>Data older than 7 days does not trigger computations or notifications.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::CreateBulkImportJobRequest] params
    # @option params [String] :job_name
    #   <p>The unique name that helps identify the job request.</p>
    # @option params [String] :job_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>
    # @option params [Array<Types::File>] :files
    #   <p>The files in the specified Amazon S3 bucket that contain your data.</p>
    # @option params [Types::ErrorReportLocation] :error_report_location
    #   <p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>
    # @option params [Types::JobConfiguration] :job_configuration
    #   <p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>
    # @option params [Boolean] :adaptive_ingestion
    #   <p>If set to true, ingest new data into IoT SiteWise storage. Measurements with notifications, metrics and transforms are 
    #      computed. If set to false, historical data is ingested into IoT SiteWise as is.</p>
    # @option params [Boolean] :delete_files_after_import
    #   <p>If set to true, your data files is deleted from S3, after ingestion into IoT SiteWise storage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "Name", # required
    #     job_role_arn: "ARN", # required
    #     files: [ # required
    #       {
    #         bucket: "Bucket", # required
    #         key: "String", # required
    #         version_id: "String"
    #       }
    #     ],
    #     error_report_location: { # required
    #       bucket: "Bucket", # required
    #       prefix: "String", # required
    #     },
    #     job_configuration: { # required
    #       file_format: { # required
    #         csv: {
    #           column_names: ["ALIAS" # One of: ["ALIAS", "ASSET_ID", "PROPERTY_ID", "DATA_TYPE", "TIMESTAMP_SECONDS", "TIMESTAMP_NANO_OFFSET", "QUALITY", "VALUE"]], # required
    #         },
    #         parquet: {
    #         }
    #       }
    #     },
    #     adaptive_ingestion: false,
    #     delete_files_after_import: false
    #   }
    #   options = {}
    #   response = client.create_bulk_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "ID", # required
    #     job_name: "Name", # required
    #     job_status: "PENDING" # One of: ["PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"], # required
    #   }
    # @return [Types::CreateBulkImportJobResponse]
    def create_bulk_import_job(params = {}, options = {})
      request = build_request(:create_bulk_import_job, params)
      request.send_request(options)
    end

    # <p>Create a computation model with a configuration and data binding.</p>
    # @param [Hash, Types::CreateComputationModelRequest] params
    # @option params [String] :computation_model_name
    #   <p>The name of the computation model.</p>
    # @option params [String] :computation_model_description
    #   <p>The description of the computation model.</p>
    # @option params [Types::ComputationModelConfiguration] :computation_model_configuration
    #   <p>The configuration for the computation model.</p>
    # @option params [Hash<String, Types::ComputationModelDataBindingValue>] :computation_model_data_binding
    #   <p>The data binding for the computation model. Key is a variable name defined in configuration. 
    #     Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_name: "RestrictedName", # required
    #     computation_model_description: "RestrictedDescription",
    #     computation_model_configuration: { # required
    #       anomaly_detection: {
    #         input_properties: "InputProperties", # required
    #         result_property: "ResultProperty", # required
    #       }
    #     },
    #     computation_model_data_binding: { # required
    #       "ComputationModelDataBindingVariable" => {
    #         asset_model_property: {
    #           asset_model_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         asset_property: {
    #           asset_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         list: [
    #           {
    #             # recursive ComputationModelDataBindingValue
    #           }
    #         ]
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_computation_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_id: "ID", # required
    #     computation_model_arn: "ARN", # required
    #     computation_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateComputationModelResponse]
    def create_computation_model(params = {}, options = {})
      request = build_request(:create_computation_model, params)
      request.send_request(options)
    end

    # <p>Creates a dashboard in an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::CreateDashboardRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project in which to create the dashboard.</p>
    # @option params [String] :dashboard_name
    #   <p>A friendly name for the dashboard.</p>
    # @option params [String] :dashboard_description
    #   <p>A description for the dashboard.</p>
    # @option params [String] :dashboard_definition
    #   <p>The dashboard definition specified in a JSON literal.</p>
    #            <ul>
    #               <li>
    #                  <p>IoT SiteWise Monitor (Classic) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>IoT SiteWise Monitor (AI-aware) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>in the <i>IoT SiteWise User Guide</i>
    #            </p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the dashboard. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_id: "ID", # required
    #     dashboard_arn: "ARN", # required
    #   }
    # @return [Types::CreateDashboardResponse]
    def create_dashboard(params = {}, options = {})
      request = build_request(:create_dashboard, params)
      request.send_request(options)
    end

    # <p>Creates a dataset to connect an external datasource.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p>The ID of the dataset.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    # @option params [String] :dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    # @option params [Types::DatasetSource] :dataset_source
    #   <p>The data source for the dataset.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "ID",
    #     dataset_name: "RestrictedName", # required
    #     dataset_description: "RestrictedDescription",
    #     dataset_source: { # required
    #       source_type: "KENDRA" # One of: ["KENDRA"], # required
    #       source_format: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE"], # required
    #       source_detail: {
    #         kendra: {
    #           knowledge_base_arn: "ARN", # required
    #           role_arn: "ARN", # required
    #         }
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "ID", # required
    #     dataset_arn: "ARN", # required
    #     dataset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a gateway, which is a virtual or edge device that delivers industrial data streams
    #       from local servers to IoT SiteWise. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html">Ingesting data using a gateway</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::CreateGatewayRequest] params
    # @option params [String] :gateway_name
    #   <p>A unique name for the gateway.</p>
    # @option params [Types::GatewayPlatform] :gateway_platform
    #   <p>The gateway's platform. You can only specify one platform in a gateway.</p>
    # @option params [String] :gateway_version
    #   <p>The version of the gateway to create. Specify <code>3</code> to create an MQTT-enabled, V3
    #         gateway and <code>2</code> to create a Classic streams, V2 gateway. If not specified, the
    #         default is <code>2</code> (Classic streams, V2 gateway).</p>
    #            <note>
    #               <p>When creating a V3 gateway (<code>gatewayVersion=3</code>) with the
    #             <code>GreengrassV2</code> platform, you must also specify the
    #             <code>coreDeviceOperatingSystem</code> parameter.</p>
    #            </note>
    #            <p> We recommend creating an MQTT-enabled gateway for self-hosted gateways and Siemens
    #         Industrial Edge gateways. For more information on gateway versions, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateways.html">Use Amazon Web Services IoT SiteWise Edge Edge
    #           gateways</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the gateway. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_name: "GatewayName", # required
    #     gateway_platform: { # required
    #       greengrass: {
    #         group_arn: "ARN", # required
    #       },
    #       greengrass_v2: {
    #         core_device_thing_name: "CoreDeviceThingName", # required
    #         core_device_operating_system: "LINUX_AARCH64" # One of: ["LINUX_AARCH64", "LINUX_AMD64", "WINDOWS_AMD64"]
    #       },
    #       siemens_ie: {
    #         iot_core_thing_name: "IotCoreThingName", # required
    #       }
    #     },
    #     gateway_version: "GatewayVersion",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "ID", # required
    #     gateway_arn: "ARN", # required
    #   }
    # @return [Types::CreateGatewayResponse]
    def create_gateway(params = {}, options = {})
      request = build_request(:create_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a portal, which can contain projects and dashboards. IoT SiteWise Monitor uses IAM Identity Center or IAM
    #       to authenticate portal users and manage user permissions.</p>
    #          <note>
    #             <p>Before you can sign in to a new portal, you must add at least one identity to that
    #         portal. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins">Adding or removing portal
    #           administrators</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreatePortalRequest] params
    # @option params [String] :portal_name
    #   <p>A friendly name for the portal.</p>
    # @option params [String] :portal_description
    #   <p>A description for the portal.</p>
    # @option params [String] :portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Types::ImageFile] :portal_logo_image_file
    #   <p>A logo image to display in the portal. Upload a square, high-resolution image. The
    #         image is displayed on a dark background.</p>
    # @option params [String] :role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the portal. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :portal_auth_mode
    #   <p>The service to use to authenticate users to the portal. Choose from the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSO</code> – The portal uses IAM Identity Center to authenticate users and manage
    #             user permissions. Before you can create a portal that uses IAM Identity Center, you must enable IAM Identity Center.
    #             For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso">Enabling IAM Identity Center</a> in the
    #               <i>IoT SiteWise User Guide</i>. This option is only available in Amazon Web Services Regions other than
    #             the China Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> – The portal uses Identity and Access Management to authenticate users and manage
    #             user permissions.</p>
    #               </li>
    #            </ul>
    #            <p>You can't change this value after you create a portal.</p>
    #            <p>Default: <code>SSO</code>
    #            </p>
    # @option params [String] :notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #            <important>
    #               <p>If you use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">IoT Events managed Lambda
    #             function</a> to manage your emails, you must <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">verify the sender email
    #             address in Amazon SES</a>.</p>
    #            </important>
    # @option params [Types::Alarms] :alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    # @option params [String] :portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    # @option params [Hash<String, Types::PortalTypeEntry>] :portal_type_configuration
    #   <p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     client_token: "ClientToken",
    #     portal_logo_image_file: {
    #       data: "data", # required
    #       type: "PNG" # One of: ["PNG"], # required
    #     },
    #     role_arn: "IamArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     portal_auth_mode: "IAM" # One of: ["IAM", "SSO"],
    #     notification_sender_email: "Email",
    #     alarms: {
    #       alarm_role_arn: "IamArn", # required
    #       notification_lambda_arn: "ARN"
    #     },
    #     portal_type: "SITEWISE_PORTAL_V1" # One of: ["SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"],
    #     portal_type_configuration: {
    #       "PortalTypeKey" => {
    #         portal_tools: ["Name"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_id: "ID", # required
    #     portal_arn: "ARN", # required
    #     portal_start_url: "Url", # required
    #     portal_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"], # required
    #       error: {
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"],
    #         message: "MonitorErrorMessage"
    #       }
    #     },
    #     sso_application_id: "SSOApplicationId", # required
    #   }
    # @return [Types::CreatePortalResponse]
    def create_portal(params = {}, options = {})
      request = build_request(:create_portal, params)
      request.send_request(options)
    end

    # <p>Creates a project in the specified portal.</p>
    #          <note>
    #             <p>Make sure that the project name and description don't contain confidential
    #         information.</p>
    #          </note>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the portal in which to create the project.</p>
    # @option params [String] :project_name
    #   <p>A friendly name for the project.</p>
    # @option params [String] :project_description
    #   <p>A description for the project.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the project. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_id: "ID", # required
    #     project_arn: "ARN", # required
    #   }
    # @return [Types::CreateProjectResponse]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Deletes an access policy that grants the specified identity access to the specified
    #       IoT SiteWise Monitor resource. You can use this operation to revoke access to an IoT SiteWise Monitor
    #       resource.</p>
    # @param [Hash, Types::DeleteAccessPolicyRequest] params
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy to be deleted.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_policy_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessPolicyResponse]
    def delete_access_policy(params = {}, options = {})
      request = build_request(:delete_access_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an asset. This action can't be undone. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting assets and
    #         models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <note>
    #             <p>You can't delete an asset that's associated to another asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html">DisassociateAssets</a>.</p>
    #          </note>
    # @param [Hash, Types::DeleteAssetRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteAssetResponse]
    def delete_asset(params = {}, options = {})
      request = build_request(:delete_asset, params)
      request.send_request(options)
    end

    # <p>Deletes an asset model. This action can't be undone. You must delete all assets created
    #       from an asset model before you can delete the model. Also, you can't delete an asset model if
    #       a parent asset model exists that contains a property formula expression that depends on the
    #       asset model that you want to delete. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::DeleteAssetModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The delete request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_none_match
    #   <p>Accepts <b>*</b> to reject the delete request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    # @option params [String] :match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST" # One of: ["LATEST", "ACTIVE"]
    #   }
    #   options = {}
    #   response = client.delete_asset_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteAssetModelResponse]
    def delete_asset_model(params = {}, options = {})
      request = build_request(:delete_asset_model, params)
      request.send_request(options)
    end

    # <p>Deletes a composite model. This action can't be undone. You must delete all assets created
    #       from a composite model before you can delete the model. Also, you can't delete a composite
    #       model if a parent asset model exists that contains a property formula expression that depends
    #       on the asset model that you want to delete. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting assets and
    #         models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::DeleteAssetModelCompositeModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    # @option params [String] :asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The delete request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_none_match
    #   <p>Accepts <b>*</b> to reject the delete request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    # @option params [String] :match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST" # One of: ["LATEST", "ACTIVE"]
    #   }
    #   options = {}
    #   response = client.delete_asset_model_composite_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteAssetModelCompositeModelResponse]
    def delete_asset_model_composite_model(params = {}, options = {})
      request = build_request(:delete_asset_model_composite_model, params)
      request.send_request(options)
    end

    # <p>Deletes an interface relationship between an asset model and an interface asset
    #       model.</p>
    # @param [Hash, Types::DeleteAssetModelInterfaceRelationshipRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    # @option params [String] :interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     interface_asset_model_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_asset_model_interface_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     interface_asset_model_id: "ID", # required
    #     asset_model_arn: "ARN", # required
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteAssetModelInterfaceRelationshipResponse]
    def delete_asset_model_interface_relationship(params = {}, options = {})
      request = build_request(:delete_asset_model_interface_relationship, params)
      request.send_request(options)
    end

    # <p>Deletes a computation model. This action can't be undone.</p>
    # @param [Hash, Types::DeleteComputationModelRequest] params
    # @option params [String] :computation_model_id
    #   <p>The ID of the computation model.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_computation_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteComputationModelResponse]
    def delete_computation_model(params = {}, options = {})
      request = build_request(:delete_computation_model, params)
      request.send_request(options)
    end

    # <p>Deletes a dashboard from IoT SiteWise Monitor.</p>
    # @param [Hash, Types::DeleteDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDashboardResponse]
    def delete_dashboard(params = {}, options = {})
      request = build_request(:delete_dashboard, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset. This cannot be undone.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p>The ID of the dataset.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway from IoT SiteWise. When you delete a gateway, some of the gateway's files remain
    #       in your gateway's file system.</p>
    # @param [Hash, Types::DeleteGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_gateway(params = {}, options = {})
      request = build_request(:delete_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a portal from IoT SiteWise Monitor.</p>
    # @param [Hash, Types::DeletePortalRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the portal to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"], # required
    #       error: {
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"],
    #         message: "MonitorErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeletePortalResponse]
    def delete_portal(params = {}, options = {})
      request = build_request(:delete_portal, params)
      request.send_request(options)
    end

    # <p>Deletes a project from IoT SiteWise Monitor.</p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectResponse]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes a time series (data stream). If you delete a time series that's associated with an
    #       asset property, the asset property still exists, but the time series will no longer be
    #       associated with this asset property.</p>
    #          <p>To identify a time series, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>If the time series isn't associated with an asset property,
    #           specify the <code>alias</code> of the time series.</p>
    #             </li>
    #             <li>
    #                <p>If the time series is associated with an asset property,
    #           specify one of the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The <code>alias</code> of the time series.</p>
    #                   </li>
    #                   <li>
    #                      <p>The <code>assetId</code> and <code>propertyId</code> that identifies the asset property.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteTimeSeriesRequest] params
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "PropertyAlias",
    #     asset_id: "CustomID",
    #     property_id: "CustomID",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_time_series(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_time_series(params = {}, options = {})
      request = build_request(:delete_time_series, params)
      request.send_request(options)
    end

    # <p>Describes an access policy, which specifies an identity's access to an IoT SiteWise Monitor portal or
    #       project.</p>
    # @param [Hash, Types::DescribeAccessPolicyRequest] params
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_policy_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_id: "ID", # required
    #     access_policy_arn: "ARN", # required
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "IamArn", # required
    #       },
    #       iam_role: {
    #         arn: "IamArn", # required
    #       }
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       }
    #     },
    #     access_policy_permission: "ADMINISTRATOR" # One of: ["ADMINISTRATOR", "VIEWER"], # required
    #     access_policy_creation_date: Time.now, # required
    #     access_policy_last_update_date: Time.now, # required
    #   }
    # @return [Types::DescribeAccessPolicyResponse]
    def describe_access_policy(params = {}, options = {})
      request = build_request(:describe_access_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an action.</p>
    # @param [Hash, Types::DescribeActionRequest] params
    # @option params [String] :action_id
    #   <p>The ID of the action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_id: "ID", # required
    #     target_resource: { # required
    #       asset_id: "ID",
    #       computation_model_id: "ID"
    #     },
    #     action_definition_id: "ID", # required
    #     action_payload: { # required
    #       string_value: "ActionPayloadString", # required
    #     },
    #     execution_time: Time.now, # required
    #     resolve_to: {
    #       asset_id: "ID", # required
    #     }
    #   }
    # @return [Types::DescribeActionResponse]
    def describe_action(params = {}, options = {})
      request = build_request(:describe_action, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an asset.</p>
    # @param [Hash, Types::DescribeAssetRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Boolean] :exclude_properties
    #   <p> Whether or not to exclude asset properties from the response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     exclude_properties: false
    #   }
    #   options = {}
    #   response = client.describe_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_id: "ID", # required
    #     asset_external_id: "ExternalId",
    #     asset_arn: "ARN", # required
    #     asset_name: "Name", # required
    #     asset_model_id: "ID", # required
    #     asset_properties: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         alias: "PropertyAlias",
    #         notification: {
    #           topic: "PropertyNotificationTopic", # required
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     asset_hierarchies: [ # required
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #       }
    #     ],
    #     asset_composite_models: [
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [ # required
    #           {
    #             id: "ID", # required
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             alias: "PropertyAlias",
    #             notification: {
    #               topic: "PropertyNotificationTopic", # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             },
    #             data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             path: [
    #               {
    #                 id: "ID",
    #                 name: "Name"
    #               }
    #             ]
    #           }
    #         ],
    #         id: "ID",
    #         external_id: "ExternalId"
    #       }
    #     ],
    #     asset_creation_date: Time.now, # required
    #     asset_last_update_date: Time.now, # required
    #     asset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     },
    #     asset_description: "Description",
    #     asset_composite_model_summaries: [
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         type: "Name", # required
    #         description: "Description", # required
    #         path: [ # required
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAssetResponse]
    def describe_asset(params = {}, options = {})
      request = build_request(:describe_asset, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an asset composite model (also known as an asset component).
    #       An <code>AssetCompositeModel</code> is an instance of an
    #       <code>AssetModelCompositeModel</code>. If you want to see information about the model this is
    #       based on, call <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html">DescribeAssetModelCompositeModel</a>.</p>
    # @param [Hash, Types::DescribeAssetCompositeModelRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_composite_model_id
    #   <p>The ID of a composite model on this asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     asset_composite_model_id: "CustomID", # required
    #   }
    #   options = {}
    #   response = client.describe_asset_composite_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_id: "ID", # required
    #     asset_composite_model_id: "ID", # required
    #     asset_composite_model_external_id: "ExternalId",
    #     asset_composite_model_path: [ # required
    #       {
    #         id: "ID",
    #         name: "Name"
    #       }
    #     ],
    #     asset_composite_model_name: "Name", # required
    #     asset_composite_model_description: "Description", # required
    #     asset_composite_model_type: "Name", # required
    #     asset_composite_model_properties: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         alias: "PropertyAlias",
    #         notification: {
    #           topic: "PropertyNotificationTopic", # required
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     asset_composite_model_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         type: "Name", # required
    #         description: "Description", # required
    #         path: [ # required
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     action_definitions: [
    #       {
    #         action_definition_id: "ID", # required
    #         action_name: "Name", # required
    #         action_type: "Name", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAssetCompositeModelResponse]
    def describe_asset_composite_model(params = {}, options = {})
      request = build_request(:describe_asset_composite_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an asset model. This includes details about the asset model's
    #       properties, hierarchies, composite models, and any interface relationships if the asset model
    #       implements interfaces.</p>
    # @param [Hash, Types::DescribeAssetModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Boolean] :exclude_properties
    #   <p> Whether or not to exclude asset model properties from the response. </p>
    # @option params [String] :asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     exclude_properties: false,
    #     asset_model_version: "AssetModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.describe_asset_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     asset_model_external_id: "ExternalId",
    #     asset_model_arn: "ARN", # required
    #     asset_model_name: "Name", # required
    #     asset_model_type: "ASSET_MODEL" # One of: ["ASSET_MODEL", "COMPONENT_MODEL", "INTERFACE"],
    #     asset_model_description: "Description", # required
    #     asset_model_properties: [ # required
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     asset_model_hierarchies: [ # required
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         child_asset_model_id: "CustomID", # required
    #       }
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [
    #           {
    #             id: "CustomID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue"
    #               },
    #               measurement: {
    #                 processing_config: {
    #                   forwarding_config: { # required
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                   forwarding_config: {
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               metric: {
    #                 expression: "Expression",
    #                 variables: [
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                     offset: "Offset"
    #                   }
    #                 },
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                 }
    #               }
    #             },
    #             path: [
    #               {
    #                 id: "ID",
    #                 name: "Name"
    #               }
    #             ]
    #           }
    #         ],
    #         id: "CustomID",
    #         external_id: "ExternalId"
    #       }
    #     ],
    #     asset_model_composite_model_summaries: [
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         type: "Name", # required
    #         description: "Description",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     asset_model_creation_date: Time.now, # required
    #     asset_model_last_update_date: Time.now, # required
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     },
    #     asset_model_version: "Version",
    #     interface_details: [
    #       {
    #         id: "ID", # required
    #       }
    #     ],
    #     e_tag: "ETag"
    #   }
    # @return [Types::DescribeAssetModelResponse]
    def describe_asset_model(params = {}, options = {})
      request = build_request(:describe_asset_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an asset model composite model (also known as an asset model
    #       component). For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html">Custom composite models
    #         (Components)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::DescribeAssetModelCompositeModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     asset_model_version: "AssetModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.describe_asset_model_composite_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     asset_model_composite_model_id: "ID", # required
    #     asset_model_composite_model_external_id: "ExternalId",
    #     asset_model_composite_model_path: [ # required
    #       {
    #         id: "ID",
    #         name: "Name"
    #       }
    #     ],
    #     asset_model_composite_model_name: "Name", # required
    #     asset_model_composite_model_description: "Description", # required
    #     asset_model_composite_model_type: "Name", # required
    #     asset_model_composite_model_properties: [ # required
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     composition_details: {
    #       composition_relationship: [
    #         {
    #           id: "ID"
    #         }
    #       ]
    #     },
    #     asset_model_composite_model_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         type: "Name", # required
    #         description: "Description",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     action_definitions: [
    #       {
    #         action_definition_id: "ID", # required
    #         action_name: "Name", # required
    #         action_type: "Name", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAssetModelCompositeModelResponse]
    def describe_asset_model_composite_model(params = {}, options = {})
      request = build_request(:describe_asset_model_composite_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an interface relationship between an asset model and an
    #       interface asset model.</p>
    # @param [Hash, Types::DescribeAssetModelInterfaceRelationshipRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    # @option params [String] :interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     interface_asset_model_id: "CustomID", # required
    #   }
    #   options = {}
    #   response = client.describe_asset_model_interface_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     interface_asset_model_id: "ID", # required
    #     property_mappings: [ # required
    #       {
    #         asset_model_property_id: "CustomID", # required
    #         interface_asset_model_property_id: "CustomID", # required
    #       }
    #     ],
    #     hierarchy_mappings: [ # required
    #       {
    #         asset_model_hierarchy_id: "ID", # required
    #         interface_asset_model_hierarchy_id: "ID", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAssetModelInterfaceRelationshipResponse]
    def describe_asset_model_interface_relationship(params = {}, options = {})
      request = build_request(:describe_asset_model_interface_relationship, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an asset property.</p>
    #          <note>
    #             <p>When you call this operation for an attribute property, this response includes the
    #         default attribute value that you define in the asset model. If you update the default value
    #         in the model, this operation's response includes the new default value.</p>
    #          </note>
    #          <p>This operation doesn't return the value of the asset property. To get the value of an
    #       asset property, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html">GetAssetPropertyValue</a>.</p>
    # @param [Hash, Types::DescribeAssetPropertyRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #   }
    #   options = {}
    #   response = client.describe_asset_property(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_id: "ID", # required
    #     asset_external_id: "ExternalId",
    #     asset_name: "Name", # required
    #     asset_model_id: "ID", # required
    #     asset_property: {
    #       id: "ID", # required
    #       external_id: "ExternalId",
    #       name: "Name", # required
    #       alias: "PropertyAlias",
    #       notification: {
    #         topic: "PropertyNotificationTopic", # required
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #       unit: "PropertyUnit",
    #       type: {
    #         attribute: {
    #           default_value: "DefaultValue"
    #         },
    #         measurement: {
    #           processing_config: {
    #             forwarding_config: { # required
    #               state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #             }
    #           }
    #         },
    #         transform: {
    #           expression: "Expression", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: { # required
    #                 property_id: "Macro",
    #                 hierarchy_id: "Macro",
    #                 property_path: [
    #                   {
    #                     id: "ID",
    #                     name: "Name"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           processing_config: {
    #             compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             forwarding_config: {
    #               state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #             }
    #           }
    #         },
    #         metric: {
    #           expression: "Expression",
    #           variables: [
    #             {
    #               name: "VariableName", # required
    #               value: { # required
    #                 property_id: "Macro",
    #                 hierarchy_id: "Macro",
    #                 property_path: [
    #                   {
    #                     id: "ID",
    #                     name: "Name"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           window: { # required
    #             tumbling: {
    #               interval: "Interval", # required
    #               offset: "Offset"
    #             }
    #           },
    #           processing_config: {
    #             compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #           }
    #         }
    #       },
    #       path: [
    #         {
    #           id: "ID",
    #           name: "Name"
    #         }
    #       ]
    #     },
    #     composite_model: {
    #       name: "Name", # required
    #       type: "Name", # required
    #       asset_property: { # required
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         alias: "PropertyAlias",
    #         notification: {
    #           topic: "PropertyNotificationTopic", # required
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         unit: "PropertyUnit",
    #         type: {
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       },
    #       id: "ID",
    #       external_id: "ExternalId"
    #     }
    #   }
    # @return [Types::DescribeAssetPropertyResponse]
    def describe_asset_property(params = {}, options = {})
      request = build_request(:describe_asset_property, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a bulk import job request. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html">Describe
    #         a bulk import job (CLI)</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    # @param [Hash, Types::DescribeBulkImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_bulk_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "ID", # required
    #     job_name: "Name", # required
    #     job_status: "PENDING" # One of: ["PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"], # required
    #     job_role_arn: "ARN", # required
    #     files: [ # required
    #       {
    #         bucket: "Bucket", # required
    #         key: "String", # required
    #         version_id: "String"
    #       }
    #     ],
    #     error_report_location: { # required
    #       bucket: "Bucket", # required
    #       prefix: "String", # required
    #     },
    #     job_configuration: { # required
    #       file_format: { # required
    #         csv: {
    #           column_names: ["ALIAS" # One of: ["ALIAS", "ASSET_ID", "PROPERTY_ID", "DATA_TYPE", "TIMESTAMP_SECONDS", "TIMESTAMP_NANO_OFFSET", "QUALITY", "VALUE"]], # required
    #         },
    #         parquet: {
    #         }
    #       }
    #     },
    #     job_creation_date: Time.now, # required
    #     job_last_update_date: Time.now, # required
    #     adaptive_ingestion: false,
    #     delete_files_after_import: false
    #   }
    # @return [Types::DescribeBulkImportJobResponse]
    def describe_bulk_import_job(params = {}, options = {})
      request = build_request(:describe_bulk_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a computation model.</p>
    # @param [Hash, Types::DescribeComputationModelRequest] params
    # @option params [String] :computation_model_id
    #   <p>The ID of the computation model.</p>
    # @option params [String] :computation_model_version
    #   <p>The version of the computation model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_id: "ID", # required
    #     computation_model_version: "ComputationModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.describe_computation_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_id: "ID", # required
    #     computation_model_arn: "ARN", # required
    #     computation_model_name: "RestrictedName", # required
    #     computation_model_description: "RestrictedDescription",
    #     computation_model_configuration: { # required
    #       anomaly_detection: {
    #         input_properties: "InputProperties", # required
    #         result_property: "ResultProperty", # required
    #       }
    #     },
    #     computation_model_data_binding: { # required
    #       "ComputationModelDataBindingVariable" => {
    #         asset_model_property: {
    #           asset_model_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         asset_property: {
    #           asset_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         list: [
    #           {
    #             # recursive ComputationModelDataBindingValue
    #           }
    #         ]
    #       }
    #     },
    #     computation_model_creation_date: Time.now, # required
    #     computation_model_last_update_date: Time.now, # required
    #     computation_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     },
    #     computation_model_version: "Version", # required
    #     action_definitions: [ # required
    #       {
    #         action_definition_id: "ID", # required
    #         action_name: "Name", # required
    #         action_type: "Name", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeComputationModelResponse]
    def describe_computation_model(params = {}, options = {})
      request = build_request(:describe_computation_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the execution summary of a computation model.</p>
    # @param [Hash, Types::DescribeComputationModelExecutionSummaryRequest] params
    # @option params [String] :computation_model_id
    #   <p>The ID of the computation model.</p>
    # @option params [String] :resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    # @option params [String] :resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_id: "ID", # required
    #     resolve_to_resource_type: "ASSET" # One of: ["ASSET"],
    #     resolve_to_resource_id: "ID"
    #   }
    #   options = {}
    #   response = client.describe_computation_model_execution_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_id: "ID", # required
    #     resolve_to: {
    #       asset_id: "ID", # required
    #     },
    #     computation_model_execution_summary: { # required
    #       "ComputationModelExecutionSummaryKey" => "ComputationModelExecutionSummaryValue"
    #     }
    #   }
    # @return [Types::DescribeComputationModelExecutionSummaryResponse]
    def describe_computation_model_execution_summary(params = {}, options = {})
      request = build_request(:describe_computation_model_execution_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a dashboard.</p>
    # @param [Hash, Types::DescribeDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_id: "ID", # required
    #     dashboard_arn: "ARN", # required
    #     dashboard_name: "Name", # required
    #     project_id: "ID", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     dashboard_creation_date: Time.now, # required
    #     dashboard_last_update_date: Time.now, # required
    #   }
    # @return [Types::DescribeDashboardResponse]
    def describe_dashboard(params = {}, options = {})
      request = build_request(:describe_dashboard, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a dataset.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p>The ID of the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "ID", # required
    #     dataset_arn: "ARN", # required
    #     dataset_name: "RestrictedName", # required
    #     dataset_description: "RestrictedDescription", # required
    #     dataset_source: { # required
    #       source_type: "KENDRA" # One of: ["KENDRA"], # required
    #       source_format: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE"], # required
    #       source_detail: {
    #         kendra: {
    #           knowledge_base_arn: "ARN", # required
    #           role_arn: "ARN", # required
    #         }
    #       }
    #     },
    #     dataset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     },
    #     dataset_creation_date: Time.now, # required
    #     dataset_last_update_date: Time.now, # required
    #     dataset_version: "Version"
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the default encryption configuration for the Amazon Web Services account in
    #       the default or specified Region. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::DescribeDefaultEncryptionConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_default_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_type: "SITEWISE_DEFAULT_ENCRYPTION" # One of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"], # required
    #     kms_key_arn: "ARN",
    #     configuration_status: { # required
    #       state: "ACTIVE" # One of: ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeDefaultEncryptionConfigurationResponse]
    def describe_default_encryption_configuration(params = {}, options = {})
      request = build_request(:describe_default_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the execution.</p>
    # @param [Hash, Types::DescribeExecutionRequest] params
    # @option params [String] :execution_id
    #   <p>The ID of the execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "ID", # required
    #     action_type: "Name",
    #     target_resource: { # required
    #       asset_id: "ID",
    #       computation_model_id: "ID"
    #     },
    #     target_resource_version: "Version", # required
    #     resolve_to: {
    #       asset_id: "ID", # required
    #     },
    #     execution_start_time: Time.now, # required
    #     execution_end_time: Time.now,
    #     execution_status: { # required
    #       state: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"], # required
    #     },
    #     execution_result: {
    #       "ExecutionResultKey" => "ExecutionResultValue"
    #     },
    #     execution_details: {
    #       "ExecutionDetailsKey" => "ExecutionDetailsValue"
    #     },
    #     execution_entity_version: "Version"
    #   }
    # @return [Types::DescribeExecutionResponse]
    def describe_execution(params = {}, options = {})
      request = build_request(:describe_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a gateway.</p>
    # @param [Hash, Types::DescribeGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "ID", # required
    #     gateway_name: "GatewayName", # required
    #     gateway_arn: "ARN", # required
    #     gateway_platform: {
    #       greengrass: {
    #         group_arn: "ARN", # required
    #       },
    #       greengrass_v2: {
    #         core_device_thing_name: "CoreDeviceThingName", # required
    #         core_device_operating_system: "LINUX_AARCH64" # One of: ["LINUX_AARCH64", "LINUX_AMD64", "WINDOWS_AMD64"]
    #       },
    #       siemens_ie: {
    #         iot_core_thing_name: "IotCoreThingName", # required
    #       }
    #     },
    #     gateway_version: "GatewayVersion",
    #     gateway_capability_summaries: [ # required
    #       {
    #         capability_namespace: "CapabilityNamespace", # required
    #         capability_sync_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"], # required
    #       }
    #     ],
    #     creation_date: Time.now, # required
    #     last_update_date: Time.now, # required
    #   }
    # @return [Types::DescribeGatewayResponse]
    def describe_gateway(params = {}, options = {})
      request = build_request(:describe_gateway, params)
      request.send_request(options)
    end

    # <p>Each gateway capability defines data sources for a gateway. This is the namespace of the gateway capability.</p>
    #          <p>. The namespace follows the format <code>service:capability:version</code>, where:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>service</code> - The service providing the capability, or <code>iotsitewise</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>capability</code> - The specific capability type. Options include: <code>opcuacollector</code> for the OPC UA data source collector, or <code>publisher</code> for data publisher capability.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>version</code> - The version number of the capability. Option include <code>2</code> for Classic streams, V2 gateways, and <code>3</code> for MQTT-enabled, V3 gateways.</p>
    #             </li>
    #          </ul>
    #          <p>After updating a capability configuration, the sync status becomes <code>OUT_OF_SYNC</code> until the gateway processes the configuration.Use <code>DescribeGatewayCapabilityConfiguration</code> to check the sync status and verify the configuration was applied.</p>
    #          <p>A gateway can have multiple capability configurations with different namespaces.</p>
    # @param [Hash, Types::DescribeGatewayCapabilityConfigurationRequest] params
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    # @option params [String] :capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC UA
    #         sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:3</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #   }
    #   options = {}
    #   response = client.describe_gateway_capability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #     capability_configuration: "CapabilityConfiguration", # required
    #     capability_sync_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"], # required
    #   }
    # @return [Types::DescribeGatewayCapabilityConfigurationResponse]
    def describe_gateway_capability_configuration(params = {}, options = {})
      request = build_request(:describe_gateway_capability_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the current IoT SiteWise logging options.</p>
    # @param [Hash, Types::DescribeLoggingOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_options: { # required
    #       level: "ERROR" # One of: ["ERROR", "INFO", "OFF"], # required
    #     }
    #   }
    # @return [Types::DescribeLoggingOptionsResponse]
    def describe_logging_options(params = {}, options = {})
      request = build_request(:describe_logging_options, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a portal.</p>
    # @param [Hash, Types::DescribePortalRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_id: "ID", # required
    #     portal_arn: "ARN", # required
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_client_id: "PortalClientId", # required
    #     portal_start_url: "Url", # required
    #     portal_contact_email: "Email", # required
    #     portal_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"], # required
    #       error: {
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"],
    #         message: "MonitorErrorMessage"
    #       }
    #     },
    #     portal_creation_date: Time.now, # required
    #     portal_last_update_date: Time.now, # required
    #     portal_logo_image_location: {
    #       id: "ID", # required
    #       url: "Url", # required
    #     },
    #     role_arn: "IamArn",
    #     portal_auth_mode: "IAM" # One of: ["IAM", "SSO"],
    #     notification_sender_email: "Email",
    #     alarms: {
    #       alarm_role_arn: "IamArn", # required
    #       notification_lambda_arn: "ARN"
    #     },
    #     portal_type: "SITEWISE_PORTAL_V1" # One of: ["SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"],
    #     portal_type_configuration: {
    #       "PortalTypeKey" => {
    #         portal_tools: ["Name"]
    #       }
    #     }
    #   }
    # @return [Types::DescribePortalResponse]
    def describe_portal(params = {}, options = {})
      request = build_request(:describe_portal, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a project.</p>
    # @param [Hash, Types::DescribeProjectRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #   }
    #   options = {}
    #   response = client.describe_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_id: "ID", # required
    #     project_arn: "ARN", # required
    #     project_name: "Name", # required
    #     portal_id: "ID", # required
    #     project_description: "Description",
    #     project_creation_date: Time.now, # required
    #     project_last_update_date: Time.now, # required
    #   }
    # @return [Types::DescribeProjectResponse]
    def describe_project(params = {}, options = {})
      request = build_request(:describe_project, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the storage configuration for IoT SiteWise.</p>
    # @param [Hash, Types::DescribeStorageConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_type: "SITEWISE_DEFAULT_STORAGE" # One of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"], # required
    #     multi_layer_storage: {
    #       customer_managed_s3_storage: { # required
    #         s3_resource_arn: "ARN", # required
    #         role_arn: "ARN", # required
    #       }
    #     },
    #     disassociated_data_storage: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     configuration_status: { # required
    #       state: "ACTIVE" # One of: ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #       }
    #     },
    #     last_update_date: Time.now,
    #     warm_tier: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     warm_tier_retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     disallow_ingest_null_na_n: false
    #   }
    # @return [Types::DescribeStorageConfigurationResponse]
    def describe_storage_configuration(params = {}, options = {})
      request = build_request(:describe_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a time series (data stream).</p>
    #          <p>To identify a time series, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>If the time series isn't associated with an asset property,
    #           specify the <code>alias</code> of the time series.</p>
    #             </li>
    #             <li>
    #                <p>If the time series is associated with an asset property,
    #           specify one of the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The <code>alias</code> of the time series.</p>
    #                   </li>
    #                   <li>
    #                      <p>The <code>assetId</code> and <code>propertyId</code> that identifies the asset property.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeTimeSeriesRequest] params
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "PropertyAlias",
    #     asset_id: "CustomID",
    #     property_id: "CustomID"
    #   }
    #   options = {}
    #   response = client.describe_time_series(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_id: "ID",
    #     property_id: "ID",
    #     alias: "PropertyAlias",
    #     time_series_id: "TimeSeriesId", # required
    #     data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #     data_type_spec: "Name",
    #     time_series_creation_date: Time.now, # required
    #     time_series_last_update_date: Time.now, # required
    #     time_series_arn: "ARN", # required
    #   }
    # @return [Types::DescribeTimeSeriesResponse]
    def describe_time_series(params = {}, options = {})
      request = build_request(:describe_time_series, params)
      request.send_request(options)
    end

    # <p>Disassociates a child asset from the given parent asset through a hierarchy defined in the
    #       parent asset's model.</p>
    # @param [Hash, Types::DisassociateAssetsRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the parent asset from which to disassociate the child asset.
    #         This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow
    #         different groupings of assets to be formed that all come from the same asset model. You can
    #         use the hierarchy ID to identify the correct asset to disassociate. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :child_asset_id
    #   <p>The ID of the child asset to disassociate. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID", # required
    #     child_asset_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_assets(params = {}, options = {})
      request = build_request(:disassociate_assets, params)
      request.send_request(options)
    end

    # <p>Disassociates a time series (data stream) from an asset property.</p>
    # @param [Hash, Types::DisassociateTimeSeriesFromAssetPropertyRequest] params
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "PropertyAlias", # required
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_time_series_from_asset_property(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_time_series_from_asset_property(params = {}, options = {})
      request = build_request(:disassociate_time_series_from_asset_property, params)
      request.send_request(options)
    end

    # <p>Executes an action on a target resource.</p>
    # @param [Hash, Types::ExecuteActionRequest] params
    # @option params [Types::TargetResource] :target_resource
    #   <p>The resource the action will be taken on.</p>
    # @option params [String] :action_definition_id
    #   <p>The ID of the action definition.</p>
    # @option params [Types::ActionPayload] :action_payload
    #   <p>The JSON payload of the action.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Types::ResolveTo] :resolve_to
    #   <p>The detailed resource this action resolves to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_resource: { # required
    #       asset_id: "ID",
    #       computation_model_id: "ID"
    #     },
    #     action_definition_id: "ID", # required
    #     action_payload: { # required
    #       string_value: "ActionPayloadString", # required
    #     },
    #     client_token: "ClientToken",
    #     resolve_to: {
    #       asset_id: "ID", # required
    #     }
    #   }
    #   options = {}
    #   response = client.execute_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_id: "ID", # required
    #   }
    # @return [Types::ExecuteActionResponse]
    def execute_action(params = {}, options = {})
      request = build_request(:execute_action, params)
      request.send_request(options)
    end

    # <p>Run SQL queries to retrieve metadata and time-series data from asset models, assets,
    #       measurements, metrics, transforms, and aggregates.</p>
    # @param [Hash, Types::ExecuteQueryRequest] params
    # @option params [String] :query_statement
    #   <p>The IoT SiteWise query statement.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #            <ul>
    #               <li>
    #                  <p>Minimum is 1</p>
    #               </li>
    #               <li>
    #                  <p>Maximum is 20000</p>
    #               </li>
    #               <li>
    #                  <p>Default is 20000</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_statement: "QueryStatement", # required
    #     next_token: "ExecuteQueryNextToken",
    #     max_results: 1,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.execute_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     columns: [
    #       {
    #         name: "String",
    #         type: {
    #           scalar_type: "BOOLEAN" # One of: ["BOOLEAN", "INT", "DOUBLE", "TIMESTAMP", "STRING"]
    #         }
    #       }
    #     ],
    #     rows: [
    #       {
    #         data: [ # required
    #           {
    #             scalar_value: "ScalarValue",
    #             array_value: {
    #               # recursive DatumList
    #             },
    #             row_value: {
    #               # recursive Row
    #             },
    #             null_value: false
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "ExecuteQueryNextToken"
    #   }
    # @return [Types::ExecuteQueryResponse]
    def execute_query(params = {}, options = {})
      request = build_request(:execute_query, params)
      request.send_request(options)
    end

    # <p>Gets aggregated values for an asset property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates">Querying
    #         aggregates</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetAssetPropertyAggregatesRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Array<String>] :aggregate_types
    #   <p>The data aggregating function.</p>
    # @option params [String] :resolution
    #   <p>The time interval over which to aggregate data.</p>
    # @option params [Array<String>] :qualities
    #   <p>The quality by which to filter asset data.</p>
    # @option params [Time] :start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    # @option params [Time] :end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    # @option params [String] :time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 2500.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     aggregate_types: ["AVERAGE" # One of: ["AVERAGE", "COUNT", "MAXIMUM", "MINIMUM", "SUM", "STANDARD_DEVIATION"]], # required
    #     resolution: "Resolution", # required
    #     qualities: ["GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]],
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     time_ordering: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_asset_property_aggregates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregated_values: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"],
    #         value: { # required
    #           average: 1.0,
    #           count: 1.0,
    #           maximum: 1.0,
    #           minimum: 1.0,
    #           sum: 1.0,
    #           standard_deviation: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAssetPropertyAggregatesResponse]
    def get_asset_property_aggregates(params = {}, options = {})
      request = build_request(:get_asset_property_aggregates, params)
      request.send_request(options)
    end

    # <p>Gets an asset property's current value. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values">Querying
    #         current values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetAssetPropertyValueRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias"
    #   }
    #   options = {}
    #   response = client.get_asset_property_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     property_value: {
    #       value: { # required
    #         string_value: "PropertyValueStringValue",
    #         integer_value: 1,
    #         double_value: 1.0,
    #         boolean_value: false,
    #         null_value: {
    #           value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #         }
    #       },
    #       timestamp: { # required
    #         time_in_seconds: 1, # required
    #         offset_in_nanos: 1
    #       },
    #       quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]
    #     }
    #   }
    # @return [Types::GetAssetPropertyValueResponse]
    def get_asset_property_value(params = {}, options = {})
      request = build_request(:get_asset_property_value, params)
      request.send_request(options)
    end

    # <p>Gets the history of an asset property's values. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values">Querying
    #         historical values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetAssetPropertyValueHistoryRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Time] :start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    # @option params [Time] :end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    # @option params [Array<String>] :qualities
    #   <p>The quality by which to filter asset data.</p>
    # @option params [String] :time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 4 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     qualities: ["GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]],
    #     time_ordering: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_asset_property_value_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_property_value_history: [ # required
    #       {
    #         value: { # required
    #           string_value: "PropertyValueStringValue",
    #           integer_value: 1,
    #           double_value: 1.0,
    #           boolean_value: false,
    #           null_value: {
    #             value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #           }
    #         },
    #         timestamp: { # required
    #           time_in_seconds: 1, # required
    #           offset_in_nanos: 1
    #         },
    #         quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAssetPropertyValueHistoryResponse]
    def get_asset_property_value_history(params = {}, options = {})
      request = build_request(:get_asset_property_value_history, params)
      request.send_request(options)
    end

    # <p>Get interpolated values for an asset property for a specified time interval, during a
    #       period of time. If your time series is missing data points during the specified time interval,
    #       you can use interpolation to estimate the missing data.</p>
    #          <p>For example, you can use this operation to return the interpolated temperature values for
    #       a wind turbine every 24 hours over a duration of 7 days.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetInterpolatedAssetPropertyValuesRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Integer] :start_time_in_seconds
    #   <p>The exclusive start of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    # @option params [Integer] :start_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>
    # @option params [Integer] :end_time_in_seconds
    #   <p>The inclusive end of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    # @option params [Integer] :end_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>
    # @option params [String] :quality
    #   <p>The quality of the asset property value. You can use this parameter as a filter to choose
    #         only the asset property values that have a specific quality.</p>
    # @option params [Integer] :interval_in_seconds
    #   <p>The time interval in seconds over which to interpolate data. Each interval starts when the
    #         previous one ends.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 10.</p>
    # @option params [String] :type
    #   <p>The interpolation type.</p>
    #            <p>Valid values: <code>LINEAR_INTERPOLATION | LOCF_INTERPOLATION</code>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINEAR_INTERPOLATION</code> – Estimates missing data using <a href="https://en.wikipedia.org/wiki/Linear_interpolation">linear
    #             interpolation</a>.</p>
    #                  <p>For example, you can use this operation to return the interpolated temperature values
    #             for a wind turbine every 24 hours over a duration of 7 days. If the interpolation starts
    #             July 1, 2021, at 9 AM, IoT SiteWise returns the first interpolated value on July 2, 2021, at 9 AM,
    #             the second interpolated value on July 3, 2021, at 9 AM, and so on.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCF_INTERPOLATION</code> – Estimates missing data using last observation
    #             carried forward interpolation</p>
    #                  <p>If no data point is found for an interval, IoT SiteWise returns the last observed data point
    #             for the previous interval and carries forward this interpolated value until a new data
    #             point is found.</p>
    #                  <p>For example, you can get the state of an on-off valve every 24 hours over a duration
    #             of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT SiteWise returns the last
    #             observed data point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first
    #             interpolated value. If a data point isn't found after 9 AM on July 2, 2021, IoT SiteWise uses the
    #             same interpolated value for the rest of the days.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :interval_window_in_seconds
    #   <p>The query interval for the window, in seconds. IoT SiteWise computes each interpolated value by
    #         using data points from the timestamp of each interval, minus the window to the timestamp of
    #         each interval plus the window. If not specified, the window ranges between the start time
    #         minus the interval and the end time plus the interval.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you specify a value for the <code>intervalWindowInSeconds</code> parameter, the
    #               value for the <code>type</code> parameter must be
    #               <code>LINEAR_INTERPOLATION</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>If a data point isn't found during the specified query window, IoT SiteWise won't return an
    #               interpolated value for the interval. This indicates that there's a gap in the ingested
    #               data points.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For example, you can get the interpolated temperature values for a wind turbine every 24
    #         hours over a duration of 7 days. If the interpolation starts on July 1, 2021, at 9 AM with a
    #         window of 2 hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM
    #         plus 2 hours) on July 2, 2021 to compute the first interpolated value. Next, IoT SiteWise uses the
    #         data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021 to
    #         compute the second interpolated value, and so on. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     start_time_in_seconds: 1, # required
    #     start_time_offset_in_nanos: 1,
    #     end_time_in_seconds: 1, # required
    #     end_time_offset_in_nanos: 1,
    #     quality: "GOOD" # One of: ["GOOD", "BAD", "UNCERTAIN"], # required
    #     interval_in_seconds: 1, # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     type: "InterpolationType", # required
    #     interval_window_in_seconds: 1
    #   }
    #   options = {}
    #   response = client.get_interpolated_asset_property_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     interpolated_asset_property_values: [ # required
    #       {
    #         timestamp: { # required
    #           time_in_seconds: 1, # required
    #           offset_in_nanos: 1
    #         },
    #         value: { # required
    #           string_value: "PropertyValueStringValue",
    #           integer_value: 1,
    #           double_value: 1.0,
    #           boolean_value: false,
    #           null_value: {
    #             value_type: "D" # One of: ["D", "B", "S", "I", "U"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInterpolatedAssetPropertyValuesResponse]
    def get_interpolated_asset_property_values(params = {}, options = {})
      request = build_request(:get_interpolated_asset_property_values, params)
      request.send_request(options)
    end

    # <p>Invokes SiteWise Assistant to start or continue a conversation.</p>
    # @param [Hash, Types::InvokeAssistantRequest] params
    # @option params [String] :conversation_id
    #   <p>The ID assigned to a conversation. IoT SiteWise automatically generates a unique ID for you, and this parameter is never required. 
    #     However, if you prefer to have your own ID, you must specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>
    # @option params [String] :message
    #   <p>A text message sent to the SiteWise Assistant by the user.</p>
    # @option params [Boolean] :enable_trace
    #   <p>Specifies if to turn trace on or not. It is used to track the SiteWise Assistant's 
    #     reasoning, and data access process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conversation_id: "ConversationId",
    #     message: "MessageInput", # required
    #     enable_trace: false
    #   }
    #   options = {}
    #   response = client.invoke_assistant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: { # required
    #       # One of:
    #       trace: {
    #         text: "String"
    #       },
    #       output: {
    #         message: "String",
    #         citations: [
    #           {
    #             reference: {
    #               dataset: {
    #                 dataset_arn: "String",
    #                 source: {
    #                   arn: "String",
    #                   location: {
    #                     uri: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             content: {
    #               text: "String"
    #             }
    #           }
    #         ]
    #       },
    #       access_denied_exception: {
    #         message: "ErrorMessage"
    #       },
    #       conflicting_operation_exception: {
    #         message: "ErrorMessage", # required
    #         resource_id: "ResourceId", # required
    #         resource_arn: "ResourceArn", # required
    #       },
    #       internal_failure_exception: {
    #         message: "ErrorMessage", # required
    #       },
    #       invalid_request_exception: {
    #         message: "ErrorMessage", # required
    #       },
    #       limit_exceeded_exception: {
    #         message: "ErrorMessage", # required
    #       },
    #       resource_not_found_exception: {
    #         message: "ErrorMessage", # required
    #       },
    #       throttling_exception: {
    #         message: "ErrorMessage", # required
    #       }
    #     },
    #     conversation_id: "ConversationId", # required
    #   }
    # @return [Types::InvokeAssistantResponse]
    def invoke_assistant(params = {}, options = {})
      request = build_request(:invoke_assistant, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of access policies for an identity (an IAM Identity Center user, an IAM Identity Center
    #       group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or project).</p>
    # @param [Hash, Types::ListAccessPoliciesRequest] params
    # @option params [String] :identity_type
    #   <p>The type of identity (IAM Identity Center user, IAM Identity Center group, or IAM user). This parameter is required
    #         if you specify <code>identityId</code>.</p>
    # @option params [String] :identity_id
    #   <p>The ID of the identity. This parameter is required if you specify <code>USER</code> or
    #           <code>GROUP</code> for <code>identityType</code>.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource (portal or project). This parameter is required if you specify
    #           <code>resourceId</code>.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource. This parameter is required if you specify
    #           <code>resourceType</code>.</p>
    # @option params [String] :iam_arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>. This parameter is required if you specify
    #           <code>IAM</code> for <code>identityType</code>.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_type: "USER" # One of: ["USER", "GROUP", "IAM"],
    #     identity_id: "IdentityId",
    #     resource_type: "PORTAL" # One of: ["PORTAL", "PROJECT"],
    #     resource_id: "ID",
    #     iam_arn: "IamArn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         identity: { # required
    #           user: {
    #             id: "IdentityId", # required
    #           },
    #           group: {
    #             id: "IdentityId", # required
    #           },
    #           iam_user: {
    #             arn: "IamArn", # required
    #           },
    #           iam_role: {
    #             arn: "IamArn", # required
    #           }
    #         },
    #         resource: { # required
    #           portal: {
    #             id: "ID", # required
    #           },
    #           project: {
    #             id: "ID", # required
    #           }
    #         },
    #         permission: "ADMINISTRATOR" # One of: ["ADMINISTRATOR", "VIEWER"], # required
    #         creation_date: Time.now,
    #         last_update_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccessPoliciesResponse]
    def list_access_policies(params = {}, options = {})
      request = build_request(:list_access_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of actions for a specific target resource.</p>
    # @param [Hash, Types::ListActionsRequest] params
    # @option params [String] :target_resource_type
    #   <p>The type of resource.</p>
    # @option params [String] :target_resource_id
    #   <p>The ID of the target resource.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @option params [String] :resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    # @option params [String] :resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_resource_type: "ASSET" # One of: ["ASSET", "COMPUTATION_MODEL"], # required
    #     target_resource_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resolve_to_resource_type: "ASSET" # One of: ["ASSET"],
    #     resolve_to_resource_id: "ID"
    #   }
    #   options = {}
    #   response = client.list_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_summaries: [ # required
    #       {
    #         action_id: "ID",
    #         action_definition_id: "ID",
    #         target_resource: {
    #           asset_id: "ID",
    #           computation_model_id: "ID"
    #         },
    #         resolve_to: {
    #           asset_id: "ID", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken", # required
    #   }
    # @return [Types::ListActionsResponse]
    def list_actions(params = {}, options = {})
      request = build_request(:list_actions, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of composite models associated with the asset model</p>
    # @param [Hash, Types::ListAssetModelCompositeModelsRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @option params [String] :asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_version: "AssetModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.list_asset_model_composite_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_composite_model_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         type: "Name", # required
    #         description: "Description",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetModelCompositeModelsResponse]
    def list_asset_model_composite_models(params = {}, options = {})
      request = build_request(:list_asset_model_composite_models, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of properties associated with an asset model.
    #       If you update properties associated with the model before you finish listing all the properties,
    #         you need to start all over again.</p>
    # @param [Hash, Types::ListAssetModelPropertiesRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>
    # @option params [String] :filter
    #   <p> Filters the requested list of asset model properties. You can choose one of the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all asset model properties for a given asset
    #             model ID. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASE</code> – The list includes only base asset model properties for a given
    #             asset model ID. </p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>BASE</code>
    #            </p>
    # @option params [String] :asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL" # One of: ["ALL", "BASE"],
    #     asset_model_version: "AssetModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.list_asset_model_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_property_summaries: [ # required
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         asset_model_composite_model_id: "ID",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ],
    #         interface_summaries: [
    #           {
    #             interface_asset_model_id: "ID", # required
    #             interface_asset_model_property_id: "ID", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetModelPropertiesResponse]
    def list_asset_model_properties(params = {}, options = {})
      request = build_request(:list_asset_model_properties, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of summaries of all asset models.</p>
    # @param [Hash, Types::ListAssetModelsRequest] params
    # @option params [Array<String>] :asset_model_types
    #   <p>The type of asset model. If you don't provide an <code>assetModelTypes</code>, all types
    #         of asset models are returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – An asset model that you can use
    #             to create assets. Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that
    #             you can include in the composite models of other asset models. You can't create
    #             assets directly from this type of asset model. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>INTERFACE</b> – An interface is a type of model
    #             that defines a standard structure that can be applied to different asset models.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @option params [String] :asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_types: ["ASSET_MODEL" # One of: ["ASSET_MODEL", "COMPONENT_MODEL", "INTERFACE"]],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_version: "AssetModelVersionFilter"
    #   }
    #   options = {}
    #   response = client.list_asset_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         arn: "ARN", # required
    #         name: "Name", # required
    #         asset_model_type: "ASSET_MODEL" # One of: ["ASSET_MODEL", "COMPONENT_MODEL", "INTERFACE"],
    #         description: "Description", # required
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #           error: {
    #             code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #             message: "ErrorMessage", # required
    #             details: [
    #               {
    #                 code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #                 message: "DetailedErrorMessage", # required
    #               }
    #             ]
    #           }
    #         },
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetModelsResponse]
    def list_asset_models(params = {}, options = {})
      request = build_request(:list_asset_models, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of properties associated with an asset.
    #       If you update properties associated with the model before you finish listing all the properties,
    #         you need to start all over again.</p>
    # @param [Hash, Types::ListAssetPropertiesRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>
    # @option params [String] :filter
    #   <p> Filters the requested list of asset properties. You can choose one of the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all asset properties for a given asset model ID.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASE</code> – The list includes only base asset properties for a given asset
    #             model ID. </p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>BASE</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL" # One of: ["ALL", "BASE"]
    #   }
    #   options = {}
    #   response = client.list_asset_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_property_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         alias: "PropertyAlias",
    #         unit: "PropertyUnit",
    #         notification: {
    #           topic: "PropertyNotificationTopic", # required
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         asset_composite_model_id: "ID",
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetPropertiesResponse]
    def list_asset_properties(params = {}, options = {})
      request = build_request(:list_asset_properties, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of asset relationships for an asset. You can use this operation
    #       to identify an asset's root asset and all associated assets between that asset and its
    #       root.</p>
    # @param [Hash, Types::ListAssetRelationshipsRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :traversal_type
    #   <p>The type of traversal to use to identify asset relationships. Choose the following
    #         option:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root
    #             asset. The asset that you specify in <code>assetId</code> is the first result in the list
    #             of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     traversal_type: "PATH_TO_ROOT" # One of: ["PATH_TO_ROOT"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_relationships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_relationship_summaries: [ # required
    #       {
    #         hierarchy_info: {
    #           parent_asset_id: "ID",
    #           child_asset_id: "ID"
    #         },
    #         relationship_type: "HIERARCHY" # One of: ["HIERARCHY"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetRelationshipsResponse]
    def list_asset_relationships(params = {}, options = {})
      request = build_request(:list_asset_relationships, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of asset summaries.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>List assets based on a specific asset model.</p>
    #             </li>
    #             <li>
    #                <p>List top-level assets.</p>
    #             </li>
    #          </ul>
    #          <p>You can't use this operation to list all assets. To retrieve summaries for all of your
    #       assets, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html">ListAssetModels</a> to get all of your asset model IDs. Then, use ListAssets to get all
    #       assets for each asset model.</p>
    # @param [Hash, Types::ListAssetsRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model by which to filter the list of assets. This parameter is
    #         required if you choose <code>ALL</code> for <code>filter</code>. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :filter
    #   <p>The filter for the requested list of assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all assets for a given asset model ID. The
    #               <code>assetModelId</code> parameter is required if you filter by
    #             <code>ALL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset
    #             hierarchy tree.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ALL</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_id: "CustomID",
    #     filter: "ALL" # One of: ["ALL", "TOP_LEVEL"]
    #   }
    #   options = {}
    #   response = client.list_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         arn: "ARN", # required
    #         name: "Name", # required
    #         asset_model_id: "ID", # required
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #           error: {
    #             code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #             message: "ErrorMessage", # required
    #             details: [
    #               {
    #                 code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #                 message: "DetailedErrorMessage", # required
    #               }
    #             ]
    #           }
    #         },
    #         hierarchies: [ # required
    #           {
    #             id: "ID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #           }
    #         ],
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetsResponse]
    def list_assets(params = {}, options = {})
      request = build_request(:list_assets, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of associated assets.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CHILD</code> - List all child assets associated to the asset.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PARENT</code> - List the asset's parent asset.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListAssociatedAssetsRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset to query. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :hierarchy_id
    #   <p>(Optional) If you don't provide a <code>hierarchyId</code>, all the immediate assets in
    #         the <code>traversalDirection</code> will be returned. </p>
    #            <p> The ID of the hierarchy by which child assets are associated to the asset.
    #         (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.)</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :traversal_direction
    #   <p>The direction to list associated assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> – The list includes all child assets associated to the
    #             asset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARENT</code> – The list includes the asset's parent asset.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>CHILD</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID",
    #     traversal_direction: "PARENT" # One of: ["PARENT", "CHILD"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_associated_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         external_id: "ExternalId",
    #         arn: "ARN", # required
    #         name: "Name", # required
    #         asset_model_id: "ID", # required
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #           error: {
    #             code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #             message: "ErrorMessage", # required
    #             details: [
    #               {
    #                 code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #                 message: "DetailedErrorMessage", # required
    #               }
    #             ]
    #           }
    #         },
    #         hierarchies: [ # required
    #           {
    #             id: "ID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #           }
    #         ],
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociatedAssetsResponse]
    def list_associated_assets(params = {}, options = {})
      request = build_request(:list_associated_assets, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of bulk import job requests. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html">List bulk
    #         import jobs (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::ListBulkImportJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @option params [String] :filter
    #   <p>You can use a filter to select the bulk import jobs that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL" # One of: ["ALL", "PENDING", "RUNNING", "CANCELLED", "FAILED", "COMPLETED_WITH_FAILURES", "COMPLETED"]
    #   }
    #   options = {}
    #   response = client.list_bulk_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         name: "Name", # required
    #         status: "PENDING" # One of: ["PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBulkImportJobsResponse]
    def list_bulk_import_jobs(params = {}, options = {})
      request = build_request(:list_bulk_import_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of composition relationships for an asset model of type
    #         <code>COMPONENT_MODEL</code>.</p>
    # @param [Hash, Types::ListCompositionRelationshipsRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_composition_relationships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     composition_relationship_summaries: [ # required
    #       {
    #         asset_model_id: "ID", # required
    #         asset_model_composite_model_id: "ID", # required
    #         asset_model_composite_model_type: "Name", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCompositionRelationshipsResponse]
    def list_composition_relationships(params = {}, options = {})
      request = build_request(:list_composition_relationships, params)
      request.send_request(options)
    end

    # <p> Lists all data binding usages for computation models. This allows to identify where
    #       specific data bindings are being utilized across the computation models. This track
    #       dependencies between data sources and computation models. </p>
    # @param [Hash, Types::ListComputationModelDataBindingUsagesRequest] params
    # @option params [Types::DataBindingValueFilter] :data_binding_value_filter
    #   <p>A filter used to limit the returned data binding usages based on specific data binding
    #         values. You can filter by asset, asset model, asset property, or asset model property to find
    #         all computation models using these specific data sources.</p>
    # @option params [String] :next_token
    #   <p>The token used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_binding_value_filter: { # required
    #       asset: {
    #         asset_id: "ID", # required
    #       },
    #       asset_model: {
    #         asset_model_id: "ID", # required
    #       },
    #       asset_property: {
    #         asset_id: "ID", # required
    #         property_id: "ID", # required
    #       },
    #       asset_model_property: {
    #         asset_model_id: "ID", # required
    #         property_id: "ID", # required
    #       }
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_computation_model_data_binding_usages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_binding_usage_summaries: [ # required
    #       {
    #         computation_model_ids: ["ID"], # required
    #         matched_data_binding: { # required
    #           value: { # required
    #             asset_model_property: {
    #               asset_model_id: "ID", # required
    #               property_id: "ID", # required
    #             },
    #             asset_property: {
    #               asset_id: "ID", # required
    #               property_id: "ID", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComputationModelDataBindingUsagesResponse]
    def list_computation_model_data_binding_usages(params = {}, options = {})
      request = build_request(:list_computation_model_data_binding_usages, params)
      request.send_request(options)
    end

    # <p>Lists all distinct resources that are resolved from the executed actions of the
    #       computation model.</p>
    # @param [Hash, Types::ListComputationModelResolveToResourcesRequest] params
    # @option params [String] :computation_model_id
    #   <p>The ID of the computation model for which to list resolved resources.</p>
    # @option params [String] :next_token
    #   <p>The token used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_computation_model_resolve_to_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_resolve_to_resource_summaries: [ # required
    #       {
    #         resolve_to: {
    #           asset_id: "ID", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComputationModelResolveToResourcesResponse]
    def list_computation_model_resolve_to_resources(params = {}, options = {})
      request = build_request(:list_computation_model_resolve_to_resources, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of summaries of all computation models.</p>
    # @param [Hash, Types::ListComputationModelsRequest] params
    # @option params [String] :computation_model_type
    #   <p>The type of computation model. If a <code>computationModelType</code> is not provided, all
    #         types of computation models are returned.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_type: "ANOMALY_DETECTION" # One of: ["ANOMALY_DETECTION"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_computation_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         arn: "ARN", # required
    #         name: "RestrictedName", # required
    #         description: "RestrictedDescription",
    #         type: "ANOMALY_DETECTION" # One of: ["ANOMALY_DETECTION"], # required
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #           error: {
    #             code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #             message: "ErrorMessage", # required
    #             details: [
    #               {
    #                 code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #                 message: "DetailedErrorMessage", # required
    #               }
    #             ]
    #           }
    #         },
    #         version: "Version", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComputationModelsResponse]
    def list_computation_models(params = {}, options = {})
      request = build_request(:list_computation_models, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::ListDashboardsRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         name: "Name", # required
    #         description: "Description",
    #         creation_date: Time.now,
    #         last_update_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDashboardsResponse]
    def list_dashboards(params = {}, options = {})
      request = build_request(:list_dashboards, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of datasets for a specific target resource.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :source_type
    #   <p>The type of data source for the dataset.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "KENDRA" # One of: ["KENDRA"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         arn: "ARN", # required
    #         name: "RestrictedName", # required
    #         description: "RestrictedDescription", # required
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #           error: {
    #             code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #             message: "ErrorMessage", # required
    #             details: [
    #               {
    #                 code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #                 message: "DetailedErrorMessage", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of summaries of all executions.</p>
    # @param [Hash, Types::ListExecutionsRequest] params
    # @option params [String] :target_resource_type
    #   <p>The type of the target resource.</p>
    # @option params [String] :target_resource_id
    #   <p>The ID of the target resource.</p>
    # @option params [String] :resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    # @option params [String] :resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    # @option params [String] :next_token
    #   <p>The token used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    # @option params [String] :action_type
    #   <p>The type of action exectued.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_resource_type: "ASSET" # One of: ["ASSET", "COMPUTATION_MODEL"], # required
    #     target_resource_id: "ID", # required
    #     resolve_to_resource_type: "ASSET" # One of: ["ASSET"],
    #     resolve_to_resource_id: "ID",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     action_type: "Name"
    #   }
    #   options = {}
    #   response = client.list_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_summaries: [ # required
    #       {
    #         execution_id: "ID", # required
    #         action_type: "Name",
    #         target_resource: { # required
    #           asset_id: "ID",
    #           computation_model_id: "ID"
    #         },
    #         target_resource_version: "Version", # required
    #         resolve_to: {
    #           asset_id: "ID", # required
    #         },
    #         execution_start_time: Time.now, # required
    #         execution_end_time: Time.now,
    #         execution_status: { # required
    #           state: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"], # required
    #         },
    #         execution_entity_version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExecutionsResponse]
    def list_executions(params = {}, options = {})
      request = build_request(:list_executions, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of gateways.</p>
    # @param [Hash, Types::ListGatewaysRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_summaries: [ # required
    #       {
    #         gateway_id: "ID", # required
    #         gateway_name: "GatewayName", # required
    #         gateway_platform: {
    #           greengrass: {
    #             group_arn: "ARN", # required
    #           },
    #           greengrass_v2: {
    #             core_device_thing_name: "CoreDeviceThingName", # required
    #             core_device_operating_system: "LINUX_AARCH64" # One of: ["LINUX_AARCH64", "LINUX_AMD64", "WINDOWS_AMD64"]
    #           },
    #           siemens_ie: {
    #             iot_core_thing_name: "IotCoreThingName", # required
    #           }
    #         },
    #         gateway_version: "GatewayVersion",
    #         gateway_capability_summaries: [
    #           {
    #             capability_namespace: "CapabilityNamespace", # required
    #             capability_sync_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"], # required
    #           }
    #         ],
    #         creation_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGatewaysResponse]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of asset models that have a specific interface asset model
    #       applied to them.</p>
    # @param [Hash, Types::ListInterfaceRelationshipsRequest] params
    # @option params [String] :interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interface_asset_model_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_interface_relationships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     interface_relationship_summaries: [ # required
    #       {
    #         id: "ID", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInterfaceRelationshipsResponse]
    def list_interface_relationships(params = {}, options = {})
      request = build_request(:list_interface_relationships, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of IoT SiteWise Monitor portals.</p>
    # @param [Hash, Types::ListPortalsRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_portals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_summaries: [
    #       {
    #         id: "ID", # required
    #         name: "Name", # required
    #         description: "Description",
    #         start_url: "Url", # required
    #         creation_date: Time.now,
    #         last_update_date: Time.now,
    #         role_arn: "IamArn",
    #         status: { # required
    #           state: "CREATING" # One of: ["CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"], # required
    #           error: {
    #             code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"],
    #             message: "MonitorErrorMessage"
    #           }
    #         },
    #         portal_type: "SITEWISE_PORTAL_V1" # One of: ["SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPortalsResponse]
    def list_portals(params = {}, options = {})
      request = build_request(:list_portals, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of assets associated with an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::ListProjectAssetsRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_project_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_ids: ["ID"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProjectAssetsResponse]
    def list_project_assets(params = {}, options = {})
      request = build_request(:list_project_assets, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.</p>
    # @param [Hash, Types::ListProjectsRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the portal.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_summaries: [ # required
    #       {
    #         id: "ID", # required
    #         name: "Name", # required
    #         description: "Description",
    #         creation_date: Time.now,
    #         last_update_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProjectsResponse]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of tags for an IoT SiteWise resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Retrieves a paginated list of time series (data streams).</p>
    # @param [Hash, Types::ListTimeSeriesRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :alias_prefix
    #   <p>The alias prefix of the time series.</p>
    # @option params [String] :time_series_type
    #   <p>The type of the time series. The time series type can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASSOCIATED</code> – The time series is associated with an asset
    #             property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISASSOCIATED</code> – The time series isn't associated with any asset
    #             property.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_id: "CustomID",
    #     alias_prefix: "PropertyAlias",
    #     time_series_type: "ASSOCIATED" # One of: ["ASSOCIATED", "DISASSOCIATED"]
    #   }
    #   options = {}
    #   response = client.list_time_series(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_series_summaries: [ # required
    #       {
    #         asset_id: "ID",
    #         property_id: "ID",
    #         alias: "PropertyAlias",
    #         time_series_id: "TimeSeriesId", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         time_series_creation_date: Time.now, # required
    #         time_series_last_update_date: Time.now, # required
    #         time_series_arn: "ARN", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTimeSeriesResponse]
    def list_time_series(params = {}, options = {})
      request = build_request(:list_time_series, params)
      request.send_request(options)
    end

    # <p>Creates or updates an interface relationship between an asset model and an interface asset
    #       model. This operation applies an interface to an asset model.</p>
    # @param [Hash, Types::PutAssetModelInterfaceRelationshipRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    # @option params [String] :interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    # @option params [Types::PropertyMappingConfiguration] :property_mapping_configuration
    #   <p>The configuration for mapping properties from the interface asset model to the asset model
    #         where the interface is applied. This configuration controls how properties are matched and
    #         created during the interface application process.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     interface_asset_model_id: "CustomID", # required
    #     property_mapping_configuration: { # required
    #       match_by_property_name: false,
    #       create_missing_property: false,
    #       overrides: [
    #         {
    #           asset_model_property_id: "CustomID", # required
    #           interface_asset_model_property_id: "CustomID", # required
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_asset_model_interface_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_id: "ID", # required
    #     interface_asset_model_id: "ID", # required
    #     asset_model_arn: "ARN", # required
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::PutAssetModelInterfaceRelationshipResponse]
    def put_asset_model_interface_relationship(params = {}, options = {})
      request = build_request(:put_asset_model_interface_relationship, params)
      request.send_request(options)
    end

    # <p>Sets the default encryption configuration for the Amazon Web Services account. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in
    #       the <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::PutDefaultEncryptionConfigurationRequest] params
    # @option params [String] :encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    # @option params [String] :kms_key_id
    #   <p>The Key ID of the customer managed key used for KMS encryption. This is required if you
    #         use <code>KMS_BASED_ENCRYPTION</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_type: "SITEWISE_DEFAULT_ENCRYPTION" # One of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"], # required
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.put_default_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_type: "SITEWISE_DEFAULT_ENCRYPTION" # One of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"], # required
    #     kms_key_arn: "ARN",
    #     configuration_status: { # required
    #       state: "ACTIVE" # One of: ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #       }
    #     }
    #   }
    # @return [Types::PutDefaultEncryptionConfigurationResponse]
    def put_default_encryption_configuration(params = {}, options = {})
      request = build_request(:put_default_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Sets logging options for IoT SiteWise.</p>
    # @param [Hash, Types::PutLoggingOptionsRequest] params
    # @option params [Types::LoggingOptions] :logging_options
    #   <p>The logging options to set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_options: { # required
    #       level: "ERROR" # One of: ["ERROR", "INFO", "OFF"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLoggingOptionsResponse]
    def put_logging_options(params = {}, options = {})
      request = build_request(:put_logging_options, params)
      request.send_request(options)
    end

    # <p>Configures storage settings for IoT SiteWise.</p>
    # @param [Hash, Types::PutStorageConfigurationRequest] params
    # @option params [String] :storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    # @option params [Types::MultiLayerStorage] :multi_layer_storage
    #   <p>Identifies a storage destination. If you specified <code>MULTI_LAYER_STORAGE</code> for the storage type,
    #         you must specify a <code>MultiLayerStorage</code> object.</p>
    # @option params [String] :disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    # @option params [String] :warm_tier
    #   <p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>
    # @option params [Types::WarmTierRetentionPeriod] :warm_tier_retention_period
    #   <p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>
    # @option params [Boolean] :disallow_ingest_null_na_n
    #   <p>Describes the configuration for ingesting NULL and NaN data. By default the feature is
    #         allowed. The feature is disallowed if the value is <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     storage_type: "SITEWISE_DEFAULT_STORAGE" # One of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"], # required
    #     multi_layer_storage: {
    #       customer_managed_s3_storage: { # required
    #         s3_resource_arn: "ARN", # required
    #         role_arn: "ARN", # required
    #       }
    #     },
    #     disassociated_data_storage: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     warm_tier: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     warm_tier_retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     disallow_ingest_null_na_n: false
    #   }
    #   options = {}
    #   response = client.put_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_type: "SITEWISE_DEFAULT_STORAGE" # One of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"], # required
    #     multi_layer_storage: {
    #       customer_managed_s3_storage: { # required
    #         s3_resource_arn: "ARN", # required
    #         role_arn: "ARN", # required
    #       }
    #     },
    #     disassociated_data_storage: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     configuration_status: { # required
    #       state: "ACTIVE" # One of: ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #       }
    #     },
    #     warm_tier: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     warm_tier_retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     },
    #     disallow_ingest_null_na_n: false
    #   }
    # @return [Types::PutStorageConfigurationResponse]
    def put_storage_configuration(params = {}, options = {})
      request = build_request(:put_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Adds tags to an IoT SiteWise resource. If a tag already exists for the resource, this operation
    #       updates the tag's value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Removes a tag from an IoT SiteWise resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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

    # <p>Updates an existing access policy that specifies an identity's access to an IoT SiteWise Monitor
    #       portal or project resource.</p>
    # @param [Hash, Types::UpdateAccessPolicyRequest] params
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy.</p>
    # @option params [Types::Identity] :access_policy_identity
    #   <p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>
    # @option params [Types::Resource] :access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    # @option params [String] :access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_policy_id: "ID", # required
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "IamArn", # required
    #       },
    #       iam_role: {
    #         arn: "IamArn", # required
    #       }
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       }
    #     },
    #     access_policy_permission: "ADMINISTRATOR" # One of: ["ADMINISTRATOR", "VIEWER"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAccessPolicyResponse]
    def update_access_policy(params = {}, options = {})
      request = build_request(:update_access_policy, params)
      request.send_request(options)
    end

    # <p>Updates an asset's name. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::UpdateAssetRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_external_id
    #   <p>An external ID to assign to the asset. The asset must not already have an external ID.
    #         The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_name
    #   <p>A friendly name for the asset.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :asset_description
    #   <p>A description for the asset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     asset_external_id: "ExternalId",
    #     asset_name: "Name", # required
    #     client_token: "ClientToken",
    #     asset_description: "Description"
    #   }
    #   options = {}
    #   response = client.update_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssetResponse]
    def update_asset(params = {}, options = {})
      request = build_request(:update_asset, params)
      request.send_request(options)
    end

    # <p>Updates an asset model and all of the assets that were created from the model. Each asset
    #       created from the model inherits the updated asset model's property and hierarchy definitions.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <important>
    #             <p>If you remove a property from an asset model, IoT SiteWise deletes all previous data for that
    #         property. You can’t change the type or data type of an existing property.</p>
    #             <p>To replace an existing asset model property with a new one with the same
    #           <code>name</code>, do the following:</p>
    #             <ol>
    #                <li>
    #                   <p>Submit an <code>UpdateAssetModel</code> request with the entire existing property
    #             removed.</p>
    #                </li>
    #                <li>
    #                   <p>Submit a second <code>UpdateAssetModel</code> request that includes the new
    #             property. The new asset property will have the same <code>name</code> as the previous
    #             one and IoT SiteWise will generate a new unique <code>id</code>.</p>
    #                </li>
    #             </ol>
    #          </important>
    # @param [Hash, Types::UpdateAssetModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_model_external_id
    #   <p>An external ID to assign to the asset model. The asset model must not already have an
    #         external ID. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :asset_model_name
    #   <p>A unique name for the asset model.</p>
    # @option params [String] :asset_model_description
    #   <p>A description for the asset model.</p>
    # @option params [Array<Types::AssetModelProperty>] :asset_model_properties
    #   <p>The updated property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Array<Types::AssetModelHierarchy>] :asset_model_hierarchies
    #   <p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset
    #         model whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [Array<Types::AssetModelCompositeModel>] :asset_model_composite_models
    #   <p>The composite models that are part of this asset model. It groups properties
    #     (such as attributes, measurements, transforms, and metrics) and child composite models that
    #         model parts of your industrial equipment. Each composite model has a type that defines the
    #         properties that the composite model supports. Use composite models to define alarms on this asset model.</p>
    #            <note>
    #               <p>When creating custom composite models, you need to use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">CreateAssetModelCompositeModel</a>. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html">Creating custom composite models (Components)</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The update request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_none_match
    #   <p>Accepts <b>*</b> to reject the update request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    # @option params [String] :match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     asset_model_external_id: "ExternalId",
    #     asset_model_name: "Name", # required
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         child_asset_model_id: "CustomID", # required
    #       }
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [
    #           {
    #             id: "CustomID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue"
    #               },
    #               measurement: {
    #                 processing_config: {
    #                   forwarding_config: { # required
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                   forwarding_config: {
    #                     state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #                   }
    #                 }
    #               },
    #               metric: {
    #                 expression: "Expression",
    #                 variables: [
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                     offset: "Offset"
    #                   }
    #                 },
    #                 processing_config: {
    #                   compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #                 }
    #               }
    #             },
    #             path: [
    #               {
    #                 id: "ID",
    #                 name: "Name"
    #               }
    #             ]
    #           }
    #         ],
    #         id: "CustomID",
    #         external_id: "ExternalId"
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST" # One of: ["LATEST", "ACTIVE"]
    #   }
    #   options = {}
    #   response = client.update_asset_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssetModelResponse]
    def update_asset_model(params = {}, options = {})
      request = build_request(:update_asset_model, params)
      request.send_request(options)
    end

    # <p>Updates a composite model and all of the assets that were created from the model. Each
    #       asset created from the model inherits the updated asset model's property and hierarchy
    #       definitions. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <important>
    #             <p>If you remove a property from a composite asset model, IoT SiteWise deletes all previous data
    #         for that property. You can’t change the type or data type of an existing property.</p>
    #             <p>To replace an existing composite asset model property with a new one with the same
    #           <code>name</code>, do the following:</p>
    #             <ol>
    #                <li>
    #                   <p>Submit an <code>UpdateAssetModelCompositeModel</code> request with the entire
    #             existing property removed.</p>
    #                </li>
    #                <li>
    #                   <p>Submit a second <code>UpdateAssetModelCompositeModel</code> request that includes
    #             the new property. The new asset property will have the same <code>name</code> as the
    #             previous one and IoT SiteWise will generate a new unique <code>id</code>.</p>
    #                </li>
    #             </ol>
    #          </important>
    # @param [Hash, Types::UpdateAssetModelCompositeModelRequest] params
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    # @option params [String] :asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    # @option params [String] :asset_model_composite_model_external_id
    #   <p>An external ID to assign to the asset model. You can only set the external ID of the asset
    #         model if it wasn't set when it was created, or you're setting it to the exact same thing as
    #         when it was created.</p>
    # @option params [String] :asset_model_composite_model_description
    #   <p>A description for the composite model.</p>
    # @option params [String] :asset_model_composite_model_name
    #   <p>A unique name for the composite model.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [Array<Types::AssetModelProperty>] :asset_model_composite_model_properties
    #   <p>The property definitions of the composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models">
    #           Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per composite model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The update request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :if_none_match
    #   <p>Accepts <b>*</b> to reject the update request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    # @option params [String] :match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     asset_model_composite_model_external_id: "ExternalId",
    #     asset_model_composite_model_description: "Description",
    #     asset_model_composite_model_name: "Name", # required
    #     client_token: "ClientToken",
    #     asset_model_composite_model_properties: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"], # required
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue"
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #               forwarding_config: {
    #                 state: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #               }
    #             }
    #           },
    #           metric: {
    #             expression: "Expression",
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset"
    #               }
    #             },
    #             processing_config: {
    #               compute_location: "EDGE" # One of: ["EDGE", "CLOUD"], # required
    #             }
    #           }
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name"
    #           }
    #         ]
    #       }
    #     ],
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST" # One of: ["LATEST", "ACTIVE"]
    #   }
    #   options = {}
    #   response = client.update_asset_model_composite_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_model_composite_model_path: [ # required
    #       {
    #         id: "ID",
    #         name: "Name"
    #       }
    #     ],
    #     asset_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateAssetModelCompositeModelResponse]
    def update_asset_model_composite_model(params = {}, options = {})
      request = build_request(:update_asset_model_composite_model, params)
      request.send_request(options)
    end

    # <p>Updates an asset property's alias and notification state.</p>
    #          <important>
    #             <p>This operation overwrites the property's existing alias and notification state. To keep
    #         your existing property's alias or notification state, you must include the existing values
    #         in the UpdateAssetProperty request. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html">DescribeAssetProperty</a>.</p>
    #          </important>
    # @param [Hash, Types::UpdateAssetPropertyRequest] params
    # @option params [String] :asset_id
    #   <p>The ID of the asset to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_id
    #   <p>The ID of the asset property to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the alias is removed from the property.</p>
    # @option params [String] :property_notification_state
    #   <p>The MQTT notification state (enabled or disabled) for this asset property.
    #         When the notification state is enabled, IoT SiteWise publishes property value
    #         updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :property_unit
    #   <p>The unit of measure (such as Newtons or RPM) of the asset property. If you don't specify a
    #         value for this parameter, the service uses the value of the <code>assetModelProperty</code> in
    #         the asset model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     property_alias: "PropertyAlias",
    #     property_notification_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     client_token: "ClientToken",
    #     property_unit: "PropertyUnit"
    #   }
    #   options = {}
    #   response = client.update_asset_property(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_asset_property(params = {}, options = {})
      request = build_request(:update_asset_property, params)
      request.send_request(options)
    end

    # <p>Updates the computation model.</p>
    # @param [Hash, Types::UpdateComputationModelRequest] params
    # @option params [String] :computation_model_id
    #   <p>The ID of the computation model.</p>
    # @option params [String] :computation_model_name
    #   <p>The name of the computation model.</p>
    # @option params [String] :computation_model_description
    #   <p>The description of the computation model.</p>
    # @option params [Types::ComputationModelConfiguration] :computation_model_configuration
    #   <p>The configuration for the computation model.</p>
    # @option params [Hash<String, Types::ComputationModelDataBindingValue>] :computation_model_data_binding
    #   <p>The data binding for the computation model. Key is a variable name defined in configuration. 
    #     Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     computation_model_id: "ID", # required
    #     computation_model_name: "RestrictedName", # required
    #     computation_model_description: "RestrictedDescription",
    #     computation_model_configuration: { # required
    #       anomaly_detection: {
    #         input_properties: "InputProperties", # required
    #         result_property: "ResultProperty", # required
    #       }
    #     },
    #     computation_model_data_binding: { # required
    #       "ComputationModelDataBindingVariable" => {
    #         asset_model_property: {
    #           asset_model_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         asset_property: {
    #           asset_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         list: [
    #           {
    #             # recursive ComputationModelDataBindingValue
    #           }
    #         ]
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_computation_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     computation_model_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateComputationModelResponse]
    def update_computation_model(params = {}, options = {})
      request = build_request(:update_computation_model, params)
      request.send_request(options)
    end

    # <p>Updates an IoT SiteWise Monitor dashboard.</p>
    # @param [Hash, Types::UpdateDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard to update.</p>
    # @option params [String] :dashboard_name
    #   <p>A new friendly name for the dashboard.</p>
    # @option params [String] :dashboard_description
    #   <p>A new description for the dashboard.</p>
    # @option params [String] :dashboard_definition
    #   <p>The new dashboard definition, as specified in a JSON literal.</p>
    #            <ul>
    #               <li>
    #                  <p>IoT SiteWise Monitor (Classic) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>IoT SiteWise Monitor (AI-aware) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>in the <i>IoT SiteWise User Guide</i>
    #            </p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDashboardResponse]
    def update_dashboard(params = {}, options = {})
      request = build_request(:update_dashboard, params)
      request.send_request(options)
    end

    # <p>Updates a dataset.</p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p>The ID of the dataset.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    # @option params [String] :dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    # @option params [Types::DatasetSource] :dataset_source
    #   <p>The data source for the dataset.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "ID", # required
    #     dataset_name: "RestrictedName", # required
    #     dataset_description: "RestrictedDescription",
    #     dataset_source: { # required
    #       source_type: "KENDRA" # One of: ["KENDRA"], # required
    #       source_format: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE"], # required
    #       source_detail: {
    #         kendra: {
    #           knowledge_base_arn: "ARN", # required
    #           role_arn: "ARN", # required
    #         }
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "ID",
    #     dataset_arn: "ARN",
    #     dataset_status: {
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"], # required
    #       error: {
    #         code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"], # required
    #         message: "ErrorMessage", # required
    #         details: [
    #           {
    #             code: "INCOMPATIBLE_COMPUTE_LOCATION" # One of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"], # required
    #             message: "DetailedErrorMessage", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateDatasetResponse]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p>Updates a gateway's name.</p>
    # @param [Hash, Types::UpdateGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to update.</p>
    # @option params [String] :gateway_name
    #   <p>A unique name for the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "ID", # required
    #     gateway_name: "GatewayName", # required
    #   }
    #   options = {}
    #   response = client.update_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_gateway(params = {}, options = {})
      request = build_request(:update_gateway, params)
      request.send_request(options)
    end

    # <p>Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway.</p>
    #          <p>Important workflow notes:</p>
    #          <p>Each gateway capability defines data sources for a gateway. This is the namespace of the gateway capability.</p>
    #          <p>. The namespace follows the format <code>service:capability:version</code>, where:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>service</code> - The service providing the capability, or <code>iotsitewise</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>capability</code> - The specific capability type. Options include: <code>opcuacollector</code> for the OPC UA data source collector, or <code>publisher</code> for data publisher capability.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>version</code> - The version number of the capability. Option include <code>2</code> for Classic streams, V2 gateways, and <code>3</code> for MQTT-enabled, V3 gateways.</p>
    #             </li>
    #          </ul>
    #          <p>After updating a capability configuration, the sync status becomes <code>OUT_OF_SYNC</code> until the gateway processes the configuration.Use <code>DescribeGatewayCapabilityConfiguration</code> to check the sync status and verify the configuration was applied.</p>
    #          <p>A gateway can have multiple capability configurations with different namespaces.</p>
    # @param [Hash, Types::UpdateGatewayCapabilityConfigurationRequest] params
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to be updated.</p>
    # @option params [String] :capability_namespace
    #   <p>The namespace of the gateway capability configuration to be updated.
    #         For example, if you configure OPC UA
    #         sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:3</code>.</p>
    # @option params [String] :capability_configuration
    #   <p>The JSON document that defines the configuration for the gateway capability. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #     capability_configuration: "CapabilityConfiguration", # required
    #   }
    #   options = {}
    #   response = client.update_gateway_capability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capability_namespace: "CapabilityNamespace", # required
    #     capability_sync_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"], # required
    #   }
    # @return [Types::UpdateGatewayCapabilityConfigurationResponse]
    def update_gateway_capability_configuration(params = {}, options = {})
      request = build_request(:update_gateway_capability_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an IoT SiteWise Monitor portal.</p>
    # @param [Hash, Types::UpdatePortalRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the portal to update.</p>
    # @option params [String] :portal_name
    #   <p>A new friendly name for the portal.</p>
    # @option params [String] :portal_description
    #   <p>A new description for the portal.</p>
    # @option params [String] :portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    # @option params [Types::Image] :portal_logo_image
    #   <p>Contains an image that is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An image file. Choose this option to upload a new image.</p>
    #               </li>
    #               <li>
    #                  <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @option params [String] :notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    # @option params [Types::Alarms] :alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    # @option params [String] :portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    # @option params [Hash<String, Types::PortalTypeEntry>] :portal_type_configuration
    #   <p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "ID", # required
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     portal_logo_image: {
    #       id: "ID",
    #       file: {
    #         data: "data", # required
    #         type: "PNG" # One of: ["PNG"], # required
    #       }
    #     },
    #     role_arn: "IamArn", # required
    #     client_token: "ClientToken",
    #     notification_sender_email: "Email",
    #     alarms: {
    #       alarm_role_arn: "IamArn", # required
    #       notification_lambda_arn: "ARN"
    #     },
    #     portal_type: "SITEWISE_PORTAL_V1" # One of: ["SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"],
    #     portal_type_configuration: {
    #       "PortalTypeKey" => {
    #         portal_tools: ["Name"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_status: { # required
    #       state: "CREATING" # One of: ["CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"], # required
    #       error: {
    #         code: "INTERNAL_FAILURE" # One of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"],
    #         message: "MonitorErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePortalResponse]
    def update_portal(params = {}, options = {})
      request = build_request(:update_portal, params)
      request.send_request(options)
    end

    # <p>Updates an IoT SiteWise Monitor project.</p>
    # @param [Hash, Types::UpdateProjectRequest] params
    # @option params [String] :project_id
    #   <p>The ID of the project to update.</p>
    # @option params [String] :project_name
    #   <p>A new friendly name for the project.</p>
    # @option params [String] :project_description
    #   <p>A new description for the project.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateProjectResponse]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
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
      context[:gem_name] = 'aws-sdk-iotsitewise'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        asset_active: Waiters::AssetActive,
        asset_model_active: Waiters::AssetModelActive,
        asset_model_not_exists: Waiters::AssetModelNotExists,
        asset_not_exists: Waiters::AssetNotExists,
        portal_active: Waiters::PortalActive,
        portal_not_exists: Waiters::PortalNotExists
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
