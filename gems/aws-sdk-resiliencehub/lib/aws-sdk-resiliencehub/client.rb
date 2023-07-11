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

Aws::Plugins::GlobalConfiguration.add_identifier(:resiliencehub)

module Aws::ResilienceHub
  # An API client for ResilienceHub.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ResilienceHub::Client.new(
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

    @identifier = :resiliencehub

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
    add_plugin(Aws::ResilienceHub::Plugins::Endpoints)

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
    #   @option options [Aws::ResilienceHub::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ResilienceHub::EndpointParameters`
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

    # Adds the resource mapping for the draft application version. You can
    # also update an existing resource mapping to a new physical resource.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::ResourceMapping>] :resource_mappings
    #   Mappings used to map logical resources from the template to physical
    #   resources. You can use the mapping type `CFN_STACK` if the application
    #   template uses a logical stack name. Or you can map individual
    #   resources by using the mapping type `RESOURCE`. We recommend using the
    #   mapping type `CFN_STACK` if the application is backed by a
    #   CloudFormation stack.
    #
    # @return [Types::AddDraftAppVersionResourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddDraftAppVersionResourceMappingsResponse#app_arn #app_arn} => String
    #   * {Types::AddDraftAppVersionResourceMappingsResponse#app_version #app_version} => String
    #   * {Types::AddDraftAppVersionResourceMappingsResponse#resource_mappings #resource_mappings} => Array&lt;Types::ResourceMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_draft_app_version_resource_mappings({
    #     app_arn: "Arn", # required
    #     resource_mappings: [ # required
    #       {
    #         app_registry_app_name: "EntityName",
    #         eks_source_name: "String255",
    #         logical_stack_name: "String255",
    #         mapping_type: "CfnStack", # required, accepts CfnStack, Resource, AppRegistryApp, ResourceGroup, Terraform, EKS
    #         physical_resource_id: { # required
    #           aws_account_id: "CustomerId",
    #           aws_region: "AwsRegion",
    #           identifier: "String255", # required
    #           type: "Arn", # required, accepts Arn, Native
    #         },
    #         resource_group_name: "EntityName",
    #         resource_name: "EntityName",
    #         terraform_source_name: "String255",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.resource_mappings #=> Array
    #   resp.resource_mappings[0].app_registry_app_name #=> String
    #   resp.resource_mappings[0].eks_source_name #=> String
    #   resp.resource_mappings[0].logical_stack_name #=> String
    #   resp.resource_mappings[0].mapping_type #=> String, one of "CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"
    #   resp.resource_mappings[0].physical_resource_id.aws_account_id #=> String
    #   resp.resource_mappings[0].physical_resource_id.aws_region #=> String
    #   resp.resource_mappings[0].physical_resource_id.identifier #=> String
    #   resp.resource_mappings[0].physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.resource_mappings[0].resource_group_name #=> String
    #   resp.resource_mappings[0].resource_name #=> String
    #   resp.resource_mappings[0].terraform_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AddDraftAppVersionResourceMappings AWS API Documentation
    #
    # @overload add_draft_app_version_resource_mappings(params = {})
    # @param [Hash] params ({})
    def add_draft_app_version_resource_mappings(params = {}, options = {})
      req = build_request(:add_draft_app_version_resource_mappings, params)
      req.send_request(options)
    end

    # Creates an Resilience Hub application. An Resilience Hub application
    # is a collection of Amazon Web Services resources structured to prevent
    # and recover Amazon Web Services application disruptions. To describe
    # an Resilience Hub application, you provide an application name,
    # resources from one or more CloudFormation stacks, Resource Groups,
    # Terraform state files, AppRegistry applications, and an appropriate
    # resiliency policy. For more information about the number of resources
    # supported per application, see [Service Quotas][1].
    #
    # After you create an Resilience Hub application, you publish it so that
    # you can run a resiliency assessment on it. You can then use
    # recommendations from the assessment to improve resiliency by running
    # another assessment, comparing results, and then iterating the process
    # until you achieve your goals for recovery time objective (RTO) and
    # recovery point objective (RPO).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub
    #
    # @option params [String] :assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The optional description for an app.
    #
    # @option params [required, String] :name
    #   The name for the application.
    #
    # @option params [String] :policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #
    # @return [Types::CreateAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResponse#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     assessment_schedule: "Disabled", # accepts Disabled, Daily
    #     client_token: "ClientToken",
    #     description: "EntityDescription",
    #     name: "EntityName", # required
    #     policy_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_arn #=> String
    #   resp.app.assessment_schedule #=> String, one of "Disabled", "Daily"
    #   resp.app.compliance_status #=> String, one of "PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"
    #   resp.app.creation_time #=> Time
    #   resp.app.description #=> String
    #   resp.app.last_app_compliance_evaluation_time #=> Time
    #   resp.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.app.name #=> String
    #   resp.app.policy_arn #=> String
    #   resp.app.resiliency_score #=> Float
    #   resp.app.status #=> String, one of "Active", "Deleting"
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Creates a new Application Component in the Resilience Hub application.
    #
    # <note markdown="1"> This API updates the Resilience Hub application draft version. To use
    # this Application Component for running assessments, you must publish
    # the Resilience Hub application using the `PublishAppVersion` API.
    #
    #  </note>
    #
    # @option params [Hash<String,Array>] :additional_info
    #   Currently, there is no supported additional information for
    #   Application Components.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :id
    #   The identifier of the Application Component.
    #
    # @option params [required, String] :name
    #   The name of the Application Component.
    #
    # @option params [required, String] :type
    #   The type of Application Component. For more information about the
    #   types of Application Component, see [Grouping resources in an
    #   AppComponent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #
    # @return [Types::CreateAppVersionAppComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppVersionAppComponentResponse#app_arn #app_arn} => String
    #   * {Types::CreateAppVersionAppComponentResponse#app_component #app_component} => Types::AppComponent
    #   * {Types::CreateAppVersionAppComponentResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_version_app_component({
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"],
    #     },
    #     app_arn: "Arn", # required
    #     client_token: "ClientToken",
    #     id: "String255",
    #     name: "String255", # required
    #     type: "String255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_component.additional_info #=> Hash
    #   resp.app_component.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.app_component.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_component.id #=> String
    #   resp.app_component.name #=> String
    #   resp.app_component.type #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionAppComponent AWS API Documentation
    #
    # @overload create_app_version_app_component(params = {})
    # @param [Hash] params ({})
    def create_app_version_app_component(params = {}, options = {})
      req = build_request(:create_app_version_app_component, params)
      req.send_request(options)
    end

    # Adds a resource to the Resilience Hub application and assigns it to
    # the specified Application Components. If you specify a new Application
    # Component, Resilience Hub will automatically create the Application
    # Component.
    #
    # <note markdown="1"> * This action has no effect outside Resilience Hub.
    #
    # * This API updates the Resilience Hub application draft version. To
    #   use this resource for running resiliency assessments, you must
    #   publish the Resilience Hub application using the `PublishAppVersion`
    #   API.
    #
    # * To update application version with new `physicalResourceID`, you
    #   must call `ResolveAppVersionResources` API.
    #
    #  </note>
    #
    # @option params [Hash<String,Array>] :additional_info
    #   Currently, there is no supported additional information for resources.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :app_components
    #   The list of Application Components that this resource belongs to. If
    #   an Application Component is not part of the Resilience Hub
    #   application, it will be added.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services region that owns the physical resource.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::LogicalResourceId] :logical_resource_id
    #   The logical identifier of the resource.
    #
    # @option params [required, String] :physical_resource_id
    #   The physical identifier of the resource.
    #
    # @option params [String] :resource_name
    #   The name of the resource.
    #
    # @option params [required, String] :resource_type
    #   The type of resource.
    #
    # @return [Types::CreateAppVersionResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppVersionResourceResponse#app_arn #app_arn} => String
    #   * {Types::CreateAppVersionResourceResponse#app_version #app_version} => String
    #   * {Types::CreateAppVersionResourceResponse#physical_resource #physical_resource} => Types::PhysicalResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_version_resource({
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"],
    #     },
    #     app_arn: "Arn", # required
    #     app_components: ["String255"], # required
    #     aws_account_id: "CustomerId",
    #     aws_region: "AwsRegion",
    #     client_token: "ClientToken",
    #     logical_resource_id: { # required
    #       eks_source_name: "String255",
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #     },
    #     physical_resource_id: "String2048", # required
    #     resource_name: "EntityName",
    #     resource_type: "String255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.physical_resource.additional_info #=> Hash
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components #=> Array
    #   resp.physical_resource.app_components[0].additional_info #=> Hash
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components[0].id #=> String
    #   resp.physical_resource.app_components[0].name #=> String
    #   resp.physical_resource.app_components[0].type #=> String
    #   resp.physical_resource.excluded #=> Boolean
    #   resp.physical_resource.logical_resource_id.eks_source_name #=> String
    #   resp.physical_resource.logical_resource_id.identifier #=> String
    #   resp.physical_resource.logical_resource_id.logical_stack_name #=> String
    #   resp.physical_resource.logical_resource_id.resource_group_name #=> String
    #   resp.physical_resource.logical_resource_id.terraform_source_name #=> String
    #   resp.physical_resource.parent_resource_name #=> String
    #   resp.physical_resource.physical_resource_id.aws_account_id #=> String
    #   resp.physical_resource.physical_resource_id.aws_region #=> String
    #   resp.physical_resource.physical_resource_id.identifier #=> String
    #   resp.physical_resource.physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.physical_resource.resource_name #=> String
    #   resp.physical_resource.resource_type #=> String
    #   resp.physical_resource.source_type #=> String, one of "AppTemplate", "Discovered"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionResource AWS API Documentation
    #
    # @overload create_app_version_resource(params = {})
    # @param [Hash] params ({})
    def create_app_version_resource(params = {}, options = {})
      req = build_request(:create_app_version_resource, params)
      req.send_request(options)
    end

    # Creates a new recommendation template for the Resilience Hub
    # application.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :bucket_name
    #   The name of the Amazon S3 bucket that will contain the recommendation
    #   template.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :format
    #   The format for the recommendation template.
    #
    #   CfnJson
    #
    #   : The template is CloudFormation JSON.
    #
    #   CfnYaml
    #
    #   : The template is CloudFormation YAML.
    #
    # @option params [required, String] :name
    #   The name for the recommendation template.
    #
    # @option params [Array<String>] :recommendation_ids
    #   Identifiers for the recommendations used to create a recommendation
    #   template.
    #
    # @option params [Array<String>] :recommendation_types
    #   An array of strings that specify the recommendation template type or
    #   types.
    #
    #   Alarm
    #
    #   : The template is an AlarmRecommendation template.
    #
    #   Sop
    #
    #   : The template is a SopRecommendation template.
    #
    #   Test
    #
    #   : The template is a TestRecommendation template.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #
    # @return [Types::CreateRecommendationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecommendationTemplateResponse#recommendation_template #recommendation_template} => Types::RecommendationTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommendation_template({
    #     assessment_arn: "Arn", # required
    #     bucket_name: "EntityName",
    #     client_token: "ClientToken",
    #     format: "CfnYaml", # accepts CfnYaml, CfnJson
    #     name: "EntityName", # required
    #     recommendation_ids: ["Uuid"],
    #     recommendation_types: ["Alarm"], # accepts Alarm, Sop, Test
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_template.app_arn #=> String
    #   resp.recommendation_template.assessment_arn #=> String
    #   resp.recommendation_template.end_time #=> Time
    #   resp.recommendation_template.format #=> String, one of "CfnYaml", "CfnJson"
    #   resp.recommendation_template.message #=> String
    #   resp.recommendation_template.name #=> String
    #   resp.recommendation_template.needs_replacements #=> Boolean
    #   resp.recommendation_template.recommendation_ids #=> Array
    #   resp.recommendation_template.recommendation_ids[0] #=> String
    #   resp.recommendation_template.recommendation_template_arn #=> String
    #   resp.recommendation_template.recommendation_types #=> Array
    #   resp.recommendation_template.recommendation_types[0] #=> String, one of "Alarm", "Sop", "Test"
    #   resp.recommendation_template.start_time #=> Time
    #   resp.recommendation_template.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.recommendation_template.tags #=> Hash
    #   resp.recommendation_template.tags["TagKey"] #=> String
    #   resp.recommendation_template.templates_location.bucket #=> String
    #   resp.recommendation_template.templates_location.prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateRecommendationTemplate AWS API Documentation
    #
    # @overload create_recommendation_template(params = {})
    # @param [Hash] params ({})
    def create_recommendation_template(params = {}, options = {})
      req = build_request(:create_recommendation_template, params)
      req.send_request(options)
    end

    # Creates a resiliency policy for an application.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :data_location_constraint
    #   Specifies a high-level geographical location constraint for where your
    #   resilience policy data can be stored.
    #
    # @option params [required, Hash<String,Types::FailurePolicy>] :policy
    #   The type of resiliency policy to be created, including the recovery
    #   time objective (RTO) and recovery point objective (RPO) in seconds.
    #
    # @option params [String] :policy_description
    #   The description for the policy.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #
    # @option params [required, String] :tier
    #   The tier for this resiliency policy, ranging from the highest severity
    #   (`MissionCritical`) to lowest (`NonCritical`).
    #
    # @return [Types::CreateResiliencyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResiliencyPolicyResponse#policy #policy} => Types::ResiliencyPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resiliency_policy({
    #     client_token: "ClientToken",
    #     data_location_constraint: "AnyLocation", # accepts AnyLocation, SameContinent, SameCountry
    #     policy: { # required
    #       "Software" => {
    #         rpo_in_secs: 1, # required
    #         rto_in_secs: 1, # required
    #       },
    #     },
    #     policy_description: "EntityDescription",
    #     policy_name: "EntityName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     tier: "MissionCritical", # required, accepts MissionCritical, Critical, Important, CoreServices, NonCritical
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.creation_time #=> Time
    #   resp.policy.data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.policy.estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.policy.policy #=> Hash
    #   resp.policy.policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.policy.policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.policy.policy_arn #=> String
    #   resp.policy.policy_description #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateResiliencyPolicy AWS API Documentation
    #
    # @overload create_resiliency_policy(params = {})
    # @param [Hash] params ({})
    def create_resiliency_policy(params = {}, options = {})
      req = build_request(:create_resiliency_policy, params)
      req.send_request(options)
    end

    # Deletes an Resilience Hub application. This is a destructive action
    # that can't be undone.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :force_delete
    #   A boolean option to force the deletion of an Resilience Hub
    #   application.
    #
    # @return [Types::DeleteAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppResponse#app_arn #app_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app_arn: "Arn", # required
    #     client_token: "ClientToken",
    #     force_delete: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes an Resilience Hub application assessment. This is a
    # destructive action that can't be undone.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAppAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppAssessmentResponse#assessment_arn #assessment_arn} => String
    #   * {Types::DeleteAppAssessmentResponse#assessment_status #assessment_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_assessment({
    #     assessment_arn: "Arn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_arn #=> String
    #   resp.assessment_status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppAssessment AWS API Documentation
    #
    # @overload delete_app_assessment(params = {})
    # @param [Hash] params ({})
    def delete_app_assessment(params = {}, options = {})
      req = build_request(:delete_app_assessment, params)
      req.send_request(options)
    end

    # Deletes the input source and all of its imported resources from the
    # Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::EksSourceClusterNamespace] :eks_source_cluster_namespace
    #   The namespace on your Amazon Elastic Kubernetes Service cluster that
    #   you want to delete from the Resilience Hub application.
    #
    # @option params [String] :source_arn
    #   The Amazon Resource Name (ARN) of the imported resource you want to
    #   remove from the Resilience Hub application. For more information about
    #   ARNs, see [ Amazon Resource Names (ARNs)][1] in the *AWS General
    #   Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Types::TerraformSource] :terraform_source
    #   The imported Terraform s3 state ﬁle you want to remove from the
    #   Resilience Hub application.
    #
    # @return [Types::DeleteAppInputSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppInputSourceResponse#app_arn #app_arn} => String
    #   * {Types::DeleteAppInputSourceResponse#app_input_source #app_input_source} => Types::AppInputSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_input_source({
    #     app_arn: "Arn", # required
    #     client_token: "ClientToken",
    #     eks_source_cluster_namespace: {
    #       eks_cluster_arn: "Arn", # required
    #       namespace: "EksNamespace", # required
    #     },
    #     source_arn: "Arn",
    #     terraform_source: {
    #       s3_state_file_url: "S3Url", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_input_source.eks_source_cluster_namespace.eks_cluster_arn #=> String
    #   resp.app_input_source.eks_source_cluster_namespace.namespace #=> String
    #   resp.app_input_source.import_type #=> String, one of "CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"
    #   resp.app_input_source.resource_count #=> Integer
    #   resp.app_input_source.source_arn #=> String
    #   resp.app_input_source.source_name #=> String
    #   resp.app_input_source.terraform_source.s3_state_file_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppInputSource AWS API Documentation
    #
    # @overload delete_app_input_source(params = {})
    # @param [Hash] params ({})
    def delete_app_input_source(params = {}, options = {})
      req = build_request(:delete_app_input_source, params)
      req.send_request(options)
    end

    # Deletes an Application Component from the Resilience Hub application.
    #
    # <note markdown="1"> * This API updates the Resilience Hub application draft version. To
    #   use this Application Component for running assessments, you must
    #   publish the Resilience Hub application using the `PublishAppVersion`
    #   API.
    #
    # * You will not be able to delete an Application Component if it has
    #   resources associated with it.
    #
    #  </note>
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :id
    #   The identifier of the Application Component.
    #
    # @return [Types::DeleteAppVersionAppComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppVersionAppComponentResponse#app_arn #app_arn} => String
    #   * {Types::DeleteAppVersionAppComponentResponse#app_component #app_component} => Types::AppComponent
    #   * {Types::DeleteAppVersionAppComponentResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_version_app_component({
    #     app_arn: "Arn", # required
    #     client_token: "ClientToken",
    #     id: "String255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_component.additional_info #=> Hash
    #   resp.app_component.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.app_component.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_component.id #=> String
    #   resp.app_component.name #=> String
    #   resp.app_component.type #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionAppComponent AWS API Documentation
    #
    # @overload delete_app_version_app_component(params = {})
    # @param [Hash] params ({})
    def delete_app_version_app_component(params = {}, options = {})
      req = build_request(:delete_app_version_app_component, params)
      req.send_request(options)
    end

    # Deletes a resource from the Resilience Hub application.
    #
    # <note markdown="1"> * You can only delete a manually added resource. To exclude
    #   non-manually added resources, use the `UpdateAppVersionResource`
    #   API.
    #
    # * This action has no effect outside Resilience Hub.
    #
    # * This API updates the Resilience Hub application draft version. To
    #   use this resource for running resiliency assessments, you must
    #   publish the Resilience Hub application using the `PublishAppVersion`
    #   API.
    #
    #  </note>
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services region that owns the physical resource.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   The logical identifier of the resource.
    #
    # @option params [String] :physical_resource_id
    #   The physical identifier of the resource.
    #
    # @option params [String] :resource_name
    #   The name of the resource.
    #
    # @return [Types::DeleteAppVersionResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppVersionResourceResponse#app_arn #app_arn} => String
    #   * {Types::DeleteAppVersionResourceResponse#app_version #app_version} => String
    #   * {Types::DeleteAppVersionResourceResponse#physical_resource #physical_resource} => Types::PhysicalResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_version_resource({
    #     app_arn: "Arn", # required
    #     aws_account_id: "CustomerId",
    #     aws_region: "AwsRegion",
    #     client_token: "ClientToken",
    #     logical_resource_id: {
    #       eks_source_name: "String255",
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #     },
    #     physical_resource_id: "String2048",
    #     resource_name: "EntityName",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.physical_resource.additional_info #=> Hash
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components #=> Array
    #   resp.physical_resource.app_components[0].additional_info #=> Hash
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components[0].id #=> String
    #   resp.physical_resource.app_components[0].name #=> String
    #   resp.physical_resource.app_components[0].type #=> String
    #   resp.physical_resource.excluded #=> Boolean
    #   resp.physical_resource.logical_resource_id.eks_source_name #=> String
    #   resp.physical_resource.logical_resource_id.identifier #=> String
    #   resp.physical_resource.logical_resource_id.logical_stack_name #=> String
    #   resp.physical_resource.logical_resource_id.resource_group_name #=> String
    #   resp.physical_resource.logical_resource_id.terraform_source_name #=> String
    #   resp.physical_resource.parent_resource_name #=> String
    #   resp.physical_resource.physical_resource_id.aws_account_id #=> String
    #   resp.physical_resource.physical_resource_id.aws_region #=> String
    #   resp.physical_resource.physical_resource_id.identifier #=> String
    #   resp.physical_resource.physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.physical_resource.resource_name #=> String
    #   resp.physical_resource.resource_type #=> String
    #   resp.physical_resource.source_type #=> String, one of "AppTemplate", "Discovered"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionResource AWS API Documentation
    #
    # @overload delete_app_version_resource(params = {})
    # @param [Hash] params ({})
    def delete_app_version_resource(params = {}, options = {})
      req = build_request(:delete_app_version_resource, params)
      req.send_request(options)
    end

    # Deletes a recommendation template. This is a destructive action that
    # can't be undone.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :recommendation_template_arn
    #   The Amazon Resource Name (ARN) for a recommendation template.
    #
    # @return [Types::DeleteRecommendationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRecommendationTemplateResponse#recommendation_template_arn #recommendation_template_arn} => String
    #   * {Types::DeleteRecommendationTemplateResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommendation_template({
    #     client_token: "ClientToken",
    #     recommendation_template_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_template_arn #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteRecommendationTemplate AWS API Documentation
    #
    # @overload delete_recommendation_template(params = {})
    # @param [Hash] params ({})
    def delete_recommendation_template(params = {}, options = {})
      req = build_request(:delete_recommendation_template, params)
      req.send_request(options)
    end

    # Deletes a resiliency policy. This is a destructive action that can't
    # be undone.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DeleteResiliencyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResiliencyPolicyResponse#policy_arn #policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resiliency_policy({
    #     client_token: "ClientToken",
    #     policy_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteResiliencyPolicy AWS API Documentation
    #
    # @overload delete_resiliency_policy(params = {})
    # @param [Hash] params ({})
    def delete_resiliency_policy(params = {}, options = {})
      req = build_request(:delete_resiliency_policy, params)
      req.send_request(options)
    end

    # Describes an Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppResponse#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app({
    #     app_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_arn #=> String
    #   resp.app.assessment_schedule #=> String, one of "Disabled", "Daily"
    #   resp.app.compliance_status #=> String, one of "PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"
    #   resp.app.creation_time #=> Time
    #   resp.app.description #=> String
    #   resp.app.last_app_compliance_evaluation_time #=> Time
    #   resp.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.app.name #=> String
    #   resp.app.policy_arn #=> String
    #   resp.app.resiliency_score #=> Float
    #   resp.app.status #=> String, one of "Active", "Deleting"
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeApp AWS API Documentation
    #
    # @overload describe_app(params = {})
    # @param [Hash] params ({})
    def describe_app(params = {}, options = {})
      req = build_request(:describe_app, params)
      req.send_request(options)
    end

    # Describes an assessment for an Resilience Hub application.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeAppAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppAssessmentResponse#assessment #assessment} => Types::AppAssessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_assessment({
    #     assessment_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.app_arn #=> String
    #   resp.assessment.app_version #=> String
    #   resp.assessment.assessment_arn #=> String
    #   resp.assessment.assessment_name #=> String
    #   resp.assessment.assessment_status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.assessment.compliance #=> Hash
    #   resp.assessment.compliance["DisruptionType"].achievable_rpo_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].achievable_rto_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.assessment.compliance["DisruptionType"].current_rpo_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].current_rto_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].message #=> String
    #   resp.assessment.compliance["DisruptionType"].rpo_description #=> String
    #   resp.assessment.compliance["DisruptionType"].rpo_reference_id #=> String
    #   resp.assessment.compliance["DisruptionType"].rto_description #=> String
    #   resp.assessment.compliance["DisruptionType"].rto_reference_id #=> String
    #   resp.assessment.compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.assessment.cost.amount #=> Float
    #   resp.assessment.cost.currency #=> String
    #   resp.assessment.cost.frequency #=> String, one of "Hourly", "Daily", "Monthly", "Yearly"
    #   resp.assessment.end_time #=> Time
    #   resp.assessment.invoker #=> String, one of "User", "System"
    #   resp.assessment.message #=> String
    #   resp.assessment.policy.creation_time #=> Time
    #   resp.assessment.policy.data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.assessment.policy.estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.assessment.policy.policy #=> Hash
    #   resp.assessment.policy.policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.assessment.policy.policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.assessment.policy.policy_arn #=> String
    #   resp.assessment.policy.policy_description #=> String
    #   resp.assessment.policy.policy_name #=> String
    #   resp.assessment.policy.tags #=> Hash
    #   resp.assessment.policy.tags["TagKey"] #=> String
    #   resp.assessment.policy.tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #   resp.assessment.resiliency_score.disruption_score #=> Hash
    #   resp.assessment.resiliency_score.disruption_score["DisruptionType"] #=> Float
    #   resp.assessment.resiliency_score.score #=> Float
    #   resp.assessment.resource_errors_details.has_more_errors #=> Boolean
    #   resp.assessment.resource_errors_details.resource_errors #=> Array
    #   resp.assessment.resource_errors_details.resource_errors[0].logical_resource_id #=> String
    #   resp.assessment.resource_errors_details.resource_errors[0].physical_resource_id #=> String
    #   resp.assessment.resource_errors_details.resource_errors[0].reason #=> String
    #   resp.assessment.start_time #=> Time
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppAssessment AWS API Documentation
    #
    # @overload describe_app_assessment(params = {})
    # @param [Hash] params ({})
    def describe_app_assessment(params = {}, options = {})
      req = build_request(:describe_app_assessment, params)
      req.send_request(options)
    end

    # Describes the Resilience Hub application version.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The Resilience Hub application version.
    #
    # @return [Types::DescribeAppVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppVersionResponse#additional_info #additional_info} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::DescribeAppVersionResponse#app_arn #app_arn} => String
    #   * {Types::DescribeAppVersionResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.additional_info #=> Hash
    #   resp.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersion AWS API Documentation
    #
    # @overload describe_app_version(params = {})
    # @param [Hash] params ({})
    def describe_app_version(params = {}, options = {})
      req = build_request(:describe_app_version, params)
      req.send_request(options)
    end

    # Describes an Application Component in the Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The Resilience Hub application version.
    #
    # @option params [required, String] :id
    #   The identifier of the Application Component.
    #
    # @return [Types::DescribeAppVersionAppComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppVersionAppComponentResponse#app_arn #app_arn} => String
    #   * {Types::DescribeAppVersionAppComponentResponse#app_component #app_component} => Types::AppComponent
    #   * {Types::DescribeAppVersionAppComponentResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_app_component({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     id: "String255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_component.additional_info #=> Hash
    #   resp.app_component.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.app_component.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_component.id #=> String
    #   resp.app_component.name #=> String
    #   resp.app_component.type #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionAppComponent AWS API Documentation
    #
    # @overload describe_app_version_app_component(params = {})
    # @param [Hash] params ({})
    def describe_app_version_app_component(params = {}, options = {})
      req = build_request(:describe_app_version_app_component, params)
      req.send_request(options)
    end

    # Describes a resource of the Resilience Hub application.
    #
    # <note markdown="1"> This API accepts only one of the following parameters to descibe the
    # resource:
    #
    #  * `resourceName`
    #
    # * `logicalResourceId`
    #
    # * `physicalResourceId` (Along with `physicalResourceId`, you can also
    #   provide `awsAccountId`, and `awsRegion`)
    #
    #  </note>
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The Resilience Hub application version.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services region that owns the physical resource.
    #
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   The logical identifier of the resource.
    #
    # @option params [String] :physical_resource_id
    #   The physical identifier of the resource.
    #
    # @option params [String] :resource_name
    #   The name of the resource.
    #
    # @return [Types::DescribeAppVersionResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppVersionResourceResponse#app_arn #app_arn} => String
    #   * {Types::DescribeAppVersionResourceResponse#app_version #app_version} => String
    #   * {Types::DescribeAppVersionResourceResponse#physical_resource #physical_resource} => Types::PhysicalResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_resource({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     aws_account_id: "CustomerId",
    #     aws_region: "AwsRegion",
    #     logical_resource_id: {
    #       eks_source_name: "String255",
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #     },
    #     physical_resource_id: "String2048",
    #     resource_name: "EntityName",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.physical_resource.additional_info #=> Hash
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components #=> Array
    #   resp.physical_resource.app_components[0].additional_info #=> Hash
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components[0].id #=> String
    #   resp.physical_resource.app_components[0].name #=> String
    #   resp.physical_resource.app_components[0].type #=> String
    #   resp.physical_resource.excluded #=> Boolean
    #   resp.physical_resource.logical_resource_id.eks_source_name #=> String
    #   resp.physical_resource.logical_resource_id.identifier #=> String
    #   resp.physical_resource.logical_resource_id.logical_stack_name #=> String
    #   resp.physical_resource.logical_resource_id.resource_group_name #=> String
    #   resp.physical_resource.logical_resource_id.terraform_source_name #=> String
    #   resp.physical_resource.parent_resource_name #=> String
    #   resp.physical_resource.physical_resource_id.aws_account_id #=> String
    #   resp.physical_resource.physical_resource_id.aws_region #=> String
    #   resp.physical_resource.physical_resource_id.identifier #=> String
    #   resp.physical_resource.physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.physical_resource.resource_name #=> String
    #   resp.physical_resource.resource_type #=> String
    #   resp.physical_resource.source_type #=> String, one of "AppTemplate", "Discovered"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResource AWS API Documentation
    #
    # @overload describe_app_version_resource(params = {})
    # @param [Hash] params ({})
    def describe_app_version_resource(params = {}, options = {})
      req = build_request(:describe_app_version_resource, params)
      req.send_request(options)
    end

    # Returns the resolution status for the specified resolution identifier
    # for an application version. If `resolutionId` is not specified, the
    # current resolution status is returned.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @option params [String] :resolution_id
    #   The identifier for a specific resolution.
    #
    # @return [Types::DescribeAppVersionResourcesResolutionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppVersionResourcesResolutionStatusResponse#app_arn #app_arn} => String
    #   * {Types::DescribeAppVersionResourcesResolutionStatusResponse#app_version #app_version} => String
    #   * {Types::DescribeAppVersionResourcesResolutionStatusResponse#error_message #error_message} => String
    #   * {Types::DescribeAppVersionResourcesResolutionStatusResponse#resolution_id #resolution_id} => String
    #   * {Types::DescribeAppVersionResourcesResolutionStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_resources_resolution_status({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.error_message #=> String
    #   resp.resolution_id #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResourcesResolutionStatus AWS API Documentation
    #
    # @overload describe_app_version_resources_resolution_status(params = {})
    # @param [Hash] params ({})
    def describe_app_version_resources_resolution_status(params = {}, options = {})
      req = build_request(:describe_app_version_resources_resolution_status, params)
      req.send_request(options)
    end

    # Describes details about an Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @return [Types::DescribeAppVersionTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppVersionTemplateResponse#app_arn #app_arn} => String
    #   * {Types::DescribeAppVersionTemplateResponse#app_template_body #app_template_body} => String
    #   * {Types::DescribeAppVersionTemplateResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_template({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_template_body #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionTemplate AWS API Documentation
    #
    # @overload describe_app_version_template(params = {})
    # @param [Hash] params ({})
    def describe_app_version_template(params = {}, options = {})
      req = build_request(:describe_app_version_template, params)
      req.send_request(options)
    end

    # Describes the status of importing resources to an application version.
    #
    # <note markdown="1"> If you get a 404 error with
    # `ResourceImportStatusNotFoundAppMetadataException`, you must call
    # `importResourcesToDraftAppVersion` after creating the application and
    # before calling `describeDraftAppVersionResourcesImportStatus` to
    # obtain the status.
    #
    #  </note>
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeDraftAppVersionResourcesImportStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDraftAppVersionResourcesImportStatusResponse#app_arn #app_arn} => String
    #   * {Types::DescribeDraftAppVersionResourcesImportStatusResponse#app_version #app_version} => String
    #   * {Types::DescribeDraftAppVersionResourcesImportStatusResponse#error_message #error_message} => String
    #   * {Types::DescribeDraftAppVersionResourcesImportStatusResponse#status #status} => String
    #   * {Types::DescribeDraftAppVersionResourcesImportStatusResponse#status_change_time #status_change_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_draft_app_version_resources_import_status({
    #     app_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.error_message #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.status_change_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeDraftAppVersionResourcesImportStatus AWS API Documentation
    #
    # @overload describe_draft_app_version_resources_import_status(params = {})
    # @param [Hash] params ({})
    def describe_draft_app_version_resources_import_status(params = {}, options = {})
      req = build_request(:describe_draft_app_version_resources_import_status, params)
      req.send_request(options)
    end

    # Describes a specified resiliency policy for an Resilience Hub
    # application. The returned policy object includes creation time, data
    # location constraints, the Amazon Resource Name (ARN) for the policy,
    # tags, tier, and more.
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeResiliencyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResiliencyPolicyResponse#policy #policy} => Types::ResiliencyPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resiliency_policy({
    #     policy_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.creation_time #=> Time
    #   resp.policy.data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.policy.estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.policy.policy #=> Hash
    #   resp.policy.policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.policy.policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.policy.policy_arn #=> String
    #   resp.policy.policy_description #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeResiliencyPolicy AWS API Documentation
    #
    # @overload describe_resiliency_policy(params = {})
    # @param [Hash] params ({})
    def describe_resiliency_policy(params = {}, options = {})
      req = build_request(:describe_resiliency_policy, params)
      req.send_request(options)
    end

    # Imports resources to Resilience Hub application draft version from
    # different input sources. For more information about the input sources
    # supported by Resilience Hub, see [Discover the structure and describe
    # your Resilience Hub application][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<Types::EksSource>] :eks_sources
    #   The input sources of the Amazon Elastic Kubernetes Service resources
    #   you need to import.
    #
    # @option params [String] :import_strategy
    #   The import strategy you would like to set to import resources into
    #   Resilience Hub application.
    #
    # @option params [Array<String>] :source_arns
    #   The Amazon Resource Names (ARNs) for the resources.
    #
    # @option params [Array<Types::TerraformSource>] :terraform_sources
    #   A list of terraform file s3 URLs you need to import.
    #
    # @return [Types::ImportResourcesToDraftAppVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportResourcesToDraftAppVersionResponse#app_arn #app_arn} => String
    #   * {Types::ImportResourcesToDraftAppVersionResponse#app_version #app_version} => String
    #   * {Types::ImportResourcesToDraftAppVersionResponse#eks_sources #eks_sources} => Array&lt;Types::EksSource&gt;
    #   * {Types::ImportResourcesToDraftAppVersionResponse#source_arns #source_arns} => Array&lt;String&gt;
    #   * {Types::ImportResourcesToDraftAppVersionResponse#status #status} => String
    #   * {Types::ImportResourcesToDraftAppVersionResponse#terraform_sources #terraform_sources} => Array&lt;Types::TerraformSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_resources_to_draft_app_version({
    #     app_arn: "Arn", # required
    #     eks_sources: [
    #       {
    #         eks_cluster_arn: "Arn", # required
    #         namespaces: ["EksNamespace"], # required
    #       },
    #     ],
    #     import_strategy: "AddOnly", # accepts AddOnly, ReplaceAll
    #     source_arns: ["Arn"],
    #     terraform_sources: [
    #       {
    #         s3_state_file_url: "S3Url", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.eks_sources #=> Array
    #   resp.eks_sources[0].eks_cluster_arn #=> String
    #   resp.eks_sources[0].namespaces #=> Array
    #   resp.eks_sources[0].namespaces[0] #=> String
    #   resp.source_arns #=> Array
    #   resp.source_arns[0] #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.terraform_sources #=> Array
    #   resp.terraform_sources[0].s3_state_file_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ImportResourcesToDraftAppVersion AWS API Documentation
    #
    # @overload import_resources_to_draft_app_version(params = {})
    # @param [Hash] params ({})
    def import_resources_to_draft_app_version(params = {}, options = {})
      req = build_request(:import_resources_to_draft_app_version, params)
      req.send_request(options)
    end

    # Lists the alarm recommendations for an Resilience Hub application.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAlarmRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlarmRecommendationsResponse#alarm_recommendations #alarm_recommendations} => Array&lt;Types::AlarmRecommendation&gt;
    #   * {Types::ListAlarmRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarm_recommendations({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.alarm_recommendations #=> Array
    #   resp.alarm_recommendations[0].app_component_name #=> String
    #   resp.alarm_recommendations[0].description #=> String
    #   resp.alarm_recommendations[0].items #=> Array
    #   resp.alarm_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.alarm_recommendations[0].items[0].resource_id #=> String
    #   resp.alarm_recommendations[0].items[0].target_account_id #=> String
    #   resp.alarm_recommendations[0].items[0].target_region #=> String
    #   resp.alarm_recommendations[0].name #=> String
    #   resp.alarm_recommendations[0].prerequisite #=> String
    #   resp.alarm_recommendations[0].recommendation_id #=> String
    #   resp.alarm_recommendations[0].reference_id #=> String
    #   resp.alarm_recommendations[0].type #=> String, one of "Metric", "Composite", "Canary", "Logs", "Event"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAlarmRecommendations AWS API Documentation
    #
    # @overload list_alarm_recommendations(params = {})
    # @param [Hash] params ({})
    def list_alarm_recommendations(params = {}, options = {})
      req = build_request(:list_alarm_recommendations, params)
      req.send_request(options)
    end

    # Lists the assessments for an Resilience Hub application. You can use
    # request parameters to refine the results for the response object.
    #
    # @option params [String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :assessment_name
    #   The name for the assessment.
    #
    # @option params [Array<String>] :assessment_status
    #   The current status of the assessment for the resiliency policy.
    #
    # @option params [String] :compliance_status
    #   The current status of compliance for the resiliency policy.
    #
    # @option params [String] :invoker
    #   Specifies the entity that invoked a specific assessment, either a
    #   `User` or the `System`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @option params [Boolean] :reverse_order
    #   The default is to sort by ascending **startTime**. To sort by
    #   descending **startTime**, set reverseOrder to `true`.
    #
    # @return [Types::ListAppAssessmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppAssessmentsResponse#assessment_summaries #assessment_summaries} => Array&lt;Types::AppAssessmentSummary&gt;
    #   * {Types::ListAppAssessmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_assessments({
    #     app_arn: "Arn",
    #     assessment_name: "EntityName",
    #     assessment_status: ["Pending"], # accepts Pending, InProgress, Failed, Success
    #     compliance_status: "PolicyBreached", # accepts PolicyBreached, PolicyMet
    #     invoker: "User", # accepts User, System
    #     max_results: 1,
    #     next_token: "NextToken",
    #     reverse_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_summaries #=> Array
    #   resp.assessment_summaries[0].app_arn #=> String
    #   resp.assessment_summaries[0].app_version #=> String
    #   resp.assessment_summaries[0].assessment_arn #=> String
    #   resp.assessment_summaries[0].assessment_name #=> String
    #   resp.assessment_summaries[0].assessment_status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.assessment_summaries[0].compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.assessment_summaries[0].cost.amount #=> Float
    #   resp.assessment_summaries[0].cost.currency #=> String
    #   resp.assessment_summaries[0].cost.frequency #=> String, one of "Hourly", "Daily", "Monthly", "Yearly"
    #   resp.assessment_summaries[0].end_time #=> Time
    #   resp.assessment_summaries[0].invoker #=> String, one of "User", "System"
    #   resp.assessment_summaries[0].message #=> String
    #   resp.assessment_summaries[0].resiliency_score #=> Float
    #   resp.assessment_summaries[0].start_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppAssessments AWS API Documentation
    #
    # @overload list_app_assessments(params = {})
    # @param [Hash] params ({})
    def list_app_assessments(params = {}, options = {})
      req = build_request(:list_app_assessments, params)
      req.send_request(options)
    end

    # Lists the compliances for an Resilience Hub Application Component.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppComponentCompliancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppComponentCompliancesResponse#component_compliances #component_compliances} => Array&lt;Types::AppComponentCompliance&gt;
    #   * {Types::ListAppComponentCompliancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_component_compliances({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.component_compliances #=> Array
    #   resp.component_compliances[0].app_component_name #=> String
    #   resp.component_compliances[0].compliance #=> Hash
    #   resp.component_compliances[0].compliance["DisruptionType"].achievable_rpo_in_secs #=> Integer
    #   resp.component_compliances[0].compliance["DisruptionType"].achievable_rto_in_secs #=> Integer
    #   resp.component_compliances[0].compliance["DisruptionType"].compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.component_compliances[0].compliance["DisruptionType"].current_rpo_in_secs #=> Integer
    #   resp.component_compliances[0].compliance["DisruptionType"].current_rto_in_secs #=> Integer
    #   resp.component_compliances[0].compliance["DisruptionType"].message #=> String
    #   resp.component_compliances[0].compliance["DisruptionType"].rpo_description #=> String
    #   resp.component_compliances[0].compliance["DisruptionType"].rpo_reference_id #=> String
    #   resp.component_compliances[0].compliance["DisruptionType"].rto_description #=> String
    #   resp.component_compliances[0].compliance["DisruptionType"].rto_reference_id #=> String
    #   resp.component_compliances[0].cost.amount #=> Float
    #   resp.component_compliances[0].cost.currency #=> String
    #   resp.component_compliances[0].cost.frequency #=> String, one of "Hourly", "Daily", "Monthly", "Yearly"
    #   resp.component_compliances[0].message #=> String
    #   resp.component_compliances[0].resiliency_score.disruption_score #=> Hash
    #   resp.component_compliances[0].resiliency_score.disruption_score["DisruptionType"] #=> Float
    #   resp.component_compliances[0].resiliency_score.score #=> Float
    #   resp.component_compliances[0].status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentCompliances AWS API Documentation
    #
    # @overload list_app_component_compliances(params = {})
    # @param [Hash] params ({})
    def list_app_component_compliances(params = {}, options = {})
      req = build_request(:list_app_component_compliances, params)
      req.send_request(options)
    end

    # Lists the recommendations for an Resilience Hub Application Component.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppComponentRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppComponentRecommendationsResponse#component_recommendations #component_recommendations} => Array&lt;Types::ComponentRecommendation&gt;
    #   * {Types::ListAppComponentRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_component_recommendations({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.component_recommendations #=> Array
    #   resp.component_recommendations[0].app_component_name #=> String
    #   resp.component_recommendations[0].config_recommendations #=> Array
    #   resp.component_recommendations[0].config_recommendations[0].app_component_name #=> String
    #   resp.component_recommendations[0].config_recommendations[0].compliance #=> Hash
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].achievable_rpo_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].achievable_rto_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].current_rpo_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].current_rto_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].message #=> String
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].rpo_description #=> String
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].rpo_reference_id #=> String
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].rto_description #=> String
    #   resp.component_recommendations[0].config_recommendations[0].compliance["DisruptionType"].rto_reference_id #=> String
    #   resp.component_recommendations[0].config_recommendations[0].cost.amount #=> Float
    #   resp.component_recommendations[0].config_recommendations[0].cost.currency #=> String
    #   resp.component_recommendations[0].config_recommendations[0].cost.frequency #=> String, one of "Hourly", "Daily", "Monthly", "Yearly"
    #   resp.component_recommendations[0].config_recommendations[0].description #=> String
    #   resp.component_recommendations[0].config_recommendations[0].ha_architecture #=> String, one of "MultiSite", "WarmStandby", "PilotLight", "BackupAndRestore", "NoRecoveryPlan"
    #   resp.component_recommendations[0].config_recommendations[0].name #=> String
    #   resp.component_recommendations[0].config_recommendations[0].optimization_type #=> String, one of "LeastCost", "LeastChange", "BestAZRecovery", "LeastErrors", "BestAttainable", "BestRegionRecovery"
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance #=> Hash
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance["DisruptionType"].expected_compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance["DisruptionType"].expected_rpo_description #=> String
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance["DisruptionType"].expected_rpo_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance["DisruptionType"].expected_rto_description #=> String
    #   resp.component_recommendations[0].config_recommendations[0].recommendation_compliance["DisruptionType"].expected_rto_in_secs #=> Integer
    #   resp.component_recommendations[0].config_recommendations[0].reference_id #=> String
    #   resp.component_recommendations[0].config_recommendations[0].suggested_changes #=> Array
    #   resp.component_recommendations[0].config_recommendations[0].suggested_changes[0] #=> String
    #   resp.component_recommendations[0].recommendation_status #=> String, one of "BreachedUnattainable", "BreachedCanMeet", "MetCanImprove"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentRecommendations AWS API Documentation
    #
    # @overload list_app_component_recommendations(params = {})
    # @param [Hash] params ({})
    def list_app_component_recommendations(params = {}, options = {})
      req = build_request(:list_app_component_recommendations, params)
      req.send_request(options)
    end

    # Lists all the input sources of the Resilience Hub application. For
    # more information about the input sources supported by Resilience Hub,
    # see [Discover the structure and describe your Resilience Hub
    # application][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The Resilience Hub application version.
    #
    # @option params [Integer] :max_results
    #   Maximum number of input sources to be displayed per Resilience Hub
    #   application.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppInputSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInputSourcesResponse#app_input_sources #app_input_sources} => Array&lt;Types::AppInputSource&gt;
    #   * {Types::ListAppInputSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_input_sources({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_input_sources #=> Array
    #   resp.app_input_sources[0].eks_source_cluster_namespace.eks_cluster_arn #=> String
    #   resp.app_input_sources[0].eks_source_cluster_namespace.namespace #=> String
    #   resp.app_input_sources[0].import_type #=> String, one of "CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"
    #   resp.app_input_sources[0].resource_count #=> Integer
    #   resp.app_input_sources[0].source_arn #=> String
    #   resp.app_input_sources[0].source_name #=> String
    #   resp.app_input_sources[0].terraform_source.s3_state_file_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppInputSources AWS API Documentation
    #
    # @overload list_app_input_sources(params = {})
    # @param [Hash] params ({})
    def list_app_input_sources(params = {}, options = {})
      req = build_request(:list_app_input_sources, params)
      req.send_request(options)
    end

    # Lists all the Application Components in the Resilience Hub
    # application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the Application Component.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Application Components to be displayed per
    #   Resilience Hub application version.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppVersionAppComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppVersionAppComponentsResponse#app_arn #app_arn} => String
    #   * {Types::ListAppVersionAppComponentsResponse#app_components #app_components} => Array&lt;Types::AppComponent&gt;
    #   * {Types::ListAppVersionAppComponentsResponse#app_version #app_version} => String
    #   * {Types::ListAppVersionAppComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_version_app_components({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_components #=> Array
    #   resp.app_components[0].additional_info #=> Hash
    #   resp.app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_components[0].id #=> String
    #   resp.app_components[0].name #=> String
    #   resp.app_components[0].type #=> String
    #   resp.app_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionAppComponents AWS API Documentation
    #
    # @overload list_app_version_app_components(params = {})
    # @param [Hash] params ({})
    def list_app_version_app_components(params = {}, options = {})
      req = build_request(:list_app_version_app_components, params)
      req.send_request(options)
    end

    # Lists how the resources in an application version are mapped/sourced
    # from. Mappings can be physical resource identifiers, CloudFormation
    # stacks, resource-groups, or an application registry app.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppVersionResourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppVersionResourceMappingsResponse#next_token #next_token} => String
    #   * {Types::ListAppVersionResourceMappingsResponse#resource_mappings #resource_mappings} => Array&lt;Types::ResourceMapping&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_version_resource_mappings({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_mappings #=> Array
    #   resp.resource_mappings[0].app_registry_app_name #=> String
    #   resp.resource_mappings[0].eks_source_name #=> String
    #   resp.resource_mappings[0].logical_stack_name #=> String
    #   resp.resource_mappings[0].mapping_type #=> String, one of "CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"
    #   resp.resource_mappings[0].physical_resource_id.aws_account_id #=> String
    #   resp.resource_mappings[0].physical_resource_id.aws_region #=> String
    #   resp.resource_mappings[0].physical_resource_id.identifier #=> String
    #   resp.resource_mappings[0].physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.resource_mappings[0].resource_group_name #=> String
    #   resp.resource_mappings[0].resource_name #=> String
    #   resp.resource_mappings[0].terraform_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResourceMappings AWS API Documentation
    #
    # @overload list_app_version_resource_mappings(params = {})
    # @param [Hash] params ({})
    def list_app_version_resource_mappings(params = {}, options = {})
      req = build_request(:list_app_version_resource_mappings, params)
      req.send_request(options)
    end

    # Lists all the resources in an Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @option params [String] :resolution_id
    #   The identifier for a specific resolution.
    #
    # @return [Types::ListAppVersionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppVersionResourcesResponse#next_token #next_token} => String
    #   * {Types::ListAppVersionResourcesResponse#physical_resources #physical_resources} => Array&lt;Types::PhysicalResource&gt;
    #   * {Types::ListAppVersionResourcesResponse#resolution_id #resolution_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_version_resources({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resolution_id: "String255",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.physical_resources #=> Array
    #   resp.physical_resources[0].additional_info #=> Hash
    #   resp.physical_resources[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resources[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resources[0].app_components #=> Array
    #   resp.physical_resources[0].app_components[0].additional_info #=> Hash
    #   resp.physical_resources[0].app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resources[0].app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resources[0].app_components[0].id #=> String
    #   resp.physical_resources[0].app_components[0].name #=> String
    #   resp.physical_resources[0].app_components[0].type #=> String
    #   resp.physical_resources[0].excluded #=> Boolean
    #   resp.physical_resources[0].logical_resource_id.eks_source_name #=> String
    #   resp.physical_resources[0].logical_resource_id.identifier #=> String
    #   resp.physical_resources[0].logical_resource_id.logical_stack_name #=> String
    #   resp.physical_resources[0].logical_resource_id.resource_group_name #=> String
    #   resp.physical_resources[0].logical_resource_id.terraform_source_name #=> String
    #   resp.physical_resources[0].parent_resource_name #=> String
    #   resp.physical_resources[0].physical_resource_id.aws_account_id #=> String
    #   resp.physical_resources[0].physical_resource_id.aws_region #=> String
    #   resp.physical_resources[0].physical_resource_id.identifier #=> String
    #   resp.physical_resources[0].physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.physical_resources[0].resource_name #=> String
    #   resp.physical_resources[0].resource_type #=> String
    #   resp.physical_resources[0].source_type #=> String, one of "AppTemplate", "Discovered"
    #   resp.resolution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResources AWS API Documentation
    #
    # @overload list_app_version_resources(params = {})
    # @param [Hash] params ({})
    def list_app_version_resources(params = {}, options = {})
      req = build_request(:list_app_version_resources, params)
      req.send_request(options)
    end

    # Lists the different versions for the Resilience Hub applications.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppVersionsResponse#app_versions #app_versions} => Array&lt;Types::AppVersionSummary&gt;
    #   * {Types::ListAppVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_versions({
    #     app_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_versions #=> Array
    #   resp.app_versions[0].app_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersions AWS API Documentation
    #
    # @overload list_app_versions(params = {})
    # @param [Hash] params ({})
    def list_app_versions(params = {}, options = {})
      req = build_request(:list_app_versions, params)
      req.send_request(options)
    end

    # Lists your Resilience Hub applications.
    #
    # <note markdown="1"> You can filter applications using only one filter at a time or without
    # using any filter. If you try to filter applications using multiple
    # filters, you will get the following error:
    #
    #  `An error occurred (ValidationException) when calling the ListApps
    # operation: Only one filter is supported for this operation.`
    #
    #  </note>
    #
    # @option params [String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :name
    #   The name for the one of the listed applications.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListAppsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsResponse#app_summaries #app_summaries} => Array&lt;Types::AppSummary&gt;
    #   * {Types::ListAppsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps({
    #     app_arn: "Arn",
    #     max_results: 1,
    #     name: "EntityName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_summaries #=> Array
    #   resp.app_summaries[0].app_arn #=> String
    #   resp.app_summaries[0].assessment_schedule #=> String, one of "Disabled", "Daily"
    #   resp.app_summaries[0].compliance_status #=> String, one of "PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"
    #   resp.app_summaries[0].creation_time #=> Time
    #   resp.app_summaries[0].description #=> String
    #   resp.app_summaries[0].name #=> String
    #   resp.app_summaries[0].resiliency_score #=> Float
    #   resp.app_summaries[0].status #=> String, one of "Active", "Deleting"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListApps AWS API Documentation
    #
    # @overload list_apps(params = {})
    # @param [Hash] params ({})
    def list_apps(params = {}, options = {})
      req = build_request(:list_apps, params)
      req.send_request(options)
    end

    # Lists the recommendation templates for the Resilience Hub
    # applications.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :name
    #   The name for one of the listed recommendation templates.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @option params [String] :recommendation_template_arn
    #   The Amazon Resource Name (ARN) for a recommendation template.
    #
    # @option params [Boolean] :reverse_order
    #   The default is to sort by ascending **startTime**. To sort by
    #   descending **startTime**, set reverseOrder to `true`.
    #
    # @option params [Array<String>] :status
    #   The status of the action.
    #
    # @return [Types::ListRecommendationTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListRecommendationTemplatesResponse#recommendation_templates #recommendation_templates} => Array&lt;Types::RecommendationTemplate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_templates({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     name: "EntityName",
    #     next_token: "NextToken",
    #     recommendation_template_arn: "Arn",
    #     reverse_order: false,
    #     status: ["Pending"], # accepts Pending, InProgress, Failed, Success
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_templates #=> Array
    #   resp.recommendation_templates[0].app_arn #=> String
    #   resp.recommendation_templates[0].assessment_arn #=> String
    #   resp.recommendation_templates[0].end_time #=> Time
    #   resp.recommendation_templates[0].format #=> String, one of "CfnYaml", "CfnJson"
    #   resp.recommendation_templates[0].message #=> String
    #   resp.recommendation_templates[0].name #=> String
    #   resp.recommendation_templates[0].needs_replacements #=> Boolean
    #   resp.recommendation_templates[0].recommendation_ids #=> Array
    #   resp.recommendation_templates[0].recommendation_ids[0] #=> String
    #   resp.recommendation_templates[0].recommendation_template_arn #=> String
    #   resp.recommendation_templates[0].recommendation_types #=> Array
    #   resp.recommendation_templates[0].recommendation_types[0] #=> String, one of "Alarm", "Sop", "Test"
    #   resp.recommendation_templates[0].start_time #=> Time
    #   resp.recommendation_templates[0].status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.recommendation_templates[0].tags #=> Hash
    #   resp.recommendation_templates[0].tags["TagKey"] #=> String
    #   resp.recommendation_templates[0].templates_location.bucket #=> String
    #   resp.recommendation_templates[0].templates_location.prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListRecommendationTemplates AWS API Documentation
    #
    # @overload list_recommendation_templates(params = {})
    # @param [Hash] params ({})
    def list_recommendation_templates(params = {}, options = {})
      req = build_request(:list_recommendation_templates, params)
      req.send_request(options)
    end

    # Lists the resiliency policies for the Resilience Hub applications.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @option params [String] :policy_name
    #   The name of the policy
    #
    # @return [Types::ListResiliencyPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResiliencyPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListResiliencyPoliciesResponse#resiliency_policies #resiliency_policies} => Array&lt;Types::ResiliencyPolicy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resiliency_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     policy_name: "EntityName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resiliency_policies #=> Array
    #   resp.resiliency_policies[0].creation_time #=> Time
    #   resp.resiliency_policies[0].data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.resiliency_policies[0].estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.resiliency_policies[0].policy #=> Hash
    #   resp.resiliency_policies[0].policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.resiliency_policies[0].policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.resiliency_policies[0].policy_arn #=> String
    #   resp.resiliency_policies[0].policy_description #=> String
    #   resp.resiliency_policies[0].policy_name #=> String
    #   resp.resiliency_policies[0].tags #=> Hash
    #   resp.resiliency_policies[0].tags["TagKey"] #=> String
    #   resp.resiliency_policies[0].tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListResiliencyPolicies AWS API Documentation
    #
    # @overload list_resiliency_policies(params = {})
    # @param [Hash] params ({})
    def list_resiliency_policies(params = {}, options = {})
      req = build_request(:list_resiliency_policies, params)
      req.send_request(options)
    end

    # Lists the standard operating procedure (SOP) recommendations for the
    # Resilience Hub applications.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListSopRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSopRecommendationsResponse#next_token #next_token} => String
    #   * {Types::ListSopRecommendationsResponse#sop_recommendations #sop_recommendations} => Array&lt;Types::SopRecommendation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sop_recommendations({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sop_recommendations #=> Array
    #   resp.sop_recommendations[0].app_component_name #=> String
    #   resp.sop_recommendations[0].description #=> String
    #   resp.sop_recommendations[0].items #=> Array
    #   resp.sop_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.sop_recommendations[0].items[0].resource_id #=> String
    #   resp.sop_recommendations[0].items[0].target_account_id #=> String
    #   resp.sop_recommendations[0].items[0].target_region #=> String
    #   resp.sop_recommendations[0].name #=> String
    #   resp.sop_recommendations[0].prerequisite #=> String
    #   resp.sop_recommendations[0].recommendation_id #=> String
    #   resp.sop_recommendations[0].reference_id #=> String
    #   resp.sop_recommendations[0].service_type #=> String, one of "SSM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSopRecommendations AWS API Documentation
    #
    # @overload list_sop_recommendations(params = {})
    # @param [Hash] params ({})
    def list_sop_recommendations(params = {}, options = {})
      req = build_request(:list_sop_recommendations, params)
      req.send_request(options)
    end

    # Lists the suggested resiliency policies for the Resilience Hub
    # applications.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListSuggestedResiliencyPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSuggestedResiliencyPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListSuggestedResiliencyPoliciesResponse#resiliency_policies #resiliency_policies} => Array&lt;Types::ResiliencyPolicy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suggested_resiliency_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resiliency_policies #=> Array
    #   resp.resiliency_policies[0].creation_time #=> Time
    #   resp.resiliency_policies[0].data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.resiliency_policies[0].estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.resiliency_policies[0].policy #=> Hash
    #   resp.resiliency_policies[0].policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.resiliency_policies[0].policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.resiliency_policies[0].policy_arn #=> String
    #   resp.resiliency_policies[0].policy_description #=> String
    #   resp.resiliency_policies[0].policy_name #=> String
    #   resp.resiliency_policies[0].tags #=> Hash
    #   resp.resiliency_policies[0].tags["TagKey"] #=> String
    #   resp.resiliency_policies[0].tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSuggestedResiliencyPolicies AWS API Documentation
    #
    # @overload list_suggested_resiliency_policies(params = {})
    # @param [Hash] params ({})
    def list_suggested_resiliency_policies(params = {}, options = {})
      req = build_request(:list_suggested_resiliency_policies, params)
      req.send_request(options)
    end

    # Lists the tags for your resources in your Resilience Hub applications.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for a specific resource in your
    #   Resilience Hub application.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the test recommendations for the Resilience Hub application.
    #
    # @option params [required, String] :assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @return [Types::ListTestRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRecommendationsResponse#next_token #next_token} => String
    #   * {Types::ListTestRecommendationsResponse#test_recommendations #test_recommendations} => Array&lt;Types::TestRecommendation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_recommendations({
    #     assessment_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.test_recommendations #=> Array
    #   resp.test_recommendations[0].app_component_name #=> String
    #   resp.test_recommendations[0].depends_on_alarms #=> Array
    #   resp.test_recommendations[0].depends_on_alarms[0] #=> String
    #   resp.test_recommendations[0].description #=> String
    #   resp.test_recommendations[0].intent #=> String
    #   resp.test_recommendations[0].items #=> Array
    #   resp.test_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.test_recommendations[0].items[0].resource_id #=> String
    #   resp.test_recommendations[0].items[0].target_account_id #=> String
    #   resp.test_recommendations[0].items[0].target_region #=> String
    #   resp.test_recommendations[0].name #=> String
    #   resp.test_recommendations[0].prerequisite #=> String
    #   resp.test_recommendations[0].recommendation_id #=> String
    #   resp.test_recommendations[0].reference_id #=> String
    #   resp.test_recommendations[0].risk #=> String, one of "Small", "Medium", "High"
    #   resp.test_recommendations[0].type #=> String, one of "Software", "Hardware", "AZ", "Region"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTestRecommendations AWS API Documentation
    #
    # @overload list_test_recommendations(params = {})
    # @param [Hash] params ({})
    def list_test_recommendations(params = {}, options = {})
      req = build_request(:list_test_recommendations, params)
      req.send_request(options)
    end

    # Lists the resources that are not currently supported in Resilience
    # Hub. An unsupported resource is a resource that exists in the object
    # that was used to create an app, but is not supported by Resilience
    # Hub.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #
    # @option params [String] :resolution_id
    #   The identifier for a specific resolution.
    #
    # @return [Types::ListUnsupportedAppVersionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUnsupportedAppVersionResourcesResponse#next_token #next_token} => String
    #   * {Types::ListUnsupportedAppVersionResourcesResponse#resolution_id #resolution_id} => String
    #   * {Types::ListUnsupportedAppVersionResourcesResponse#unsupported_resources #unsupported_resources} => Array&lt;Types::UnsupportedResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_unsupported_app_version_resources({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resolution_id: "String255",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resolution_id #=> String
    #   resp.unsupported_resources #=> Array
    #   resp.unsupported_resources[0].logical_resource_id.eks_source_name #=> String
    #   resp.unsupported_resources[0].logical_resource_id.identifier #=> String
    #   resp.unsupported_resources[0].logical_resource_id.logical_stack_name #=> String
    #   resp.unsupported_resources[0].logical_resource_id.resource_group_name #=> String
    #   resp.unsupported_resources[0].logical_resource_id.terraform_source_name #=> String
    #   resp.unsupported_resources[0].physical_resource_id.aws_account_id #=> String
    #   resp.unsupported_resources[0].physical_resource_id.aws_region #=> String
    #   resp.unsupported_resources[0].physical_resource_id.identifier #=> String
    #   resp.unsupported_resources[0].physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.unsupported_resources[0].resource_type #=> String
    #   resp.unsupported_resources[0].unsupported_resource_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListUnsupportedAppVersionResources AWS API Documentation
    #
    # @overload list_unsupported_app_version_resources(params = {})
    # @param [Hash] params ({})
    def list_unsupported_app_version_resources(params = {}, options = {})
      req = build_request(:list_unsupported_app_version_resources, params)
      req.send_request(options)
    end

    # Publishes a new version of a specific Resilience Hub application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::PublishAppVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishAppVersionResponse#app_arn #app_arn} => String
    #   * {Types::PublishAppVersionResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_app_version({
    #     app_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PublishAppVersion AWS API Documentation
    #
    # @overload publish_app_version(params = {})
    # @param [Hash] params ({})
    def publish_app_version(params = {}, options = {})
      req = build_request(:publish_app_version, params)
      req.send_request(options)
    end

    # Adds or updates the app template for an Resilience Hub application
    # draft version.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_template_body
    #   A JSON string that provides information about your application
    #   structure. To learn more about the `appTemplateBody` template, see the
    #   sample template provided in the *Examples* section.
    #
    #   The `appTemplateBody` JSON string has the following structure:
    #
    #   * <b> <code>resources</code> </b>
    #
    #     The list of logical resources that must be included in the
    #     Resilience Hub application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to exclude.
    #
    #      </note>
    #
    #     Each `resources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceId</code> </i>
    #
    #       The logical identifier of the resource.
    #
    #       Type: Object
    #
    #       Each `logicalResourceId` object includes the following fields:
    #
    #       * `identifier`
    #
    #         The identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         The name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #     * <i> <code>type</code> </i>
    #
    #       The type of resource.
    #
    #       Type: string
    #
    #     * <i> <code>name</code> </i>
    #
    #       The name of the resource.
    #
    #       Type: String
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through the
    #       Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #       format) of only one failover region and one associated account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>appComponents</code> </b>
    #
    #     The list of Application Components that this resource belongs to. If
    #     an Application Component is not part of the Resilience Hub
    #     application, it will be added.
    #
    #     Type: Array
    #
    #     Each `appComponents` array item includes the following fields:
    #
    #     * `name`
    #
    #       The name of the Application Component.
    #
    #       Type: String
    #
    #     * `type`
    #
    #       The type of Application Component. For more information about the
    #       types of Application Component, see [Grouping resources in an
    #       AppComponent][2].
    #
    #       Type: String
    #
    #     * `resourceNames`
    #
    #       The list of included resources that are assigned to the
    #       Application Component.
    #
    #       Type: Array of strings
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through the
    #       Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #       format) of only one failover region and one associated account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>excludedResources</code> </b>
    #
    #     The list of logical resource identifiers to be excluded from the
    #     application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to include.
    #
    #      </note>
    #
    #     Each `excludedResources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceIds</code> </i>
    #
    #       The logical identifier of the resource.
    #
    #       Type: Object
    #
    #       <note markdown="1"> You can configure only one of the following fields:
    #
    #        * `logicalStackName`
    #
    #       * `resourceGroupName`
    #
    #       * `terraformSourceName`
    #
    #       * `eksSourceName`
    #
    #        </note>
    #
    #       Each `logicalResourceIds` object includes the following fields:
    #
    #       * `identifier`
    #
    #         The identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         The name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #   * <b> <code>version</code> </b>
    #
    #     The Resilience Hub application version.
    #
    #   * `additionalInfo`
    #
    #     Additional configuration parameters for an Resilience Hub
    #     application. If you want to implement `additionalInfo` through the
    #     Resilience Hub console rather than using an API call, see [Configure
    #     the application configuration parameters][1].
    #
    #     <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #     format) of only one failover region and one associated account.
    #
    #      Key: `"failover-regions"`
    #
    #      Value: `"[\{"region":"<REGION>",
    #     "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   [2]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #
    # @return [Types::PutDraftAppVersionTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDraftAppVersionTemplateResponse#app_arn #app_arn} => String
    #   * {Types::PutDraftAppVersionTemplateResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_draft_app_version_template({
    #     app_arn: "Arn", # required
    #     app_template_body: "AppTemplateBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PutDraftAppVersionTemplate AWS API Documentation
    #
    # @overload put_draft_app_version_template(params = {})
    # @param [Hash] params ({})
    def put_draft_app_version_template(params = {}, options = {})
      req = build_request(:put_draft_app_version_template, params)
      req.send_request(options)
    end

    # Removes resource mappings from a draft application version.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :app_registry_app_names
    #   The names of the registered applications you want to remove from the
    #   resource mappings.
    #
    # @option params [Array<String>] :eks_source_names
    #   The names of the Amazon Elastic Kubernetes Service clusters and
    #   namespaces you want to remove from the resource mappings.
    #
    #   <note markdown="1"> This parameter accepts values in "eks-cluster/namespace" format.
    #
    #    </note>
    #
    # @option params [Array<String>] :logical_stack_names
    #   The names of the CloudFormation stacks you want to remove from the
    #   resource mappings.
    #
    # @option params [Array<String>] :resource_group_names
    #   The names of the resource groups you want to remove from the resource
    #   mappings.
    #
    # @option params [Array<String>] :resource_names
    #   The names of the resources you want to remove from the resource
    #   mappings.
    #
    # @option params [Array<String>] :terraform_source_names
    #   The names of the Terraform sources you want to remove from the
    #   resource mappings.
    #
    # @return [Types::RemoveDraftAppVersionResourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveDraftAppVersionResourceMappingsResponse#app_arn #app_arn} => String
    #   * {Types::RemoveDraftAppVersionResourceMappingsResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_draft_app_version_resource_mappings({
    #     app_arn: "Arn", # required
    #     app_registry_app_names: ["EntityName"],
    #     eks_source_names: ["String255"],
    #     logical_stack_names: ["String255"],
    #     resource_group_names: ["EntityName"],
    #     resource_names: ["EntityName"],
    #     terraform_source_names: ["String255"],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RemoveDraftAppVersionResourceMappings AWS API Documentation
    #
    # @overload remove_draft_app_version_resource_mappings(params = {})
    # @param [Hash] params ({})
    def remove_draft_app_version_resource_mappings(params = {}, options = {})
      req = build_request(:remove_draft_app_version_resource_mappings, params)
      req.send_request(options)
    end

    # Resolves the resources for an application version.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @return [Types::ResolveAppVersionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveAppVersionResourcesResponse#app_arn #app_arn} => String
    #   * {Types::ResolveAppVersionResourcesResponse#app_version #app_version} => String
    #   * {Types::ResolveAppVersionResourcesResponse#resolution_id #resolution_id} => String
    #   * {Types::ResolveAppVersionResourcesResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_app_version_resources({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.resolution_id #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResolveAppVersionResources AWS API Documentation
    #
    # @overload resolve_app_version_resources(params = {})
    # @param [Hash] params ({})
    def resolve_app_version_resources(params = {}, options = {})
      req = build_request(:resolve_app_version_resources, params)
      req.send_request(options)
    end

    # Creates a new application assessment for an application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :app_version
    #   The version of the application.
    #
    # @option params [required, String] :assessment_name
    #   The name for the assessment.
    #
    # @option params [String] :client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #
    # @return [Types::StartAppAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAppAssessmentResponse#assessment #assessment} => Types::AppAssessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app_assessment({
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     assessment_name: "EntityName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.app_arn #=> String
    #   resp.assessment.app_version #=> String
    #   resp.assessment.assessment_arn #=> String
    #   resp.assessment.assessment_name #=> String
    #   resp.assessment.assessment_status #=> String, one of "Pending", "InProgress", "Failed", "Success"
    #   resp.assessment.compliance #=> Hash
    #   resp.assessment.compliance["DisruptionType"].achievable_rpo_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].achievable_rto_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.assessment.compliance["DisruptionType"].current_rpo_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].current_rto_in_secs #=> Integer
    #   resp.assessment.compliance["DisruptionType"].message #=> String
    #   resp.assessment.compliance["DisruptionType"].rpo_description #=> String
    #   resp.assessment.compliance["DisruptionType"].rpo_reference_id #=> String
    #   resp.assessment.compliance["DisruptionType"].rto_description #=> String
    #   resp.assessment.compliance["DisruptionType"].rto_reference_id #=> String
    #   resp.assessment.compliance_status #=> String, one of "PolicyBreached", "PolicyMet"
    #   resp.assessment.cost.amount #=> Float
    #   resp.assessment.cost.currency #=> String
    #   resp.assessment.cost.frequency #=> String, one of "Hourly", "Daily", "Monthly", "Yearly"
    #   resp.assessment.end_time #=> Time
    #   resp.assessment.invoker #=> String, one of "User", "System"
    #   resp.assessment.message #=> String
    #   resp.assessment.policy.creation_time #=> Time
    #   resp.assessment.policy.data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.assessment.policy.estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.assessment.policy.policy #=> Hash
    #   resp.assessment.policy.policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.assessment.policy.policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.assessment.policy.policy_arn #=> String
    #   resp.assessment.policy.policy_description #=> String
    #   resp.assessment.policy.policy_name #=> String
    #   resp.assessment.policy.tags #=> Hash
    #   resp.assessment.policy.tags["TagKey"] #=> String
    #   resp.assessment.policy.tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #   resp.assessment.resiliency_score.disruption_score #=> Hash
    #   resp.assessment.resiliency_score.disruption_score["DisruptionType"] #=> Float
    #   resp.assessment.resiliency_score.score #=> Float
    #   resp.assessment.resource_errors_details.has_more_errors #=> Boolean
    #   resp.assessment.resource_errors_details.resource_errors #=> Array
    #   resp.assessment.resource_errors_details.resource_errors[0].logical_resource_id #=> String
    #   resp.assessment.resource_errors_details.resource_errors[0].physical_resource_id #=> String
    #   resp.assessment.resource_errors_details.resource_errors[0].reason #=> String
    #   resp.assessment.start_time #=> Time
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/StartAppAssessment AWS API Documentation
    #
    # @overload start_app_assessment(params = {})
    # @param [Hash] params ({})
    def start_app_assessment(params = {}, options = {})
      req = build_request(:start_app_assessment, params)
      req.send_request(options)
    end

    # Applies one or more tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to assign to the resource. Each tag consists of a key/value
    #   pair.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags you want to remove.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an application.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #
    # @option params [Boolean] :clear_resiliency_policy_arn
    #   Specifies if the resiliency policy ARN should be cleared.
    #
    # @option params [String] :description
    #   The optional description for an app.
    #
    # @option params [String] :policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::UpdateAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppResponse#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app({
    #     app_arn: "Arn", # required
    #     assessment_schedule: "Disabled", # accepts Disabled, Daily
    #     clear_resiliency_policy_arn: false,
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_arn #=> String
    #   resp.app.assessment_schedule #=> String, one of "Disabled", "Daily"
    #   resp.app.compliance_status #=> String, one of "PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"
    #   resp.app.creation_time #=> Time
    #   resp.app.description #=> String
    #   resp.app.last_app_compliance_evaluation_time #=> Time
    #   resp.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.app.name #=> String
    #   resp.app.policy_arn #=> String
    #   resp.app.resiliency_score #=> Float
    #   resp.app.status #=> String, one of "Active", "Deleting"
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateApp AWS API Documentation
    #
    # @overload update_app(params = {})
    # @param [Hash] params ({})
    def update_app(params = {}, options = {})
      req = build_request(:update_app, params)
      req.send_request(options)
    end

    # Updates the Resilience Hub application version.
    #
    # <note markdown="1"> This API updates the Resilience Hub application draft version. To use
    # this information for running resiliency assessments, you must publish
    # the Resilience Hub application using the `PublishAppVersion` API.
    #
    #  </note>
    #
    # @option params [Hash<String,Array>] :additional_info
    #   Additional configuration parameters for an Resilience Hub application.
    #   If you want to implement `additionalInfo` through the Resilience Hub
    #   console rather than using an API call, see [Configure the application
    #   configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #   format) of only one failover region and one associated account.
    #
    #    Key: `"failover-regions"`
    #
    #    Value: `"[\{"region":"<REGION>",
    #   "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::UpdateAppVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppVersionResponse#additional_info #additional_info} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::UpdateAppVersionResponse#app_arn #app_arn} => String
    #   * {Types::UpdateAppVersionResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_version({
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"],
    #     },
    #     app_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.additional_info #=> Hash
    #   resp.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersion AWS API Documentation
    #
    # @overload update_app_version(params = {})
    # @param [Hash] params ({})
    def update_app_version(params = {}, options = {})
      req = build_request(:update_app_version, params)
      req.send_request(options)
    end

    # Updates an existing Application Component in the Resilience Hub
    # application.
    #
    # <note markdown="1"> This API updates the Resilience Hub application draft version. To use
    # this Application Component for running assessments, you must publish
    # the Resilience Hub application using the `PublishAppVersion` API.
    #
    #  </note>
    #
    # @option params [Hash<String,Array>] :additional_info
    #   Currently, there is no supported additional information for
    #   Application Components.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :id
    #   The identifier of the Application Component.
    #
    # @option params [String] :name
    #   The name of the Application Component.
    #
    # @option params [String] :type
    #   The type of Application Component. For more information about the
    #   types of Application Component, see [Grouping resources in an
    #   AppComponent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #
    # @return [Types::UpdateAppVersionAppComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppVersionAppComponentResponse#app_arn #app_arn} => String
    #   * {Types::UpdateAppVersionAppComponentResponse#app_component #app_component} => Types::AppComponent
    #   * {Types::UpdateAppVersionAppComponentResponse#app_version #app_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_version_app_component({
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"],
    #     },
    #     app_arn: "Arn", # required
    #     id: "String255", # required
    #     name: "String255",
    #     type: "String255",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_component.additional_info #=> Hash
    #   resp.app_component.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.app_component.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.app_component.id #=> String
    #   resp.app_component.name #=> String
    #   resp.app_component.type #=> String
    #   resp.app_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionAppComponent AWS API Documentation
    #
    # @overload update_app_version_app_component(params = {})
    # @param [Hash] params ({})
    def update_app_version_app_component(params = {}, options = {})
      req = build_request(:update_app_version_app_component, params)
      req.send_request(options)
    end

    # Updates the resource details in the Resilience Hub application.
    #
    # <note markdown="1"> * This action has no effect outside Resilience Hub.
    #
    # * This API updates the Resilience Hub application draft version. To
    #   use this resource for running resiliency assessments, you must
    #   publish the Resilience Hub application using the `PublishAppVersion`
    #   API.
    #
    # * To update application version with new `physicalResourceID`, you
    #   must call `ResolveAppVersionResources` API.
    #
    #  </note>
    #
    # @option params [Hash<String,Array>] :additional_info
    #   Currently, there is no supported additional information for resources.
    #
    # @option params [required, String] :app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :app_components
    #   The list of Application Components that this resource belongs to. If
    #   an Application Component is not part of the Resilience Hub
    #   application, it will be added.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services region that owns the physical resource.
    #
    # @option params [Boolean] :excluded
    #   Indicates if a resource is excluded from an Resilience Hub
    #   application.
    #
    #   <note markdown="1"> You can exclude only imported resources from an Resilience Hub
    #   application.
    #
    #    </note>
    #
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   The logical identifier of the resource.
    #
    # @option params [String] :physical_resource_id
    #   The physical identifier of the resource.
    #
    # @option params [String] :resource_name
    #   The name of the resource.
    #
    # @option params [String] :resource_type
    #   The type of resource.
    #
    # @return [Types::UpdateAppVersionResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppVersionResourceResponse#app_arn #app_arn} => String
    #   * {Types::UpdateAppVersionResourceResponse#app_version #app_version} => String
    #   * {Types::UpdateAppVersionResourceResponse#physical_resource #physical_resource} => Types::PhysicalResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_version_resource({
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"],
    #     },
    #     app_arn: "Arn", # required
    #     app_components: ["String255"],
    #     aws_account_id: "CustomerId",
    #     aws_region: "AwsRegion",
    #     excluded: false,
    #     logical_resource_id: {
    #       eks_source_name: "String255",
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #     },
    #     physical_resource_id: "String2048",
    #     resource_name: "EntityName",
    #     resource_type: "String255",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_arn #=> String
    #   resp.app_version #=> String
    #   resp.physical_resource.additional_info #=> Hash
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components #=> Array
    #   resp.physical_resource.app_components[0].additional_info #=> Hash
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"] #=> Array
    #   resp.physical_resource.app_components[0].additional_info["String128WithoutWhitespace"][0] #=> String
    #   resp.physical_resource.app_components[0].id #=> String
    #   resp.physical_resource.app_components[0].name #=> String
    #   resp.physical_resource.app_components[0].type #=> String
    #   resp.physical_resource.excluded #=> Boolean
    #   resp.physical_resource.logical_resource_id.eks_source_name #=> String
    #   resp.physical_resource.logical_resource_id.identifier #=> String
    #   resp.physical_resource.logical_resource_id.logical_stack_name #=> String
    #   resp.physical_resource.logical_resource_id.resource_group_name #=> String
    #   resp.physical_resource.logical_resource_id.terraform_source_name #=> String
    #   resp.physical_resource.parent_resource_name #=> String
    #   resp.physical_resource.physical_resource_id.aws_account_id #=> String
    #   resp.physical_resource.physical_resource_id.aws_region #=> String
    #   resp.physical_resource.physical_resource_id.identifier #=> String
    #   resp.physical_resource.physical_resource_id.type #=> String, one of "Arn", "Native"
    #   resp.physical_resource.resource_name #=> String
    #   resp.physical_resource.resource_type #=> String
    #   resp.physical_resource.source_type #=> String, one of "AppTemplate", "Discovered"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionResource AWS API Documentation
    #
    # @overload update_app_version_resource(params = {})
    # @param [Hash] params ({})
    def update_app_version_resource(params = {}, options = {})
      req = build_request(:update_app_version_resource, params)
      req.send_request(options)
    end

    # Updates a resiliency policy.
    #
    # @option params [String] :data_location_constraint
    #   Specifies a high-level geographical location constraint for where your
    #   resilience policy data can be stored.
    #
    # @option params [Hash<String,Types::FailurePolicy>] :policy
    #   The type of resiliency policy to be created, including the recovery
    #   time objective (RTO) and recovery point objective (RPO) in seconds.
    #
    # @option params [required, String] :policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :policy_description
    #   The description for the policy.
    #
    # @option params [String] :policy_name
    #   The name of the policy
    #
    # @option params [String] :tier
    #   The tier for this resiliency policy, ranging from the highest severity
    #   (`MissionCritical`) to lowest (`NonCritical`).
    #
    # @return [Types::UpdateResiliencyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResiliencyPolicyResponse#policy #policy} => Types::ResiliencyPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resiliency_policy({
    #     data_location_constraint: "AnyLocation", # accepts AnyLocation, SameContinent, SameCountry
    #     policy: {
    #       "Software" => {
    #         rpo_in_secs: 1, # required
    #         rto_in_secs: 1, # required
    #       },
    #     },
    #     policy_arn: "Arn", # required
    #     policy_description: "EntityDescription",
    #     policy_name: "EntityName",
    #     tier: "MissionCritical", # accepts MissionCritical, Critical, Important, CoreServices, NonCritical
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.creation_time #=> Time
    #   resp.policy.data_location_constraint #=> String, one of "AnyLocation", "SameContinent", "SameCountry"
    #   resp.policy.estimated_cost_tier #=> String, one of "L1", "L2", "L3", "L4"
    #   resp.policy.policy #=> Hash
    #   resp.policy.policy["DisruptionType"].rpo_in_secs #=> Integer
    #   resp.policy.policy["DisruptionType"].rto_in_secs #=> Integer
    #   resp.policy.policy_arn #=> String
    #   resp.policy.policy_description #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.tier #=> String, one of "MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateResiliencyPolicy AWS API Documentation
    #
    # @overload update_resiliency_policy(params = {})
    # @param [Hash] params ({})
    def update_resiliency_policy(params = {}, options = {})
      req = build_request(:update_resiliency_policy, params)
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
      context[:gem_name] = 'aws-sdk-resiliencehub'
      context[:gem_version] = '1.18.0'
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
