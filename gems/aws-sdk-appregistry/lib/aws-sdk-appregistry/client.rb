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

Aws::Plugins::GlobalConfiguration.add_identifier(:appregistry)

module Aws::AppRegistry
  # An API client for AppRegistry.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppRegistry::Client.new(
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

    @identifier = :appregistry

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
    add_plugin(Aws::AppRegistry::Plugins::Endpoints)

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
    #   @option options [Aws::AppRegistry::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppRegistry::EndpointParameters`
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

    # Associates an attribute group with an application to augment the
    # application's metadata with the group's attributes. This feature
    # enables applications to be described with user-defined details that
    # are machine-readable, such as third-party integrations.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @option params [required, String] :attribute_group
    #   The name, ID, or ARN of the attribute group that holds the attributes
    #   to describe the application.
    #
    # @return [Types::AssociateAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAttributeGroupResponse#application_arn #application_arn} => String
    #   * {Types::AssociateAttributeGroupResponse#attribute_group_arn #attribute_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_attribute_group({
    #     application: "ApplicationSpecifier", # required
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.attribute_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateAttributeGroup AWS API Documentation
    #
    # @overload associate_attribute_group(params = {})
    # @param [Hash] params ({})
    def associate_attribute_group(params = {}, options = {})
      req = build_request(:associate_attribute_group, params)
      req.send_request(options)
    end

    # Associates a resource with an application. The resource can be
    # specified by its ARN or name. The application can be specified by ARN,
    # ID, or name.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @option params [required, String] :resource_type
    #   The type of resource of which the application will be associated.
    #
    # @option params [required, String] :resource
    #   The name or ID of the resource of which the application will be
    #   associated.
    #
    # @return [Types::AssociateResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceResponse#application_arn #application_arn} => String
    #   * {Types::AssociateResourceResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource({
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK", # required, accepts CFN_STACK, RESOURCE_TAG_VALUE
    #     resource: "ResourceSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/AssociateResource AWS API Documentation
    #
    # @overload associate_resource(params = {})
    # @param [Hash] params ({})
    def associate_resource(params = {}, options = {})
      req = build_request(:associate_resource, params)
      req.send_request(options)
    end

    # Creates a new application that is the top-level node in a hierarchy of
    # related cloud resource abstractions.
    #
    # @option params [required, String] :name
    #   The name of the application. The name must be unique in the region in
    #   which you are creating the application.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs you can use to associate with the application.
    #
    # @option params [required, String] :client_token
    #   A unique identifier that you provide to ensure idempotency. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the same
    #   client token, but one or more of the parameters are different, the
    #   retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application.id #=> String
    #   resp.application.arn #=> String
    #   resp.application.name #=> String
    #   resp.application.description #=> String
    #   resp.application.creation_time #=> Time
    #   resp.application.last_update_time #=> Time
    #   resp.application.tags #=> Hash
    #   resp.application.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a new attribute group as a container for user-defined
    # attributes. This feature enables users to have full control over their
    # cloud application's metadata in a rich machine-readable format to
    # facilitate integration with automated workflows and third-party tools.
    #
    # @option params [required, String] :name
    #   The name of the attribute group.
    #
    # @option params [String] :description
    #   The description of the attribute group that the user provides.
    #
    # @option params [required, String] :attributes
    #   A JSON string in the form of nested key-value pairs that represent the
    #   attributes in the group and describes an application and its
    #   components.
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs you can use to associate with the attribute group.
    #
    # @option params [required, String] :client_token
    #   A unique identifier that you provide to ensure idempotency. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the same
    #   client token, but one or more of the parameters are different, the
    #   retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAttributeGroupResponse#attribute_group #attribute_group} => Types::AttributeGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attribute_group({
    #     name: "Name", # required
    #     description: "Description",
    #     attributes: "Attributes", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_group.id #=> String
    #   resp.attribute_group.arn #=> String
    #   resp.attribute_group.name #=> String
    #   resp.attribute_group.description #=> String
    #   resp.attribute_group.creation_time #=> Time
    #   resp.attribute_group.last_update_time #=> Time
    #   resp.attribute_group.tags #=> Hash
    #   resp.attribute_group.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/CreateAttributeGroup AWS API Documentation
    #
    # @overload create_attribute_group(params = {})
    # @param [Hash] params ({})
    def create_attribute_group(params = {}, options = {})
      req = build_request(:create_attribute_group, params)
      req.send_request(options)
    end

    # Deletes an application that is specified either by its application ID,
    # name, or ARN. All associated attribute groups and resources must be
    # disassociated from it before deleting an application.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @return [Types::DeleteApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationResponse#application #application} => Types::ApplicationSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application: "ApplicationSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application.id #=> String
    #   resp.application.arn #=> String
    #   resp.application.name #=> String
    #   resp.application.description #=> String
    #   resp.application.creation_time #=> Time
    #   resp.application.last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes an attribute group, specified either by its attribute group
    # ID, name, or ARN.
    #
    # @option params [required, String] :attribute_group
    #   The name, ID, or ARN of the attribute group that holds the attributes
    #   to describe the application.
    #
    # @return [Types::DeleteAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAttributeGroupResponse#attribute_group #attribute_group} => Types::AttributeGroupSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attribute_group({
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_group.id #=> String
    #   resp.attribute_group.arn #=> String
    #   resp.attribute_group.name #=> String
    #   resp.attribute_group.description #=> String
    #   resp.attribute_group.creation_time #=> Time
    #   resp.attribute_group.last_update_time #=> Time
    #   resp.attribute_group.created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DeleteAttributeGroup AWS API Documentation
    #
    # @overload delete_attribute_group(params = {})
    # @param [Hash] params ({})
    def delete_attribute_group(params = {}, options = {})
      req = build_request(:delete_attribute_group, params)
      req.send_request(options)
    end

    # Disassociates an attribute group from an application to remove the
    # extra attributes contained in the attribute group from the
    # application's metadata. This operation reverts
    # `AssociateAttributeGroup`.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @option params [required, String] :attribute_group
    #   The name, ID, or ARN of the attribute group that holds the attributes
    #   to describe the application.
    #
    # @return [Types::DisassociateAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateAttributeGroupResponse#application_arn #application_arn} => String
    #   * {Types::DisassociateAttributeGroupResponse#attribute_group_arn #attribute_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_attribute_group({
    #     application: "ApplicationSpecifier", # required
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.attribute_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateAttributeGroup AWS API Documentation
    #
    # @overload disassociate_attribute_group(params = {})
    # @param [Hash] params ({})
    def disassociate_attribute_group(params = {}, options = {})
      req = build_request(:disassociate_attribute_group, params)
      req.send_request(options)
    end

    # Disassociates a resource from application. Both the resource and the
    # application can be specified either by ID or name.
    #
    # @option params [required, String] :application
    #   The name or ID of the application.
    #
    # @option params [required, String] :resource_type
    #   The type of the resource that is being disassociated.
    #
    # @option params [required, String] :resource
    #   The name or ID of the resource.
    #
    # @return [Types::DisassociateResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceResponse#application_arn #application_arn} => String
    #   * {Types::DisassociateResourceResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource({
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK", # required, accepts CFN_STACK, RESOURCE_TAG_VALUE
    #     resource: "ResourceSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/DisassociateResource AWS API Documentation
    #
    # @overload disassociate_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_resource(params = {}, options = {})
      req = build_request(:disassociate_resource, params)
      req.send_request(options)
    end

    # Retrieves metadata information about one of your applications. The
    # application can be specified by its ARN, ID, or name (which is unique
    # within one account in one region at a given point in time). Specify by
    # ARN or ID in automated workflows if you want to make sure that the
    # exact same application is returned or a `ResourceNotFoundException` is
    # thrown, avoiding the ABA addressing problem.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#id #id} => String
    #   * {Types::GetApplicationResponse#arn #arn} => String
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#description #description} => String
    #   * {Types::GetApplicationResponse#creation_time #creation_time} => Time
    #   * {Types::GetApplicationResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetApplicationResponse#associated_resource_count #associated_resource_count} => Integer
    #   * {Types::GetApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetApplicationResponse#integrations #integrations} => Types::Integrations
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application: "ApplicationSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.last_update_time #=> Time
    #   resp.associated_resource_count #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.integrations.resource_group.state #=> String, one of "CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.integrations.resource_group.arn #=> String
    #   resp.integrations.resource_group.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Gets the resource associated with the application.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @option params [required, String] :resource_type
    #   The type of resource associated with the application.
    #
    # @option params [required, String] :resource
    #   The name or ID of the resource associated with the application.
    #
    # @return [Types::GetAssociatedResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociatedResourceResponse#resource #resource} => Types::Resource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_associated_resource({
    #     application: "ApplicationSpecifier", # required
    #     resource_type: "CFN_STACK", # required, accepts CFN_STACK, RESOURCE_TAG_VALUE
    #     resource: "ResourceSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource.name #=> String
    #   resp.resource.arn #=> String
    #   resp.resource.association_time #=> Time
    #   resp.resource.integrations.resource_group.state #=> String, one of "CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.resource.integrations.resource_group.arn #=> String
    #   resp.resource.integrations.resource_group.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetAssociatedResource AWS API Documentation
    #
    # @overload get_associated_resource(params = {})
    # @param [Hash] params ({})
    def get_associated_resource(params = {}, options = {})
      req = build_request(:get_associated_resource, params)
      req.send_request(options)
    end

    # Retrieves an attribute group by its ARN, ID, or name. The attribute
    # group can be specified by its ARN, ID, or name.
    #
    # @option params [required, String] :attribute_group
    #   The name, ID, or ARN of the attribute group that holds the attributes
    #   to describe the application.
    #
    # @return [Types::GetAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttributeGroupResponse#id #id} => String
    #   * {Types::GetAttributeGroupResponse#arn #arn} => String
    #   * {Types::GetAttributeGroupResponse#name #name} => String
    #   * {Types::GetAttributeGroupResponse#description #description} => String
    #   * {Types::GetAttributeGroupResponse#attributes #attributes} => String
    #   * {Types::GetAttributeGroupResponse#creation_time #creation_time} => Time
    #   * {Types::GetAttributeGroupResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetAttributeGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAttributeGroupResponse#created_by #created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attribute_group({
    #     attribute_group: "AttributeGroupSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.attributes #=> String
    #   resp.creation_time #=> Time
    #   resp.last_update_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetAttributeGroup AWS API Documentation
    #
    # @overload get_attribute_group(params = {})
    # @param [Hash] params ({})
    def get_attribute_group(params = {}, options = {})
      req = build_request(:get_attribute_group, params)
      req.send_request(options)
    end

    # Retrieves a `TagKey` configuration from an account.
    #
    # @return [Types::GetConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationResponse#configuration #configuration} => Types::AppRegistryConfiguration
    #
    # @example Response structure
    #
    #   resp.configuration.tag_query_configuration.tag_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/GetConfiguration AWS API Documentation
    #
    # @overload get_configuration(params = {})
    # @param [Hash] params ({})
    def get_configuration(params = {}, options = {})
      req = build_request(:get_configuration, params)
      req.send_request(options)
    end

    # Retrieves a list of all of your applications. Results are paginated.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The upper bound of the number of results to return (cannot exceed 25).
    #   If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].id #=> String
    #   resp.applications[0].arn #=> String
    #   resp.applications[0].name #=> String
    #   resp.applications[0].description #=> String
    #   resp.applications[0].creation_time #=> Time
    #   resp.applications[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all attribute groups that are associated with specified
    # application. Results are paginated.
    #
    # @option params [required, String] :application
    #   The name or ID of the application.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The upper bound of the number of results to return (cannot exceed 25).
    #   If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #
    # @return [Types::ListAssociatedAttributeGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedAttributeGroupsResponse#attribute_groups #attribute_groups} => Array&lt;String&gt;
    #   * {Types::ListAssociatedAttributeGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_attribute_groups({
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_groups #=> Array
    #   resp.attribute_groups[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedAttributeGroups AWS API Documentation
    #
    # @overload list_associated_attribute_groups(params = {})
    # @param [Hash] params ({})
    def list_associated_attribute_groups(params = {}, options = {})
      req = build_request(:list_associated_attribute_groups, params)
      req.send_request(options)
    end

    # Lists all of the resources that are associated with the specified
    # application. Results are paginated.
    #
    # <note markdown="1"> If you share an application, and a consumer account associates a tag
    # query to the application, all of the users who can access the
    # application can also view the tag values in all accounts that are
    # associated with it using this API.
    #
    #  </note>
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The upper bound of the number of results to return (cannot exceed 25).
    #   If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #
    # @return [Types::ListAssociatedResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedResourcesResponse#resources #resources} => Array&lt;Types::ResourceInfo&gt;
    #   * {Types::ListAssociatedResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_resources({
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].name #=> String
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].resource_type #=> String, one of "CFN_STACK", "RESOURCE_TAG_VALUE"
    #   resp.resources[0].resource_details.tag_value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAssociatedResources AWS API Documentation
    #
    # @overload list_associated_resources(params = {})
    # @param [Hash] params ({})
    def list_associated_resources(params = {}, options = {})
      req = build_request(:list_associated_resources, params)
      req.send_request(options)
    end

    # Lists all attribute groups which you have access to. Results are
    # paginated.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The upper bound of the number of results to return (cannot exceed 25).
    #   If this parameter is omitted, it defaults to 25. This value is
    #   optional.
    #
    # @return [Types::ListAttributeGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttributeGroupsResponse#attribute_groups #attribute_groups} => Array&lt;Types::AttributeGroupSummary&gt;
    #   * {Types::ListAttributeGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attribute_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_groups #=> Array
    #   resp.attribute_groups[0].id #=> String
    #   resp.attribute_groups[0].arn #=> String
    #   resp.attribute_groups[0].name #=> String
    #   resp.attribute_groups[0].description #=> String
    #   resp.attribute_groups[0].creation_time #=> Time
    #   resp.attribute_groups[0].last_update_time #=> Time
    #   resp.attribute_groups[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAttributeGroups AWS API Documentation
    #
    # @overload list_attribute_groups(params = {})
    # @param [Hash] params ({})
    def list_attribute_groups(params = {}, options = {})
      req = build_request(:list_attribute_groups, params)
      req.send_request(options)
    end

    # Lists the details of all attribute groups associated with a specific
    # application. The results display in pages.
    #
    # @option params [required, String] :application
    #   The name or ID of the application.
    #
    # @option params [String] :next_token
    #   This token retrieves the next page of results after a previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The upper bound of the number of results to return. The value cannot
    #   exceed 25. If you omit this parameter, it defaults to 25. This value
    #   is optional.
    #
    # @return [Types::ListAttributeGroupsForApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttributeGroupsForApplicationResponse#attribute_groups_details #attribute_groups_details} => Array&lt;Types::AttributeGroupDetails&gt;
    #   * {Types::ListAttributeGroupsForApplicationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attribute_groups_for_application({
    #     application: "ApplicationSpecifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_groups_details #=> Array
    #   resp.attribute_groups_details[0].id #=> String
    #   resp.attribute_groups_details[0].arn #=> String
    #   resp.attribute_groups_details[0].name #=> String
    #   resp.attribute_groups_details[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListAttributeGroupsForApplication AWS API Documentation
    #
    # @overload list_attribute_groups_for_application(params = {})
    # @param [Hash] params ({})
    def list_attribute_groups_for_application(params = {}, options = {})
      req = build_request(:list_attribute_groups_for_application, params)
      req.send_request(options)
    end

    # Lists all of the tags on the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon resource name (ARN) that specifies the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associates a `TagKey` configuration to an account.
    #
    # @option params [required, Types::AppRegistryConfiguration] :configuration
    #   Associates a `TagKey` configuration to an account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration({
    #     configuration: { # required
    #       tag_query_configuration: {
    #         tag_key: "TagKeyConfig",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/PutConfiguration AWS API Documentation
    #
    # @overload put_configuration(params = {})
    # @param [Hash] params ({})
    def put_configuration(params = {}, options = {})
      req = build_request(:put_configuration, params)
      req.send_request(options)
    end

    # Syncs the resource with current AppRegistry records.
    #
    # Specifically, the resource’s AppRegistry system tags sync with its
    # associated application. We remove the resource's AppRegistry system
    # tags if it does not associate with the application. The caller must
    # have permissions to read and update the resource.
    #
    # @option params [required, String] :resource_type
    #   The type of resource of which the application will be associated.
    #
    # @option params [required, String] :resource
    #   An entity you can work with and specify with a name or ID. Examples
    #   include an Amazon EC2 instance, an Amazon Web Services CloudFormation
    #   stack, or an Amazon S3 bucket.
    #
    # @return [Types::SyncResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SyncResourceResponse#application_arn #application_arn} => String
    #   * {Types::SyncResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::SyncResourceResponse#action_taken #action_taken} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sync_resource({
    #     resource_type: "CFN_STACK", # required, accepts CFN_STACK, RESOURCE_TAG_VALUE
    #     resource: "ResourceSpecifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.action_taken #=> String, one of "START_SYNC", "NO_ACTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/SyncResource AWS API Documentation
    #
    # @overload sync_resource(params = {})
    # @param [Hash] params ({})
    def sync_resource(params = {}, options = {})
      req = build_request(:sync_resource, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # Each tag consists of a key and an optional value. If a tag with the
    # same key is already associated with the resource, this action updates
    # its value.
    #
    # This operation returns an empty response if the call was successful.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon resource name (ARN) that specifies the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The new or modified tags for the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # This operation returns an empty response if the call was successful.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon resource name (ARN) that specifies the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the tag keys to remove from the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing application with new attributes.
    #
    # @option params [required, String] :application
    #   The name, ID, or ARN of the application that will be updated.
    #
    # @option params [String] :name
    #   Deprecated: The new name of the application. The name must be unique
    #   in the region in which you are updating the application. Please do not
    #   use this field as we have stopped supporting name updates.
    #
    # @option params [String] :description
    #   The new description of the application.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application: "ApplicationSpecifier", # required
    #     name: "Name",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.application.id #=> String
    #   resp.application.arn #=> String
    #   resp.application.name #=> String
    #   resp.application.description #=> String
    #   resp.application.creation_time #=> Time
    #   resp.application.last_update_time #=> Time
    #   resp.application.tags #=> Hash
    #   resp.application.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates an existing attribute group with new details.
    #
    # @option params [required, String] :attribute_group
    #   The name, ID, or ARN of the attribute group that holds the attributes
    #   to describe the application.
    #
    # @option params [String] :name
    #   Deprecated: The new name of the attribute group. The name must be
    #   unique in the region in which you are updating the attribute group.
    #   Please do not use this field as we have stopped supporting name
    #   updates.
    #
    # @option params [String] :description
    #   The description of the attribute group that the user provides.
    #
    # @option params [String] :attributes
    #   A JSON string in the form of nested key-value pairs that represent the
    #   attributes in the group and describes an application and its
    #   components.
    #
    # @return [Types::UpdateAttributeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAttributeGroupResponse#attribute_group #attribute_group} => Types::AttributeGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_attribute_group({
    #     attribute_group: "AttributeGroupSpecifier", # required
    #     name: "Name",
    #     description: "Description",
    #     attributes: "Attributes",
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_group.id #=> String
    #   resp.attribute_group.arn #=> String
    #   resp.attribute_group.name #=> String
    #   resp.attribute_group.description #=> String
    #   resp.attribute_group.creation_time #=> Time
    #   resp.attribute_group.last_update_time #=> Time
    #   resp.attribute_group.tags #=> Hash
    #   resp.attribute_group.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWS242AppRegistry-2020-06-24/UpdateAttributeGroup AWS API Documentation
    #
    # @overload update_attribute_group(params = {})
    # @param [Hash] params ({})
    def update_attribute_group(params = {}, options = {})
      req = build_request(:update_attribute_group, params)
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
      context[:gem_name] = 'aws-sdk-appregistry'
      context[:gem_version] = '1.25.0'
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
