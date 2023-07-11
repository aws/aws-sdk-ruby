# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:outposts)

module Aws::Outposts
  # An API client for Outposts.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Outposts::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :outposts

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Outposts::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::Outposts::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Outposts::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Cancels the specified order for an Outpost.
    #
    # @option params [required, String] :order_id
    #   The ID of the order.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_order({
    #     order_id: "OrderId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CancelOrder AWS API Documentation
    #
    # @overload cancel_order(params = {})
    # @param [Hash] params ({})
    def cancel_order(params = {}, options = {})
      req = build_request(:cancel_order, params)
      req.send_request(options)
    end

    # Creates an order for an Outpost.
    #
    # @option params [required, String] :outpost_identifier
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @option params [required, Array<Types::LineItemRequest>] :line_items
    #   The line items that make up the order.
    #
    # @option params [required, String] :payment_option
    #   The payment option.
    #
    # @option params [String] :payment_term
    #   The payment terms.
    #
    # @return [Types::CreateOrderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOrderOutput#order #order} => Types::Order
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_order({
    #     outpost_identifier: "OutpostIdentifier", # required
    #     line_items: [ # required
    #       {
    #         catalog_item_id: "SkuCode",
    #         quantity: 1,
    #       },
    #     ],
    #     payment_option: "ALL_UPFRONT", # required, accepts ALL_UPFRONT, NO_UPFRONT, PARTIAL_UPFRONT
    #     payment_term: "THREE_YEARS", # accepts THREE_YEARS, ONE_YEAR
    #   })
    #
    # @example Response structure
    #
    #   resp.order.outpost_id #=> String
    #   resp.order.order_id #=> String
    #   resp.order.status #=> String, one of "RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"
    #   resp.order.line_items #=> Array
    #   resp.order.line_items[0].catalog_item_id #=> String
    #   resp.order.line_items[0].line_item_id #=> String
    #   resp.order.line_items[0].quantity #=> Integer
    #   resp.order.line_items[0].status #=> String, one of "PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED", "REPLACED"
    #   resp.order.line_items[0].shipment_information.shipment_tracking_number #=> String
    #   resp.order.line_items[0].shipment_information.shipment_carrier #=> String, one of "DHL", "DBS", "FEDEX", "UPS"
    #   resp.order.line_items[0].asset_information_list #=> Array
    #   resp.order.line_items[0].asset_information_list[0].asset_id #=> String
    #   resp.order.line_items[0].asset_information_list[0].mac_address_list #=> Array
    #   resp.order.line_items[0].asset_information_list[0].mac_address_list[0] #=> String
    #   resp.order.line_items[0].previous_line_item_id #=> String
    #   resp.order.line_items[0].previous_order_id #=> String
    #   resp.order.payment_option #=> String, one of "ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"
    #   resp.order.order_submission_date #=> Time
    #   resp.order.order_fulfilled_date #=> Time
    #   resp.order.payment_term #=> String, one of "THREE_YEARS", "ONE_YEAR"
    #   resp.order.order_type #=> String, one of "OUTPOST", "REPLACEMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOrder AWS API Documentation
    #
    # @overload create_order(params = {})
    # @param [Hash] params ({})
    def create_order(params = {}, options = {})
      req = build_request(:create_order, params)
      req.send_request(options)
    end

    # Creates an Outpost.
    #
    # You can specify either an Availability one or an AZ ID.
    #
    # @option params [required, String] :name
    #   The name of the Outpost.
    #
    # @option params [String] :description
    #   The description of the Outpost.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone.
    #
    # @option params [String] :availability_zone_id
    #   The ID of the Availability Zone.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the Outpost.
    #
    # @option params [String] :supported_hardware_type
    #   The type of hardware for this Outpost.
    #
    # @return [Types::CreateOutpostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutpostOutput#outpost #outpost} => Types::Outpost
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outpost({
    #     name: "OutpostName", # required
    #     description: "OutpostDescription",
    #     site_id: "SiteId", # required
    #     availability_zone: "AvailabilityZone",
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     supported_hardware_type: "RACK", # accepts RACK, SERVER
    #   })
    #
    # @example Response structure
    #
    #   resp.outpost.outpost_id #=> String
    #   resp.outpost.owner_id #=> String
    #   resp.outpost.outpost_arn #=> String
    #   resp.outpost.site_id #=> String
    #   resp.outpost.name #=> String
    #   resp.outpost.description #=> String
    #   resp.outpost.life_cycle_status #=> String
    #   resp.outpost.availability_zone #=> String
    #   resp.outpost.availability_zone_id #=> String
    #   resp.outpost.tags #=> Hash
    #   resp.outpost.tags["TagKey"] #=> String
    #   resp.outpost.site_arn #=> String
    #   resp.outpost.supported_hardware_type #=> String, one of "RACK", "SERVER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpost AWS API Documentation
    #
    # @overload create_outpost(params = {})
    # @param [Hash] params ({})
    def create_outpost(params = {}, options = {})
      req = build_request(:create_outpost, params)
      req.send_request(options)
    end

    # Creates a site for an Outpost.
    #
    # @option params [required, String] :name
    #   The name of the site.
    #
    # @option params [String] :description
    #   The description of the site.
    #
    # @option params [String] :notes
    #   Additional information that you provide about site access
    #   requirements, electrician scheduling, personal protective equipment,
    #   or regulation of equipment materials that could affect your
    #   installation process.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to a site.
    #
    # @option params [Types::Address] :operating_address
    #   The location to install and power on the hardware. This address might
    #   be different from the shipping address.
    #
    # @option params [Types::Address] :shipping_address
    #   The location to ship the hardware. This address might be different
    #   from the operating address.
    #
    # @option params [Types::RackPhysicalProperties] :rack_physical_properties
    #   Information about the physical and logistical details for the rack at
    #   this site. For more information about hardware requirements for racks,
    #   see [Network readiness checklist][1] in the Amazon Web Services
    #   Outposts User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist
    #
    # @return [Types::CreateSiteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSiteOutput#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site({
    #     name: "SiteName", # required
    #     description: "SiteDescription",
    #     notes: "SiteNotes",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     operating_address: {
    #       contact_name: "ContactName",
    #       contact_phone_number: "ContactPhoneNumber",
    #       address_line_1: "AddressLine1", # required
    #       address_line_2: "AddressLine2",
    #       address_line_3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality",
    #     },
    #     shipping_address: {
    #       contact_name: "ContactName",
    #       contact_phone_number: "ContactPhoneNumber",
    #       address_line_1: "AddressLine1", # required
    #       address_line_2: "AddressLine2",
    #       address_line_3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality",
    #     },
    #     rack_physical_properties: {
    #       power_draw_kva: "POWER_5_KVA", # accepts POWER_5_KVA, POWER_10_KVA, POWER_15_KVA, POWER_30_KVA
    #       power_phase: "SINGLE_PHASE", # accepts SINGLE_PHASE, THREE_PHASE
    #       power_connector: "L6_30P", # accepts L6_30P, IEC309, AH530P7W, AH532P6W
    #       power_feed_drop: "ABOVE_RACK", # accepts ABOVE_RACK, BELOW_RACK
    #       uplink_gbps: "UPLINK_1G", # accepts UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G
    #       uplink_count: "UPLINK_COUNT_1", # accepts UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16
    #       fiber_optic_cable_type: "SINGLE_MODE", # accepts SINGLE_MODE, MULTI_MODE
    #       optical_standard: "OPTIC_10GBASE_SR", # accepts OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX
    #       maximum_supported_weight_lbs: "NO_LIMIT", # accepts NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.account_id #=> String
    #   resp.site.name #=> String
    #   resp.site.description #=> String
    #   resp.site.tags #=> Hash
    #   resp.site.tags["TagKey"] #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.notes #=> String
    #   resp.site.operating_address_country_code #=> String
    #   resp.site.operating_address_state_or_region #=> String
    #   resp.site.operating_address_city #=> String
    #   resp.site.rack_physical_properties.power_draw_kva #=> String, one of "POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"
    #   resp.site.rack_physical_properties.power_phase #=> String, one of "SINGLE_PHASE", "THREE_PHASE"
    #   resp.site.rack_physical_properties.power_connector #=> String, one of "L6_30P", "IEC309", "AH530P7W", "AH532P6W"
    #   resp.site.rack_physical_properties.power_feed_drop #=> String, one of "ABOVE_RACK", "BELOW_RACK"
    #   resp.site.rack_physical_properties.uplink_gbps #=> String, one of "UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"
    #   resp.site.rack_physical_properties.uplink_count #=> String, one of "UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"
    #   resp.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of "SINGLE_MODE", "MULTI_MODE"
    #   resp.site.rack_physical_properties.optical_standard #=> String, one of "OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"
    #   resp.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of "NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateSite AWS API Documentation
    #
    # @overload create_site(params = {})
    # @param [Hash] params ({})
    def create_site(params = {}, options = {})
      req = build_request(:create_site, params)
      req.send_request(options)
    end

    # Deletes the specified Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outpost({
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpost AWS API Documentation
    #
    # @overload delete_outpost(params = {})
    # @param [Hash] params ({})
    def delete_outpost(params = {}, options = {})
      req = build_request(:delete_outpost, params)
      req.send_request(options)
    end

    # Deletes the specified site.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site({
    #     site_id: "SiteId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSite AWS API Documentation
    #
    # @overload delete_site(params = {})
    # @param [Hash] params ({})
    def delete_site(params = {}, options = {})
      req = build_request(:delete_site, params)
      req.send_request(options)
    end

    # Gets information about the specified catalog item.
    #
    # @option params [required, String] :catalog_item_id
    #   The ID of the catalog item.
    #
    # @return [Types::GetCatalogItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCatalogItemOutput#catalog_item #catalog_item} => Types::CatalogItem
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_catalog_item({
    #     catalog_item_id: "SkuCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog_item.catalog_item_id #=> String
    #   resp.catalog_item.item_status #=> String, one of "AVAILABLE", "DISCONTINUED"
    #   resp.catalog_item.ec2_capacities #=> Array
    #   resp.catalog_item.ec2_capacities[0].family #=> String
    #   resp.catalog_item.ec2_capacities[0].max_size #=> String
    #   resp.catalog_item.ec2_capacities[0].quantity #=> String
    #   resp.catalog_item.power_kva #=> Float
    #   resp.catalog_item.weight_lbs #=> Integer
    #   resp.catalog_item.supported_uplink_gbps #=> Array
    #   resp.catalog_item.supported_uplink_gbps[0] #=> Integer
    #   resp.catalog_item.supported_storage #=> Array
    #   resp.catalog_item.supported_storage[0] #=> String, one of "EBS", "S3"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetCatalogItem AWS API Documentation
    #
    # @overload get_catalog_item(params = {})
    # @param [Hash] params ({})
    def get_catalog_item(params = {}, options = {})
      req = build_request(:get_catalog_item, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon Web Services uses this action to install Outpost servers.
    #
    #  </note>
    #
    # Gets information about the specified connection.
    #
    # Use CloudTrail to monitor this action or Amazon Web Services managed
    # policy for Amazon Web Services Outposts to secure it. For more
    # information, see [ Amazon Web Services managed policies for Amazon Web
    # Services Outposts][1] and [ Logging Amazon Web Services Outposts API
    # calls with Amazon Web Services CloudTrail][2] in the *Amazon Web
    # Services Outposts User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html
    # [2]: https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @return [Types::GetConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionResponse#connection_id #connection_id} => String
    #   * {Types::GetConnectionResponse#connection_details #connection_details} => Types::ConnectionDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_id #=> String
    #   resp.connection_details.client_public_key #=> String
    #   resp.connection_details.server_public_key #=> String
    #   resp.connection_details.server_endpoint #=> String
    #   resp.connection_details.client_tunnel_address #=> String
    #   resp.connection_details.server_tunnel_address #=> String
    #   resp.connection_details.allowed_ips #=> Array
    #   resp.connection_details.allowed_ips[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Gets information about the specified order.
    #
    # @option params [required, String] :order_id
    #   The ID of the order.
    #
    # @return [Types::GetOrderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrderOutput#order #order} => Types::Order
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_order({
    #     order_id: "OrderId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.order.outpost_id #=> String
    #   resp.order.order_id #=> String
    #   resp.order.status #=> String, one of "RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"
    #   resp.order.line_items #=> Array
    #   resp.order.line_items[0].catalog_item_id #=> String
    #   resp.order.line_items[0].line_item_id #=> String
    #   resp.order.line_items[0].quantity #=> Integer
    #   resp.order.line_items[0].status #=> String, one of "PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED", "REPLACED"
    #   resp.order.line_items[0].shipment_information.shipment_tracking_number #=> String
    #   resp.order.line_items[0].shipment_information.shipment_carrier #=> String, one of "DHL", "DBS", "FEDEX", "UPS"
    #   resp.order.line_items[0].asset_information_list #=> Array
    #   resp.order.line_items[0].asset_information_list[0].asset_id #=> String
    #   resp.order.line_items[0].asset_information_list[0].mac_address_list #=> Array
    #   resp.order.line_items[0].asset_information_list[0].mac_address_list[0] #=> String
    #   resp.order.line_items[0].previous_line_item_id #=> String
    #   resp.order.line_items[0].previous_order_id #=> String
    #   resp.order.payment_option #=> String, one of "ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"
    #   resp.order.order_submission_date #=> Time
    #   resp.order.order_fulfilled_date #=> Time
    #   resp.order.payment_term #=> String, one of "THREE_YEARS", "ONE_YEAR"
    #   resp.order.order_type #=> String, one of "OUTPOST", "REPLACEMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOrder AWS API Documentation
    #
    # @overload get_order(params = {})
    # @param [Hash] params ({})
    def get_order(params = {}, options = {})
      req = build_request(:get_order, params)
      req.send_request(options)
    end

    # Gets information about the specified Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @return [Types::GetOutpostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutpostOutput#outpost #outpost} => Types::Outpost
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost({
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.outpost.outpost_id #=> String
    #   resp.outpost.owner_id #=> String
    #   resp.outpost.outpost_arn #=> String
    #   resp.outpost.site_id #=> String
    #   resp.outpost.name #=> String
    #   resp.outpost.description #=> String
    #   resp.outpost.life_cycle_status #=> String
    #   resp.outpost.availability_zone #=> String
    #   resp.outpost.availability_zone_id #=> String
    #   resp.outpost.tags #=> Hash
    #   resp.outpost.tags["TagKey"] #=> String
    #   resp.outpost.site_arn #=> String
    #   resp.outpost.supported_hardware_type #=> String, one of "RACK", "SERVER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpost AWS API Documentation
    #
    # @overload get_outpost(params = {})
    # @param [Hash] params ({})
    def get_outpost(params = {}, options = {})
      req = build_request(:get_outpost, params)
      req.send_request(options)
    end

    # Gets the instance types for the specified Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @return [Types::GetOutpostInstanceTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutpostInstanceTypesOutput#instance_types #instance_types} => Array&lt;Types::InstanceTypeItem&gt;
    #   * {Types::GetOutpostInstanceTypesOutput#next_token #next_token} => String
    #   * {Types::GetOutpostInstanceTypesOutput#outpost_id #outpost_id} => String
    #   * {Types::GetOutpostInstanceTypesOutput#outpost_arn #outpost_arn} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost_instance_types({
    #     outpost_id: "OutpostId", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_types #=> Array
    #   resp.instance_types[0].instance_type #=> String
    #   resp.next_token #=> String
    #   resp.outpost_id #=> String
    #   resp.outpost_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypes AWS API Documentation
    #
    # @overload get_outpost_instance_types(params = {})
    # @param [Hash] params ({})
    def get_outpost_instance_types(params = {}, options = {})
      req = build_request(:get_outpost_instance_types, params)
      req.send_request(options)
    end

    # Gets information about the specified Outpost site.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @return [Types::GetSiteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSiteOutput#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site({
    #     site_id: "SiteId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.account_id #=> String
    #   resp.site.name #=> String
    #   resp.site.description #=> String
    #   resp.site.tags #=> Hash
    #   resp.site.tags["TagKey"] #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.notes #=> String
    #   resp.site.operating_address_country_code #=> String
    #   resp.site.operating_address_state_or_region #=> String
    #   resp.site.operating_address_city #=> String
    #   resp.site.rack_physical_properties.power_draw_kva #=> String, one of "POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"
    #   resp.site.rack_physical_properties.power_phase #=> String, one of "SINGLE_PHASE", "THREE_PHASE"
    #   resp.site.rack_physical_properties.power_connector #=> String, one of "L6_30P", "IEC309", "AH530P7W", "AH532P6W"
    #   resp.site.rack_physical_properties.power_feed_drop #=> String, one of "ABOVE_RACK", "BELOW_RACK"
    #   resp.site.rack_physical_properties.uplink_gbps #=> String, one of "UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"
    #   resp.site.rack_physical_properties.uplink_count #=> String, one of "UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"
    #   resp.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of "SINGLE_MODE", "MULTI_MODE"
    #   resp.site.rack_physical_properties.optical_standard #=> String, one of "OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"
    #   resp.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of "NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSite AWS API Documentation
    #
    # @overload get_site(params = {})
    # @param [Hash] params ({})
    def get_site(params = {}, options = {})
      req = build_request(:get_site, params)
      req.send_request(options)
    end

    # Gets the site address of the specified site.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @option params [required, String] :address_type
    #   The type of the address you request.
    #
    # @return [Types::GetSiteAddressOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSiteAddressOutput#site_id #site_id} => String
    #   * {Types::GetSiteAddressOutput#address_type #address_type} => String
    #   * {Types::GetSiteAddressOutput#address #address} => Types::Address
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site_address({
    #     site_id: "SiteId", # required
    #     address_type: "SHIPPING_ADDRESS", # required, accepts SHIPPING_ADDRESS, OPERATING_ADDRESS
    #   })
    #
    # @example Response structure
    #
    #   resp.site_id #=> String
    #   resp.address_type #=> String, one of "SHIPPING_ADDRESS", "OPERATING_ADDRESS"
    #   resp.address.contact_name #=> String
    #   resp.address.contact_phone_number #=> String
    #   resp.address.address_line_1 #=> String
    #   resp.address.address_line_2 #=> String
    #   resp.address.address_line_3 #=> String
    #   resp.address.city #=> String
    #   resp.address.state_or_region #=> String
    #   resp.address.district_or_county #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.country_code #=> String
    #   resp.address.municipality #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetSiteAddress AWS API Documentation
    #
    # @overload get_site_address(params = {})
    # @param [Hash] params ({})
    def get_site_address(params = {}, options = {})
      req = build_request(:get_site_address, params)
      req.send_request(options)
    end

    # Lists the hardware assets for the specified Outpost.
    #
    # Use filters to return specific results. If you specify multiple
    # filters, the results include only the resources that match all of the
    # specified filters. For a filter where you can specify multiple values,
    # the results include items that match any of the values that you
    # specify for the filter.
    #
    # @option params [required, String] :outpost_identifier
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @option params [Array<String>] :host_id_filter
    #   Filters the results by the host ID of a Dedicated Host.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Array<String>] :status_filter
    #   Filters the results by state.
    #
    # @return [Types::ListAssetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetsOutput#assets #assets} => Array&lt;Types::AssetInfo&gt;
    #   * {Types::ListAssetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets({
    #     outpost_identifier: "OutpostIdentifier", # required
    #     host_id_filter: ["HostId"],
    #     max_results: 1,
    #     next_token: "Token",
    #     status_filter: ["ACTIVE"], # accepts ACTIVE, RETIRING, ISOLATED
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].rack_id #=> String
    #   resp.assets[0].asset_type #=> String, one of "COMPUTE"
    #   resp.assets[0].compute_attributes.host_id #=> String
    #   resp.assets[0].compute_attributes.state #=> String, one of "ACTIVE", "ISOLATED", "RETIRING"
    #   resp.assets[0].asset_location.rack_elevation #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListAssets AWS API Documentation
    #
    # @overload list_assets(params = {})
    # @param [Hash] params ({})
    def list_assets(params = {}, options = {})
      req = build_request(:list_assets, params)
      req.send_request(options)
    end

    # Lists the items in the catalog.
    #
    # Use filters to return specific results. If you specify multiple
    # filters, the results include only the resources that match all of the
    # specified filters. For a filter where you can specify multiple values,
    # the results include items that match any of the values that you
    # specify for the filter.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @option params [Array<String>] :item_class_filter
    #   Filters the results by item class.
    #
    # @option params [Array<String>] :supported_storage_filter
    #   Filters the results by storage option.
    #
    # @option params [Array<String>] :ec2_family_filter
    #   Filters the results by EC2 family (for example, M5).
    #
    # @return [Types::ListCatalogItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCatalogItemsOutput#catalog_items #catalog_items} => Array&lt;Types::CatalogItem&gt;
    #   * {Types::ListCatalogItemsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_catalog_items({
    #     next_token: "Token",
    #     max_results: 1,
    #     item_class_filter: ["RACK"], # accepts RACK, SERVER
    #     supported_storage_filter: ["EBS"], # accepts EBS, S3
    #     ec2_family_filter: ["Family"],
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog_items #=> Array
    #   resp.catalog_items[0].catalog_item_id #=> String
    #   resp.catalog_items[0].item_status #=> String, one of "AVAILABLE", "DISCONTINUED"
    #   resp.catalog_items[0].ec2_capacities #=> Array
    #   resp.catalog_items[0].ec2_capacities[0].family #=> String
    #   resp.catalog_items[0].ec2_capacities[0].max_size #=> String
    #   resp.catalog_items[0].ec2_capacities[0].quantity #=> String
    #   resp.catalog_items[0].power_kva #=> Float
    #   resp.catalog_items[0].weight_lbs #=> Integer
    #   resp.catalog_items[0].supported_uplink_gbps #=> Array
    #   resp.catalog_items[0].supported_uplink_gbps[0] #=> Integer
    #   resp.catalog_items[0].supported_storage #=> Array
    #   resp.catalog_items[0].supported_storage[0] #=> String, one of "EBS", "S3"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListCatalogItems AWS API Documentation
    #
    # @overload list_catalog_items(params = {})
    # @param [Hash] params ({})
    def list_catalog_items(params = {}, options = {})
      req = build_request(:list_catalog_items, params)
      req.send_request(options)
    end

    # Lists the Outpost orders for your Amazon Web Services account.
    #
    # @option params [String] :outpost_identifier_filter
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @return [Types::ListOrdersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrdersOutput#orders #orders} => Array&lt;Types::OrderSummary&gt;
    #   * {Types::ListOrdersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_orders({
    #     outpost_identifier_filter: "OutpostIdentifier",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.orders #=> Array
    #   resp.orders[0].outpost_id #=> String
    #   resp.orders[0].order_id #=> String
    #   resp.orders[0].order_type #=> String, one of "OUTPOST", "REPLACEMENT"
    #   resp.orders[0].status #=> String, one of "RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"
    #   resp.orders[0].line_item_counts_by_status #=> Hash
    #   resp.orders[0].line_item_counts_by_status["LineItemStatus"] #=> Integer
    #   resp.orders[0].order_submission_date #=> Time
    #   resp.orders[0].order_fulfilled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOrders AWS API Documentation
    #
    # @overload list_orders(params = {})
    # @param [Hash] params ({})
    def list_orders(params = {}, options = {})
      req = build_request(:list_orders, params)
      req.send_request(options)
    end

    # Lists the Outposts for your Amazon Web Services account.
    #
    # Use filters to return specific results. If you specify multiple
    # filters, the results include only the resources that match all of the
    # specified filters. For a filter where you can specify multiple values,
    # the results include items that match any of the values that you
    # specify for the filter.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @option params [Array<String>] :life_cycle_status_filter
    #   Filters the results by the lifecycle status.
    #
    # @option params [Array<String>] :availability_zone_filter
    #   Filters the results by Availability Zone (for example, `us-east-1a`).
    #
    # @option params [Array<String>] :availability_zone_id_filter
    #   Filters the results by AZ ID (for example, `use1-az1`).
    #
    # @return [Types::ListOutpostsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOutpostsOutput#outposts #outposts} => Array&lt;Types::Outpost&gt;
    #   * {Types::ListOutpostsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outposts({
    #     next_token: "Token",
    #     max_results: 1,
    #     life_cycle_status_filter: ["LifeCycleStatus"],
    #     availability_zone_filter: ["AvailabilityZone"],
    #     availability_zone_id_filter: ["AvailabilityZoneId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.outposts #=> Array
    #   resp.outposts[0].outpost_id #=> String
    #   resp.outposts[0].owner_id #=> String
    #   resp.outposts[0].outpost_arn #=> String
    #   resp.outposts[0].site_id #=> String
    #   resp.outposts[0].name #=> String
    #   resp.outposts[0].description #=> String
    #   resp.outposts[0].life_cycle_status #=> String
    #   resp.outposts[0].availability_zone #=> String
    #   resp.outposts[0].availability_zone_id #=> String
    #   resp.outposts[0].tags #=> Hash
    #   resp.outposts[0].tags["TagKey"] #=> String
    #   resp.outposts[0].site_arn #=> String
    #   resp.outposts[0].supported_hardware_type #=> String, one of "RACK", "SERVER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutposts AWS API Documentation
    #
    # @overload list_outposts(params = {})
    # @param [Hash] params ({})
    def list_outposts(params = {}, options = {})
      req = build_request(:list_outposts, params)
      req.send_request(options)
    end

    # Lists the Outpost sites for your Amazon Web Services account. Use
    # filters to return specific results.
    #
    # Use filters to return specific results. If you specify multiple
    # filters, the results include only the resources that match all of the
    # specified filters. For a filter where you can specify multiple values,
    # the results include items that match any of the values that you
    # specify for the filter.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @option params [Array<String>] :operating_address_country_code_filter
    #   Filters the results by country code.
    #
    # @option params [Array<String>] :operating_address_state_or_region_filter
    #   Filters the results by state or region.
    #
    # @option params [Array<String>] :operating_address_city_filter
    #   Filters the results by city.
    #
    # @return [Types::ListSitesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSitesOutput#sites #sites} => Array&lt;Types::Site&gt;
    #   * {Types::ListSitesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sites({
    #     next_token: "Token",
    #     max_results: 1,
    #     operating_address_country_code_filter: ["CountryCode"],
    #     operating_address_state_or_region_filter: ["StateOrRegion"],
    #     operating_address_city_filter: ["City"],
    #   })
    #
    # @example Response structure
    #
    #   resp.sites #=> Array
    #   resp.sites[0].site_id #=> String
    #   resp.sites[0].account_id #=> String
    #   resp.sites[0].name #=> String
    #   resp.sites[0].description #=> String
    #   resp.sites[0].tags #=> Hash
    #   resp.sites[0].tags["TagKey"] #=> String
    #   resp.sites[0].site_arn #=> String
    #   resp.sites[0].notes #=> String
    #   resp.sites[0].operating_address_country_code #=> String
    #   resp.sites[0].operating_address_state_or_region #=> String
    #   resp.sites[0].operating_address_city #=> String
    #   resp.sites[0].rack_physical_properties.power_draw_kva #=> String, one of "POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"
    #   resp.sites[0].rack_physical_properties.power_phase #=> String, one of "SINGLE_PHASE", "THREE_PHASE"
    #   resp.sites[0].rack_physical_properties.power_connector #=> String, one of "L6_30P", "IEC309", "AH530P7W", "AH532P6W"
    #   resp.sites[0].rack_physical_properties.power_feed_drop #=> String, one of "ABOVE_RACK", "BELOW_RACK"
    #   resp.sites[0].rack_physical_properties.uplink_gbps #=> String, one of "UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"
    #   resp.sites[0].rack_physical_properties.uplink_count #=> String, one of "UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"
    #   resp.sites[0].rack_physical_properties.fiber_optic_cable_type #=> String, one of "SINGLE_MODE", "MULTI_MODE"
    #   resp.sites[0].rack_physical_properties.optical_standard #=> String, one of "OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"
    #   resp.sites[0].rack_physical_properties.maximum_supported_weight_lbs #=> String, one of "NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSites AWS API Documentation
    #
    # @overload list_sites(params = {})
    # @param [Hash] params ({})
    def list_sites(params = {}, options = {})
      req = build_request(:list_sites, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon Web Services uses this action to install Outpost servers.
    #
    #  </note>
    #
    # Starts the connection required for Outpost server installation.
    #
    # Use CloudTrail to monitor this action or Amazon Web Services managed
    # policy for Amazon Web Services Outposts to secure it. For more
    # information, see [ Amazon Web Services managed policies for Amazon Web
    # Services Outposts][1] and [ Logging Amazon Web Services Outposts API
    # calls with Amazon Web Services CloudTrail][2] in the *Amazon Web
    # Services Outposts User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html
    # [2]: https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html
    #
    # @option params [required, String] :device_serial_number
    #   The serial number of the dongle.
    #
    # @option params [required, String] :asset_id
    #   The ID of the Outpost server.
    #
    # @option params [required, String] :client_public_key
    #   The public key of the client.
    #
    # @option params [required, Integer] :network_interface_device_index
    #   The device index of the network interface on the Outpost server.
    #
    # @return [Types::StartConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartConnectionResponse#connection_id #connection_id} => String
    #   * {Types::StartConnectionResponse#underlay_ip_address #underlay_ip_address} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_connection({
    #     device_serial_number: "DeviceSerialNumber", # required
    #     asset_id: "AssetId", # required
    #     client_public_key: "WireGuardPublicKey", # required
    #     network_interface_device_index: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_id #=> String
    #   resp.underlay_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/StartConnection AWS API Documentation
    #
    # @overload start_connection(params = {})
    # @param [Hash] params ({})
    def start_connection(params = {}, options = {})
      req = build_request(:start_connection, params)
      req.send_request(options)
    end

    # Adds tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID or the Amazon Resource Name (ARN) of the Outpost.
    #
    # @option params [String] :name
    #   The name of the Outpost.
    #
    # @option params [String] :description
    #   The description of the Outpost.
    #
    # @option params [String] :supported_hardware_type
    #   The type of hardware for this Outpost.
    #
    # @return [Types::UpdateOutpostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOutpostOutput#outpost #outpost} => Types::Outpost
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_outpost({
    #     outpost_id: "OutpostId", # required
    #     name: "OutpostName",
    #     description: "OutpostDescription",
    #     supported_hardware_type: "RACK", # accepts RACK, SERVER
    #   })
    #
    # @example Response structure
    #
    #   resp.outpost.outpost_id #=> String
    #   resp.outpost.owner_id #=> String
    #   resp.outpost.outpost_arn #=> String
    #   resp.outpost.site_id #=> String
    #   resp.outpost.name #=> String
    #   resp.outpost.description #=> String
    #   resp.outpost.life_cycle_status #=> String
    #   resp.outpost.availability_zone #=> String
    #   resp.outpost.availability_zone_id #=> String
    #   resp.outpost.tags #=> Hash
    #   resp.outpost.tags["TagKey"] #=> String
    #   resp.outpost.site_arn #=> String
    #   resp.outpost.supported_hardware_type #=> String, one of "RACK", "SERVER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateOutpost AWS API Documentation
    #
    # @overload update_outpost(params = {})
    # @param [Hash] params ({})
    def update_outpost(params = {}, options = {})
      req = build_request(:update_outpost, params)
      req.send_request(options)
    end

    # Updates the specified site.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @option params [String] :name
    #   The name of the site.
    #
    # @option params [String] :description
    #   The description of the site.
    #
    # @option params [String] :notes
    #   Notes about a site.
    #
    # @return [Types::UpdateSiteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteOutput#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site({
    #     site_id: "SiteId", # required
    #     name: "SiteName",
    #     description: "SiteDescription",
    #     notes: "SiteNotes",
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.account_id #=> String
    #   resp.site.name #=> String
    #   resp.site.description #=> String
    #   resp.site.tags #=> Hash
    #   resp.site.tags["TagKey"] #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.notes #=> String
    #   resp.site.operating_address_country_code #=> String
    #   resp.site.operating_address_state_or_region #=> String
    #   resp.site.operating_address_city #=> String
    #   resp.site.rack_physical_properties.power_draw_kva #=> String, one of "POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"
    #   resp.site.rack_physical_properties.power_phase #=> String, one of "SINGLE_PHASE", "THREE_PHASE"
    #   resp.site.rack_physical_properties.power_connector #=> String, one of "L6_30P", "IEC309", "AH530P7W", "AH532P6W"
    #   resp.site.rack_physical_properties.power_feed_drop #=> String, one of "ABOVE_RACK", "BELOW_RACK"
    #   resp.site.rack_physical_properties.uplink_gbps #=> String, one of "UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"
    #   resp.site.rack_physical_properties.uplink_count #=> String, one of "UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"
    #   resp.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of "SINGLE_MODE", "MULTI_MODE"
    #   resp.site.rack_physical_properties.optical_standard #=> String, one of "OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"
    #   resp.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of "NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSite AWS API Documentation
    #
    # @overload update_site(params = {})
    # @param [Hash] params ({})
    def update_site(params = {}, options = {})
      req = build_request(:update_site, params)
      req.send_request(options)
    end

    # Updates the address of the specified site.
    #
    # You can't update a site address if there is an order in progress. You
    # must wait for the order to complete or cancel the order.
    #
    # You can update the operating address before you place an order at the
    # site, or after all Outposts that belong to the site have been
    # deactivated.
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @option params [required, String] :address_type
    #   The type of the address.
    #
    # @option params [required, Types::Address] :address
    #   The address for the site.
    #
    # @return [Types::UpdateSiteAddressOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteAddressOutput#address_type #address_type} => String
    #   * {Types::UpdateSiteAddressOutput#address #address} => Types::Address
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site_address({
    #     site_id: "SiteId", # required
    #     address_type: "SHIPPING_ADDRESS", # required, accepts SHIPPING_ADDRESS, OPERATING_ADDRESS
    #     address: { # required
    #       contact_name: "ContactName",
    #       contact_phone_number: "ContactPhoneNumber",
    #       address_line_1: "AddressLine1", # required
    #       address_line_2: "AddressLine2",
    #       address_line_3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.address_type #=> String, one of "SHIPPING_ADDRESS", "OPERATING_ADDRESS"
    #   resp.address.contact_name #=> String
    #   resp.address.contact_phone_number #=> String
    #   resp.address.address_line_1 #=> String
    #   resp.address.address_line_2 #=> String
    #   resp.address.address_line_3 #=> String
    #   resp.address.city #=> String
    #   resp.address.state_or_region #=> String
    #   resp.address.district_or_county #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.country_code #=> String
    #   resp.address.municipality #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteAddress AWS API Documentation
    #
    # @overload update_site_address(params = {})
    # @param [Hash] params ({})
    def update_site_address(params = {}, options = {})
      req = build_request(:update_site_address, params)
      req.send_request(options)
    end

    # Update the physical and logistical details for a rack at a site. For
    # more information about hardware requirements for racks, see [Network
    # readiness checklist][1] in the Amazon Web Services Outposts User
    # Guide.
    #
    # To update a rack at a site with an order of `IN_PROGRESS`, you must
    # wait for the order to complete or cancel the order.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist
    #
    # @option params [required, String] :site_id
    #   The ID or the Amazon Resource Name (ARN) of the site.
    #
    # @option params [String] :power_draw_kva
    #   The power draw, in kVA, available at the hardware placement position
    #   for the rack.
    #
    # @option params [String] :power_phase
    #   The power option that you can provide for hardware.
    #
    #   * Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz
    #
    #   * Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz
    #
    # @option params [String] :power_connector
    #   The power connector that Amazon Web Services should plan to provide
    #   for connections to the hardware. Note the correlation between
    #   `PowerPhase` and `PowerConnector`.
    #
    #   * Single-phase AC feed
    #
    #     * **L6-30P** – (common in US); 30A; single phase
    #
    #     * **IEC309 (blue)** – P+N+E, 6hr; 32 A; single phase
    #
    #   * Three-phase AC feed
    #
    #     * **AH530P7W (red)** – 3P+N+E, 7hr; 30A; three phase
    #
    #     * **AH532P6W (red)** – 3P+N+E, 6hr; 32A; three phase
    #
    # @option params [String] :power_feed_drop
    #   Indicates whether the power feed comes above or below the rack.
    #
    # @option params [String] :uplink_gbps
    #   The uplink speed the rack should support for the connection to the
    #   Region.
    #
    # @option params [String] :uplink_count
    #   Racks come with two Outpost network devices. Depending on the
    #   supported uplink speed at the site, the Outpost network devices
    #   provide a variable number of uplinks. Specify the number of uplinks
    #   for each Outpost network device that you intend to use to connect the
    #   rack to your network. Note the correlation between `UplinkGbps` and
    #   `UplinkCount`.
    #
    #   * 1Gbps - Uplinks available: 1, 2, 4, 6, 8
    #
    #   * 10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16
    #
    #   * 40 and 100 Gbps- Uplinks available: 1, 2, 4
    #
    # @option params [String] :fiber_optic_cable_type
    #   The type of fiber that you will use to attach the Outpost to your
    #   network.
    #
    # @option params [String] :optical_standard
    #   The type of optical standard that you will use to attach the Outpost
    #   to your network. This field is dependent on uplink speed, fiber type,
    #   and distance to the upstream device. For more information about
    #   networking requirements for racks, see [Network][1] in the Amazon Web
    #   Services Outposts User Guide.
    #
    #   * `OPTIC_10GBASE_SR`: 10GBASE-SR
    #
    #   * `OPTIC_10GBASE_IR`: 10GBASE-IR
    #
    #   * `OPTIC_10GBASE_LR`: 10GBASE-LR
    #
    #   * `OPTIC_40GBASE_SR`: 40GBASE-SR
    #
    #   * `OPTIC_40GBASE_ESR`: 40GBASE-ESR
    #
    #   * `OPTIC_40GBASE_IR4_LR4L`: 40GBASE-IR (LR4L)
    #
    #   * `OPTIC_40GBASE_LR4`: 40GBASE-LR4
    #
    #   * `OPTIC_100GBASE_SR4`: 100GBASE-SR4
    #
    #   * `OPTIC_100GBASE_CWDM4`: 100GBASE-CWDM4
    #
    #   * `OPTIC_100GBASE_LR4`: 100GBASE-LR4
    #
    #   * `OPTIC_100G_PSM4_MSA`: 100G PSM4 MSA
    #
    #   * `OPTIC_1000BASE_LX`: 1000Base-LX
    #
    #   * `OPTIC_1000BASE_SX` : 1000Base-SX
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking
    #
    # @option params [String] :maximum_supported_weight_lbs
    #   The maximum rack weight that this site can support. `NO_LIMIT` is over
    #   2000lbs.
    #
    # @return [Types::UpdateSiteRackPhysicalPropertiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteRackPhysicalPropertiesOutput#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site_rack_physical_properties({
    #     site_id: "SiteId", # required
    #     power_draw_kva: "POWER_5_KVA", # accepts POWER_5_KVA, POWER_10_KVA, POWER_15_KVA, POWER_30_KVA
    #     power_phase: "SINGLE_PHASE", # accepts SINGLE_PHASE, THREE_PHASE
    #     power_connector: "L6_30P", # accepts L6_30P, IEC309, AH530P7W, AH532P6W
    #     power_feed_drop: "ABOVE_RACK", # accepts ABOVE_RACK, BELOW_RACK
    #     uplink_gbps: "UPLINK_1G", # accepts UPLINK_1G, UPLINK_10G, UPLINK_40G, UPLINK_100G
    #     uplink_count: "UPLINK_COUNT_1", # accepts UPLINK_COUNT_1, UPLINK_COUNT_2, UPLINK_COUNT_3, UPLINK_COUNT_4, UPLINK_COUNT_5, UPLINK_COUNT_6, UPLINK_COUNT_7, UPLINK_COUNT_8, UPLINK_COUNT_12, UPLINK_COUNT_16
    #     fiber_optic_cable_type: "SINGLE_MODE", # accepts SINGLE_MODE, MULTI_MODE
    #     optical_standard: "OPTIC_10GBASE_SR", # accepts OPTIC_10GBASE_SR, OPTIC_10GBASE_IR, OPTIC_10GBASE_LR, OPTIC_40GBASE_SR, OPTIC_40GBASE_ESR, OPTIC_40GBASE_IR4_LR4L, OPTIC_40GBASE_LR4, OPTIC_100GBASE_SR4, OPTIC_100GBASE_CWDM4, OPTIC_100GBASE_LR4, OPTIC_100G_PSM4_MSA, OPTIC_1000BASE_LX, OPTIC_1000BASE_SX
    #     maximum_supported_weight_lbs: "NO_LIMIT", # accepts NO_LIMIT, MAX_1400_LBS, MAX_1600_LBS, MAX_1800_LBS, MAX_2000_LBS
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.account_id #=> String
    #   resp.site.name #=> String
    #   resp.site.description #=> String
    #   resp.site.tags #=> Hash
    #   resp.site.tags["TagKey"] #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.notes #=> String
    #   resp.site.operating_address_country_code #=> String
    #   resp.site.operating_address_state_or_region #=> String
    #   resp.site.operating_address_city #=> String
    #   resp.site.rack_physical_properties.power_draw_kva #=> String, one of "POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"
    #   resp.site.rack_physical_properties.power_phase #=> String, one of "SINGLE_PHASE", "THREE_PHASE"
    #   resp.site.rack_physical_properties.power_connector #=> String, one of "L6_30P", "IEC309", "AH530P7W", "AH532P6W"
    #   resp.site.rack_physical_properties.power_feed_drop #=> String, one of "ABOVE_RACK", "BELOW_RACK"
    #   resp.site.rack_physical_properties.uplink_gbps #=> String, one of "UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"
    #   resp.site.rack_physical_properties.uplink_count #=> String, one of "UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"
    #   resp.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of "SINGLE_MODE", "MULTI_MODE"
    #   resp.site.rack_physical_properties.optical_standard #=> String, one of "OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"
    #   resp.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of "NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/UpdateSiteRackPhysicalProperties AWS API Documentation
    #
    # @overload update_site_rack_physical_properties(params = {})
    # @param [Hash] params ({})
    def update_site_rack_physical_properties(params = {}, options = {})
      req = build_request(:update_site_rack_physical_properties, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-outposts'
      context[:gem_version] = '1.47.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
