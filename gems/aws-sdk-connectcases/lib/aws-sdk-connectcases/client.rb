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

Aws::Plugins::GlobalConfiguration.add_identifier(:connectcases)

module Aws::ConnectCases
  # An API client for ConnectCases.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectCases::Client.new(
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

    @identifier = :connectcases

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
    add_plugin(Aws::ConnectCases::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectCases::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ConnectCases::EndpointParameters`
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

    # Returns the description for the list of fields in the request
    # parameters.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldIdentifier>] :fields
    #   A list of unique field identifiers.
    #
    # @return [Types::BatchGetFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFieldResponse#errors #errors} => Array&lt;Types::FieldError&gt;
    #   * {Types::BatchGetFieldResponse#fields #fields} => Array&lt;Types::GetFieldResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_field({
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].id #=> String
    #   resp.errors[0].message #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].description #=> String
    #   resp.fields[0].field_arn #=> String
    #   resp.fields[0].field_id #=> String
    #   resp.fields[0].name #=> String
    #   resp.fields[0].namespace #=> String, one of "System", "Custom"
    #   resp.fields[0].tags #=> Hash
    #   resp.fields[0].tags["String"] #=> String
    #   resp.fields[0].type #=> String, one of "Text", "Number", "Boolean", "DateTime", "SingleSelect", "Url"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchGetField AWS API Documentation
    #
    # @overload batch_get_field(params = {})
    # @param [Hash] params ({})
    def batch_get_field(params = {}, options = {})
      req = build_request(:batch_get_field, params)
      req.send_request(options)
    end

    # Creates and updates a set of field options for a single select field
    # in a Cases domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [required, Array<Types::FieldOption>] :options
    #   A list of `FieldOption` objects.
    #
    # @return [Types::BatchPutFieldOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutFieldOptionsResponse#errors #errors} => Array&lt;Types::FieldOptionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_field_options({
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     options: [ # required
    #       {
    #         active: false, # required
    #         name: "FieldOptionName", # required
    #         value: "FieldOptionValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].message #=> String
    #   resp.errors[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchPutFieldOptions AWS API Documentation
    #
    # @overload batch_put_field_options(params = {})
    # @param [Hash] params ({})
    def batch_put_field_options(params = {}, options = {})
      req = build_request(:batch_put_field_options, params)
      req.send_request(options)
    end

    # Creates a case in the specified Cases domain. Case system and custom
    # fields are taken as an array id/value pairs with a declared data
    # types.
    #
    # <note markdown="1"> The following fields are required when creating a case:
    #
    #       <ul> <li> <p> <code>customer_id</code> - You must provide the full customer profile ARN in this format: <code>arn:aws:profile:your AWS Region:your AWS account ID:domains/profiles domain name/profiles/profile ID</code> </p> </li> <li> <p> <code>title</code> </p> </li> </ul> </note>
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldValue>] :fields
    #   An array of objects with field ID (matching ListFields/DescribeField)
    #   and value union data.
    #
    # @option params [required, String] :template_id
    #   A unique identifier of a template.
    #
    # @return [Types::CreateCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseResponse#case_arn #case_arn} => String
    #   * {Types::CreateCaseResponse#case_id #case_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case({
    #     client_token: "CreateCaseRequestClientTokenString",
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           boolean_value: false,
    #           double_value: 1.0,
    #           string_value: "FieldValueUnionStringValueString",
    #         },
    #       },
    #     ],
    #     template_id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.case_arn #=> String
    #   resp.case_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateCase AWS API Documentation
    #
    # @overload create_case(params = {})
    # @param [Hash] params ({})
    def create_case(params = {}, options = {})
      req = build_request(:create_case, params)
      req.send_request(options)
    end

    # Creates a domain, which is a container for all case data, such as
    # cases, fields, templates and layouts. Each Amazon Connect instance can
    # be associated with only one Cases domain.
    #
    # This will not associate your connect instance to Cases domain.
    # Instead, use the Amazon Connect [CreateIntegrationAssociation][1] API.
    # You need specific IAM permissions to successfully associate the Cases
    # domain. For more information, see [Onboard to Cases][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam
    #
    # @option params [required, String] :name
    #   The name for your Cases domain. It must be unique for your Amazon Web
    #   Services account.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_arn #domain_arn} => String
    #   * {Types::CreateDomainResponse#domain_id #domain_id} => String
    #   * {Types::CreateDomainResponse#domain_status #domain_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_arn #=> String
    #   resp.domain_id #=> String
    #   resp.domain_status #=> String, one of "Active", "CreationInProgress", "CreationFailed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a field in the Cases domain. This field is used to define the
    # case object model (that is, defines what data can be captured on
    # cases) in a Cases domain.
    #
    # @option params [String] :description
    #   The description of the field.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :name
    #   The name of the field.
    #
    # @option params [required, String] :type
    #   Defines the data type, some system constraints, and default display of
    #   the field.
    #
    # @return [Types::CreateFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldResponse#field_arn #field_arn} => String
    #   * {Types::CreateFieldResponse#field_id #field_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field({
    #     description: "FieldDescription",
    #     domain_id: "DomainId", # required
    #     name: "FieldName", # required
    #     type: "Text", # required, accepts Text, Number, Boolean, DateTime, SingleSelect, Url
    #   })
    #
    # @example Response structure
    #
    #   resp.field_arn #=> String
    #   resp.field_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateField AWS API Documentation
    #
    # @overload create_field(params = {})
    # @param [Hash] params ({})
    def create_field(params = {}, options = {})
      req = build_request(:create_field, params)
      req.send_request(options)
    end

    # Creates a layout in the Cases domain. Layouts define the following
    # configuration in the top section and More Info tab of the Cases user
    # interface:
    #
    # * Fields to display to the users
    #
    # * Field ordering
    #
    # <note markdown="1"> Title and Status fields cannot be part of layouts since they are not
    # configurable.
    #
    #  </note>
    #
    # @option params [required, Types::LayoutContent] :content
    #   Information about which fields will be present in the layout, and
    #   information about the order of the fields.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :name
    #   The name of the layout. It must be unique for the Cases domain.
    #
    # @return [Types::CreateLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLayoutResponse#layout_arn #layout_arn} => String
    #   * {Types::CreateLayoutResponse#layout_id #layout_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_layout({
    #     content: { # required
    #       basic: {
    #         more_info: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #         top_panel: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     name: "LayoutName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layout_arn #=> String
    #   resp.layout_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateLayout AWS API Documentation
    #
    # @overload create_layout(params = {})
    # @param [Hash] params ({})
    def create_layout(params = {}, options = {})
      req = build_request(:create_layout, params)
      req.send_request(options)
    end

    # Creates a related item (comments, tasks, and contacts) and associates
    # it with a case.
    #
    # <note markdown="1"> A Related Item is a resource that is associated with a case. It may or
    # may not have an external identifier linking it to an external resource
    # (for example, a `contactArn`). All Related Items have their own
    # internal identifier, the `relatedItemArn`. Examples of related items
    # include `comments` and `contacts`.
    #
    #  </note>
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, Types::RelatedItemInputContent] :content
    #   The content of a related item to be created.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :type
    #   The type of a related item.
    #
    # @return [Types::CreateRelatedItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelatedItemResponse#related_item_arn #related_item_arn} => String
    #   * {Types::CreateRelatedItemResponse#related_item_id #related_item_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_related_item({
    #     case_id: "CaseId", # required
    #     content: { # required
    #       comment: {
    #         body: "CommentBody", # required
    #         content_type: "Text/Plain", # required, accepts Text/Plain
    #       },
    #       contact: {
    #         contact_arn: "ContactArn", # required
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     type: "Contact", # required, accepts Contact, Comment
    #   })
    #
    # @example Response structure
    #
    #   resp.related_item_arn #=> String
    #   resp.related_item_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateRelatedItem AWS API Documentation
    #
    # @overload create_related_item(params = {})
    # @param [Hash] params ({})
    def create_related_item(params = {}, options = {})
      req = build_request(:create_related_item, params)
      req.send_request(options)
    end

    # Creates a template in the Cases domain. This template is used to
    # define the case object model (that is, to define what data can be
    # captured on cases) in a Cases domain. A template must have a unique
    # name within a domain, and it must reference existing field IDs and
    # layout IDs. Additionally, multiple fields with same IDs are not
    # allowed within the same Template. A template can be either Active or
    # Inactive, as indicated by its status. Inactive templates cannot be
    # used to create cases.
    #
    # @option params [String] :description
    #   A brief description of the template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   Configuration of layouts associated to the template.
    #
    # @option params [required, String] :name
    #   A name for the template. It must be unique per domain.
    #
    # @option params [Array<Types::RequiredField>] :required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #
    # @option params [String] :status
    #   The status of the template.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#template_arn #template_arn} => String
    #   * {Types::CreateTemplateResponse#template_id #template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     description: "TemplateDescription",
    #     domain_id: "DomainId", # required
    #     layout_configuration: {
    #       default_layout: "LayoutId",
    #     },
    #     name: "TemplateName", # required
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     status: "Active", # accepts Active, Inactive
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Deletes a domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Returns information about a specific case if it exists.
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldIdentifier>] :fields
    #   A list of unique field identifiers.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::GetCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseResponse#fields #fields} => Array&lt;Types::FieldValue&gt;
    #   * {Types::GetCaseResponse#next_token #next_token} => String
    #   * {Types::GetCaseResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetCaseResponse#template_id #template_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].id #=> String
    #   resp.fields[0].value.boolean_value #=> Boolean
    #   resp.fields[0].value.double_value #=> Float
    #   resp.fields[0].value.string_value #=> String
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCase AWS API Documentation
    #
    # @overload get_case(params = {})
    # @param [Hash] params ({})
    def get_case(params = {}, options = {})
      req = build_request(:get_case, params)
      req.send_request(options)
    end

    # Returns the case event publishing configuration.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Types::GetCaseEventConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseEventConfigurationResponse#event_bridge #event_bridge} => Types::EventBridgeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case_event_configuration({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bridge.enabled #=> Boolean
    #   resp.event_bridge.included_data.case_data.fields #=> Array
    #   resp.event_bridge.included_data.case_data.fields[0].id #=> String
    #   resp.event_bridge.included_data.related_item_data.include_content #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseEventConfiguration AWS API Documentation
    #
    # @overload get_case_event_configuration(params = {})
    # @param [Hash] params ({})
    def get_case_event_configuration(params = {}, options = {})
      req = build_request(:get_case_event_configuration, params)
      req.send_request(options)
    end

    # Returns information about a specific domain if it exists.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Types::GetDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResponse#created_time #created_time} => Time
    #   * {Types::GetDomainResponse#domain_arn #domain_arn} => String
    #   * {Types::GetDomainResponse#domain_id #domain_id} => String
    #   * {Types::GetDomainResponse#domain_status #domain_status} => String
    #   * {Types::GetDomainResponse#name #name} => String
    #   * {Types::GetDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.domain_arn #=> String
    #   resp.domain_id #=> String
    #   resp.domain_status #=> String, one of "Active", "CreationInProgress", "CreationFailed"
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Returns the details for the requested layout.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :layout_id
    #   The unique identifier of the layout.
    #
    # @return [Types::GetLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayoutResponse#content #content} => Types::LayoutContent
    #   * {Types::GetLayoutResponse#layout_arn #layout_arn} => String
    #   * {Types::GetLayoutResponse#layout_id #layout_id} => String
    #   * {Types::GetLayoutResponse#name #name} => String
    #   * {Types::GetLayoutResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layout({
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.basic.more_info.sections #=> Array
    #   resp.content.basic.more_info.sections[0].field_group.fields #=> Array
    #   resp.content.basic.more_info.sections[0].field_group.fields[0].id #=> String
    #   resp.content.basic.more_info.sections[0].field_group.name #=> String
    #   resp.content.basic.top_panel.sections #=> Array
    #   resp.content.basic.top_panel.sections[0].field_group.fields #=> Array
    #   resp.content.basic.top_panel.sections[0].field_group.fields[0].id #=> String
    #   resp.content.basic.top_panel.sections[0].field_group.name #=> String
    #   resp.layout_arn #=> String
    #   resp.layout_id #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetLayout AWS API Documentation
    #
    # @overload get_layout(params = {})
    # @param [Hash] params ({})
    def get_layout(params = {}, options = {})
      req = build_request(:get_layout, params)
      req.send_request(options)
    end

    # Returns the details for the requested template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :template_id
    #   A unique identifier of a template.
    #
    # @return [Types::GetTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateResponse#description #description} => String
    #   * {Types::GetTemplateResponse#layout_configuration #layout_configuration} => Types::LayoutConfiguration
    #   * {Types::GetTemplateResponse#name #name} => String
    #   * {Types::GetTemplateResponse#required_fields #required_fields} => Array&lt;Types::RequiredField&gt;
    #   * {Types::GetTemplateResponse#status #status} => String
    #   * {Types::GetTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTemplateResponse#template_arn #template_arn} => String
    #   * {Types::GetTemplateResponse#template_id #template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.layout_configuration.default_layout #=> String
    #   resp.name #=> String
    #   resp.required_fields #=> Array
    #   resp.required_fields[0].field_id #=> String
    #   resp.status #=> String, one of "Active", "Inactive"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.template_arn #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Lists cases for a given contact.
    #
    # @option params [required, String] :contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListCasesForContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCasesForContactResponse#cases #cases} => Array&lt;Types::CaseSummary&gt;
    #   * {Types::ListCasesForContactResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cases_for_contact({
    #     contact_arn: "ContactArn", # required
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cases #=> Array
    #   resp.cases[0].case_id #=> String
    #   resp.cases[0].template_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListCasesForContact AWS API Documentation
    #
    # @overload list_cases_for_contact(params = {})
    # @param [Hash] params ({})
    def list_cases_for_contact(params = {}, options = {})
      req = build_request(:list_cases_for_contact, params)
      req.send_request(options)
    end

    # Lists all cases domains in the Amazon Web Services account. Each list
    # item is a condensed summary object of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#domains #domains} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].domain_arn #=> String
    #   resp.domains[0].domain_id #=> String
    #   resp.domains[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists all of the field options for a field identifier in the domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :values
    #   A list of `FieldOption` values to filter on for `ListFieldOptions`.
    #
    # @return [Types::ListFieldOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldOptionsResponse#next_token #next_token} => String
    #   * {Types::ListFieldOptionsResponse#options #options} => Array&lt;Types::FieldOption&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_options({
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     values: ["Value"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.options #=> Array
    #   resp.options[0].active #=> Boolean
    #   resp.options[0].name #=> String
    #   resp.options[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldOptions AWS API Documentation
    #
    # @overload list_field_options(params = {})
    # @param [Hash] params ({})
    def list_field_options(params = {}, options = {})
      req = build_request(:list_field_options, params)
      req.send_request(options)
    end

    # Lists all fields in a Cases domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldsResponse#fields #fields} => Array&lt;Types::FieldSummary&gt;
    #   * {Types::ListFieldsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fields({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].field_arn #=> String
    #   resp.fields[0].field_id #=> String
    #   resp.fields[0].name #=> String
    #   resp.fields[0].namespace #=> String, one of "System", "Custom"
    #   resp.fields[0].type #=> String, one of "Text", "Number", "Boolean", "DateTime", "SingleSelect", "Url"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFields AWS API Documentation
    #
    # @overload list_fields(params = {})
    # @param [Hash] params ({})
    def list_fields(params = {}, options = {})
      req = build_request(:list_fields, params)
      req.send_request(options)
    end

    # Lists all layouts in the given cases domain. Each list item is a
    # condensed summary object of the layout.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListLayoutsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayoutsResponse#layouts #layouts} => Array&lt;Types::LayoutSummary&gt;
    #   * {Types::ListLayoutsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layouts({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.layouts #=> Array
    #   resp.layouts[0].layout_arn #=> String
    #   resp.layouts[0].layout_id #=> String
    #   resp.layouts[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListLayouts AWS API Documentation
    #
    # @overload list_layouts(params = {})
    # @param [Hash] params ({})
    def list_layouts(params = {}, options = {})
      req = build_request(:list_layouts, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all of the templates in a Cases domain. Each list item is a
    # condensed summary object of the template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :status
    #   A list of status values to filter on.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#templates #templates} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: ["Active"], # accepts Active, Inactive
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].name #=> String
    #   resp.templates[0].status #=> String, one of "Active", "Inactive"
    #   resp.templates[0].template_arn #=> String
    #   resp.templates[0].template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # API for adding case event publishing configuration
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Types::EventBridgeConfiguration] :event_bridge
    #   Configuration to enable EventBridge case event delivery and determine
    #   what data is delivered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_case_event_configuration({
    #     domain_id: "DomainId", # required
    #     event_bridge: { # required
    #       enabled: false, # required
    #       included_data: {
    #         case_data: {
    #           fields: [ # required
    #             {
    #               id: "FieldId", # required
    #             },
    #           ],
    #         },
    #         related_item_data: {
    #           include_content: false, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/PutCaseEventConfiguration AWS API Documentation
    #
    # @overload put_case_event_configuration(params = {})
    # @param [Hash] params ({})
    def put_case_event_configuration(params = {}, options = {})
      req = build_request(:put_case_event_configuration, params)
      req.send_request(options)
    end

    # Searches for cases within their associated Cases domain. Search
    # results are returned as a paginated list of abridged case documents.
    #
    # <note markdown="1"> For `customer_id` you must provide the full customer profile ARN in
    # this format: ` arn:aws:profile:your AWS Region:your AWS account
    # ID:domains/profiles domain name/profiles/profile ID`.
    #
    #  </note>
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Array<Types::FieldIdentifier>] :fields
    #   The list of field identifiers to be returned as part of the response.
    #
    # @option params [Types::CaseFilter] :filter
    #   A list of filter objects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cases to return. The current maximum supported
    #   value is 25. This is also the default value when no other value is
    #   provided.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :search_term
    #   A word or phrase used to perform a quick search.
    #
    # @option params [Array<Types::Sort>] :sorts
    #   A list of sorts where each sort specifies a field and their sort order
    #   to be applied to the results.
    #
    # @return [Types::SearchCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchCasesResponse#cases #cases} => Array&lt;Types::SearchCasesResponseItem&gt;
    #   * {Types::SearchCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_cases({
    #     domain_id: "DomainId", # required
    #     fields: [
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #     filter: {
    #       and_all: [
    #         {
    #           # recursive CaseFilter
    #         },
    #       ],
    #       field: {
    #         contains: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #         equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #         greater_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #         greater_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #         less_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #         less_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             string_value: "FieldValueUnionStringValueString",
    #           },
    #         },
    #       },
    #       not: {
    #         # recursive CaseFilter
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     search_term: "SearchCasesRequestSearchTermString",
    #     sorts: [
    #       {
    #         field_id: "FieldId", # required
    #         sort_order: "Asc", # required, accepts Asc, Desc
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cases #=> Array
    #   resp.cases[0].case_id #=> String
    #   resp.cases[0].fields #=> Array
    #   resp.cases[0].fields[0].id #=> String
    #   resp.cases[0].fields[0].value.boolean_value #=> Boolean
    #   resp.cases[0].fields[0].value.double_value #=> Float
    #   resp.cases[0].fields[0].value.string_value #=> String
    #   resp.cases[0].tags #=> Hash
    #   resp.cases[0].tags["String"] #=> String
    #   resp.cases[0].template_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchCases AWS API Documentation
    #
    # @overload search_cases(params = {})
    # @param [Hash] params ({})
    def search_cases(params = {}, options = {})
      req = build_request(:search_cases, params)
      req.send_request(options)
    end

    # Searches for related items that are associated with a case.
    #
    # <note markdown="1"> If no filters are provided, this returns all related items associated
    # with a case.
    #
    #  </note>
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Array<Types::RelatedItemTypeFilter>] :filters
    #   The list of types of related items and their parameters to use for
    #   filtering.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchRelatedItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRelatedItemsResponse#next_token #next_token} => String
    #   * {Types::SearchRelatedItemsResponse#related_items #related_items} => Array&lt;Types::SearchRelatedItemsResponseItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_related_items({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     filters: [
    #       {
    #         comment: {
    #         },
    #         contact: {
    #           channel: ["Channel"],
    #           contact_arn: "ContactArn",
    #         },
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.related_items #=> Array
    #   resp.related_items[0].association_time #=> Time
    #   resp.related_items[0].content.comment.body #=> String
    #   resp.related_items[0].content.comment.content_type #=> String, one of "Text/Plain"
    #   resp.related_items[0].content.contact.channel #=> String
    #   resp.related_items[0].content.contact.connected_to_system_time #=> Time
    #   resp.related_items[0].content.contact.contact_arn #=> String
    #   resp.related_items[0].related_item_id #=> String
    #   resp.related_items[0].tags #=> Hash
    #   resp.related_items[0].tags["String"] #=> String
    #   resp.related_items[0].type #=> String, one of "Contact", "Comment"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchRelatedItems AWS API Documentation
    #
    # @overload search_related_items(params = {})
    # @param [Hash] params ({})
    def search_related_items(params = {}, options = {})
      req = build_request(:search_related_items, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the values of fields on a case. Fields to be updated are
    # received as an array of id/value pairs identical to the `CreateCase`
    # input .
    #
    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldValue>] :fields
    #   An array of objects with `fieldId` (matching ListFields/DescribeField)
    #   and value union data, structured identical to `CreateCase`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           boolean_value: false,
    #           double_value: 1.0,
    #           string_value: "FieldValueUnionStringValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateCase AWS API Documentation
    #
    # @overload update_case(params = {})
    # @param [Hash] params ({})
    def update_case(params = {}, options = {})
      req = build_request(:update_case, params)
      req.send_request(options)
    end

    # Updates the properties of an existing field.
    #
    # @option params [String] :description
    #   The description of a field.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [String] :name
    #   The name of the field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field({
    #     description: "FieldDescription",
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     name: "FieldName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateField AWS API Documentation
    #
    # @overload update_field(params = {})
    # @param [Hash] params ({})
    def update_field(params = {}, options = {})
      req = build_request(:update_field, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing layout.
    #
    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # A `ValidationException` is returned when you add non-existent
    # `fieldIds` to a layout.
    #
    # <note markdown="1"> Title and Status fields cannot be part of layouts because they are not
    # configurable.
    #
    #  </note>
    #
    # @option params [Types::LayoutContent] :content
    #   Information about which fields will be present in the layout, the
    #   order of the fields, and a read-only attribute of the field.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :layout_id
    #   The unique identifier of the layout.
    #
    # @option params [String] :name
    #   The name of the layout. It must be unique per domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_layout({
    #     content: {
    #       basic: {
    #         more_info: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #         top_panel: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #     name: "LayoutName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateLayout AWS API Documentation
    #
    # @overload update_layout(params = {})
    # @param [Hash] params ({})
    def update_layout(params = {}, options = {})
      req = build_request(:update_layout, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing template. The template
    # attributes that can be modified include `name`, `description`,
    # `layoutConfiguration`, `requiredFields`, and `status`. At least one of
    # these attributes must not be null. If a null value is provided for a
    # given attribute, that attribute is ignored and its current value is
    # preserved.
    #
    # @option params [String] :description
    #   A brief description of the template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   Configuration of layouts associated to the template.
    #
    # @option params [String] :name
    #   The name of the template. It must be unique per domain.
    #
    # @option params [Array<Types::RequiredField>] :required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #
    # @option params [String] :status
    #   The status of the template.
    #
    # @option params [required, String] :template_id
    #   A unique identifier for the template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     description: "TemplateDescription",
    #     domain_id: "DomainId", # required
    #     layout_configuration: {
    #       default_layout: "LayoutId",
    #     },
    #     name: "TemplateName",
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     status: "Active", # accepts Active, Inactive
    #     template_id: "TemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
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
      context[:gem_name] = 'aws-sdk-connectcases'
      context[:gem_version] = '1.10.0'
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
