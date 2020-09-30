# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:serverlessapplicationrepository)

module Aws::ServerlessApplicationRepository
  # An API client for ServerlessApplicationRepository.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ServerlessApplicationRepository::Client.new(
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

    @identifier = :serverlessapplicationrepository

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Creates an application, optionally including an AWS SAM file to create
    # the first application version in the same call.
    #
    # @option params [required, String] :author
    #
    # @option params [required, String] :description
    #
    # @option params [String] :home_page_url
    #
    # @option params [Array<String>] :labels
    #
    # @option params [String] :license_body
    #
    # @option params [String] :license_url
    #
    # @option params [required, String] :name
    #
    # @option params [String] :readme_body
    #
    # @option params [String] :readme_url
    #
    # @option params [String] :semantic_version
    #
    # @option params [String] :source_code_archive_url
    #
    # @option params [String] :source_code_url
    #
    # @option params [String] :spdx_license_id
    #
    # @option params [String] :template_body
    #
    # @option params [String] :template_url
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationResponse#author #author} => String
    #   * {Types::CreateApplicationResponse#creation_time #creation_time} => String
    #   * {Types::CreateApplicationResponse#description #description} => String
    #   * {Types::CreateApplicationResponse#home_page_url #home_page_url} => String
    #   * {Types::CreateApplicationResponse#is_verified_author #is_verified_author} => Boolean
    #   * {Types::CreateApplicationResponse#labels #labels} => Array&lt;String&gt;
    #   * {Types::CreateApplicationResponse#license_url #license_url} => String
    #   * {Types::CreateApplicationResponse#name #name} => String
    #   * {Types::CreateApplicationResponse#readme_url #readme_url} => String
    #   * {Types::CreateApplicationResponse#spdx_license_id #spdx_license_id} => String
    #   * {Types::CreateApplicationResponse#verified_author_url #verified_author_url} => String
    #   * {Types::CreateApplicationResponse#version #version} => Types::Version
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     author: "__string", # required
    #     description: "__string", # required
    #     home_page_url: "__string",
    #     labels: ["__string"],
    #     license_body: "__string",
    #     license_url: "__string",
    #     name: "__string", # required
    #     readme_body: "__string",
    #     readme_url: "__string",
    #     semantic_version: "__string",
    #     source_code_archive_url: "__string",
    #     source_code_url: "__string",
    #     spdx_license_id: "__string",
    #     template_body: "__string",
    #     template_url: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.author #=> String
    #   resp.creation_time #=> String
    #   resp.description #=> String
    #   resp.home_page_url #=> String
    #   resp.is_verified_author #=> Boolean
    #   resp.labels #=> Array
    #   resp.labels[0] #=> String
    #   resp.license_url #=> String
    #   resp.name #=> String
    #   resp.readme_url #=> String
    #   resp.spdx_license_id #=> String
    #   resp.verified_author_url #=> String
    #   resp.version.application_id #=> String
    #   resp.version.creation_time #=> String
    #   resp.version.parameter_definitions #=> Array
    #   resp.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.version.parameter_definitions[0].allowed_values #=> Array
    #   resp.version.parameter_definitions[0].allowed_values[0] #=> String
    #   resp.version.parameter_definitions[0].constraint_description #=> String
    #   resp.version.parameter_definitions[0].default_value #=> String
    #   resp.version.parameter_definitions[0].description #=> String
    #   resp.version.parameter_definitions[0].max_length #=> Integer
    #   resp.version.parameter_definitions[0].max_value #=> Integer
    #   resp.version.parameter_definitions[0].min_length #=> Integer
    #   resp.version.parameter_definitions[0].min_value #=> Integer
    #   resp.version.parameter_definitions[0].name #=> String
    #   resp.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.version.parameter_definitions[0].referenced_by_resources #=> Array
    #   resp.version.parameter_definitions[0].referenced_by_resources[0] #=> String
    #   resp.version.parameter_definitions[0].type #=> String
    #   resp.version.required_capabilities #=> Array
    #   resp.version.required_capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"
    #   resp.version.resources_supported #=> Boolean
    #   resp.version.semantic_version #=> String
    #   resp.version.source_code_archive_url #=> String
    #   resp.version.source_code_url #=> String
    #   resp.version.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates an application version.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :semantic_version
    #
    # @option params [String] :source_code_archive_url
    #
    # @option params [String] :source_code_url
    #
    # @option params [String] :template_body
    #
    # @option params [String] :template_url
    #
    # @return [Types::CreateApplicationVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationVersionResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationVersionResponse#creation_time #creation_time} => String
    #   * {Types::CreateApplicationVersionResponse#parameter_definitions #parameter_definitions} => Array&lt;Types::ParameterDefinition&gt;
    #   * {Types::CreateApplicationVersionResponse#required_capabilities #required_capabilities} => Array&lt;String&gt;
    #   * {Types::CreateApplicationVersionResponse#resources_supported #resources_supported} => Boolean
    #   * {Types::CreateApplicationVersionResponse#semantic_version #semantic_version} => String
    #   * {Types::CreateApplicationVersionResponse#source_code_archive_url #source_code_archive_url} => String
    #   * {Types::CreateApplicationVersionResponse#source_code_url #source_code_url} => String
    #   * {Types::CreateApplicationVersionResponse#template_url #template_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_version({
    #     application_id: "__string", # required
    #     semantic_version: "__string", # required
    #     source_code_archive_url: "__string",
    #     source_code_url: "__string",
    #     template_body: "__string",
    #     template_url: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.creation_time #=> String
    #   resp.parameter_definitions #=> Array
    #   resp.parameter_definitions[0].allowed_pattern #=> String
    #   resp.parameter_definitions[0].allowed_values #=> Array
    #   resp.parameter_definitions[0].allowed_values[0] #=> String
    #   resp.parameter_definitions[0].constraint_description #=> String
    #   resp.parameter_definitions[0].default_value #=> String
    #   resp.parameter_definitions[0].description #=> String
    #   resp.parameter_definitions[0].max_length #=> Integer
    #   resp.parameter_definitions[0].max_value #=> Integer
    #   resp.parameter_definitions[0].min_length #=> Integer
    #   resp.parameter_definitions[0].min_value #=> Integer
    #   resp.parameter_definitions[0].name #=> String
    #   resp.parameter_definitions[0].no_echo #=> Boolean
    #   resp.parameter_definitions[0].referenced_by_resources #=> Array
    #   resp.parameter_definitions[0].referenced_by_resources[0] #=> String
    #   resp.parameter_definitions[0].type #=> String
    #   resp.required_capabilities #=> Array
    #   resp.required_capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"
    #   resp.resources_supported #=> Boolean
    #   resp.semantic_version #=> String
    #   resp.source_code_archive_url #=> String
    #   resp.source_code_url #=> String
    #   resp.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationVersion AWS API Documentation
    #
    # @overload create_application_version(params = {})
    # @param [Hash] params ({})
    def create_application_version(params = {}, options = {})
      req = build_request(:create_application_version, params)
      req.send_request(options)
    end

    # Creates an AWS CloudFormation change set for the given application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [Array<String>] :capabilities
    #
    # @option params [String] :change_set_name
    #
    # @option params [String] :client_token
    #
    # @option params [String] :description
    #
    # @option params [Array<String>] :notification_arns
    #
    # @option params [Array<Types::ParameterValue>] :parameter_overrides
    #
    # @option params [Array<String>] :resource_types
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   This property corresponds to the <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #   </i> Data Type.
    #
    # @option params [String] :semantic_version
    #
    # @option params [required, String] :stack_name
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @option params [String] :template_id
    #
    # @return [Types::CreateCloudFormationChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudFormationChangeSetResponse#application_id #application_id} => String
    #   * {Types::CreateCloudFormationChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::CreateCloudFormationChangeSetResponse#semantic_version #semantic_version} => String
    #   * {Types::CreateCloudFormationChangeSetResponse#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_formation_change_set({
    #     application_id: "__string", # required
    #     capabilities: ["__string"],
    #     change_set_name: "__string",
    #     client_token: "__string",
    #     description: "__string",
    #     notification_arns: ["__string"],
    #     parameter_overrides: [
    #       {
    #         name: "__string", # required
    #         value: "__string", # required
    #       },
    #     ],
    #     resource_types: ["__string"],
    #     rollback_configuration: {
    #       monitoring_time_in_minutes: 1,
    #       rollback_triggers: [
    #         {
    #           arn: "__string", # required
    #           type: "__string", # required
    #         },
    #       ],
    #     },
    #     semantic_version: "__string",
    #     stack_name: "__string", # required
    #     tags: [
    #       {
    #         key: "__string", # required
    #         value: "__string", # required
    #       },
    #     ],
    #     template_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.change_set_id #=> String
    #   resp.semantic_version #=> String
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSet AWS API Documentation
    #
    # @overload create_cloud_formation_change_set(params = {})
    # @param [Hash] params ({})
    def create_cloud_formation_change_set(params = {}, options = {})
      req = build_request(:create_cloud_formation_change_set, params)
      req.send_request(options)
    end

    # Creates an AWS CloudFormation template.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :semantic_version
    #
    # @return [Types::CreateCloudFormationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudFormationTemplateResponse#application_id #application_id} => String
    #   * {Types::CreateCloudFormationTemplateResponse#creation_time #creation_time} => String
    #   * {Types::CreateCloudFormationTemplateResponse#expiration_time #expiration_time} => String
    #   * {Types::CreateCloudFormationTemplateResponse#semantic_version #semantic_version} => String
    #   * {Types::CreateCloudFormationTemplateResponse#status #status} => String
    #   * {Types::CreateCloudFormationTemplateResponse#template_id #template_id} => String
    #   * {Types::CreateCloudFormationTemplateResponse#template_url #template_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_formation_template({
    #     application_id: "__string", # required
    #     semantic_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.creation_time #=> String
    #   resp.expiration_time #=> String
    #   resp.semantic_version #=> String
    #   resp.status #=> String, one of "PREPARING", "ACTIVE", "EXPIRED"
    #   resp.template_id #=> String
    #   resp.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationTemplate AWS API Documentation
    #
    # @overload create_cloud_formation_template(params = {})
    # @param [Hash] params ({})
    def create_cloud_formation_template(params = {}, options = {})
      req = build_request(:create_cloud_formation_template, params)
      req.send_request(options)
    end

    # Deletes the specified application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Gets the specified application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :semantic_version
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#application_id #application_id} => String
    #   * {Types::GetApplicationResponse#author #author} => String
    #   * {Types::GetApplicationResponse#creation_time #creation_time} => String
    #   * {Types::GetApplicationResponse#description #description} => String
    #   * {Types::GetApplicationResponse#home_page_url #home_page_url} => String
    #   * {Types::GetApplicationResponse#is_verified_author #is_verified_author} => Boolean
    #   * {Types::GetApplicationResponse#labels #labels} => Array&lt;String&gt;
    #   * {Types::GetApplicationResponse#license_url #license_url} => String
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#readme_url #readme_url} => String
    #   * {Types::GetApplicationResponse#spdx_license_id #spdx_license_id} => String
    #   * {Types::GetApplicationResponse#verified_author_url #verified_author_url} => String
    #   * {Types::GetApplicationResponse#version #version} => Types::Version
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "__string", # required
    #     semantic_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.author #=> String
    #   resp.creation_time #=> String
    #   resp.description #=> String
    #   resp.home_page_url #=> String
    #   resp.is_verified_author #=> Boolean
    #   resp.labels #=> Array
    #   resp.labels[0] #=> String
    #   resp.license_url #=> String
    #   resp.name #=> String
    #   resp.readme_url #=> String
    #   resp.spdx_license_id #=> String
    #   resp.verified_author_url #=> String
    #   resp.version.application_id #=> String
    #   resp.version.creation_time #=> String
    #   resp.version.parameter_definitions #=> Array
    #   resp.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.version.parameter_definitions[0].allowed_values #=> Array
    #   resp.version.parameter_definitions[0].allowed_values[0] #=> String
    #   resp.version.parameter_definitions[0].constraint_description #=> String
    #   resp.version.parameter_definitions[0].default_value #=> String
    #   resp.version.parameter_definitions[0].description #=> String
    #   resp.version.parameter_definitions[0].max_length #=> Integer
    #   resp.version.parameter_definitions[0].max_value #=> Integer
    #   resp.version.parameter_definitions[0].min_length #=> Integer
    #   resp.version.parameter_definitions[0].min_value #=> Integer
    #   resp.version.parameter_definitions[0].name #=> String
    #   resp.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.version.parameter_definitions[0].referenced_by_resources #=> Array
    #   resp.version.parameter_definitions[0].referenced_by_resources[0] #=> String
    #   resp.version.parameter_definitions[0].type #=> String
    #   resp.version.required_capabilities #=> Array
    #   resp.version.required_capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"
    #   resp.version.resources_supported #=> Boolean
    #   resp.version.semantic_version #=> String
    #   resp.version.source_code_archive_url #=> String
    #   resp.version.source_code_url #=> String
    #   resp.version.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Retrieves the policy for the application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApplicationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationPolicyResponse#statements #statements} => Array&lt;Types::ApplicationPolicyStatement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_policy({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.statements #=> Array
    #   resp.statements[0].actions #=> Array
    #   resp.statements[0].actions[0] #=> String
    #   resp.statements[0].principal_org_i_ds #=> Array
    #   resp.statements[0].principal_org_i_ds[0] #=> String
    #   resp.statements[0].principals #=> Array
    #   resp.statements[0].principals[0] #=> String
    #   resp.statements[0].statement_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationPolicy AWS API Documentation
    #
    # @overload get_application_policy(params = {})
    # @param [Hash] params ({})
    def get_application_policy(params = {}, options = {})
      req = build_request(:get_application_policy, params)
      req.send_request(options)
    end

    # Gets the specified AWS CloudFormation template.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :template_id
    #
    # @return [Types::GetCloudFormationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFormationTemplateResponse#application_id #application_id} => String
    #   * {Types::GetCloudFormationTemplateResponse#creation_time #creation_time} => String
    #   * {Types::GetCloudFormationTemplateResponse#expiration_time #expiration_time} => String
    #   * {Types::GetCloudFormationTemplateResponse#semantic_version #semantic_version} => String
    #   * {Types::GetCloudFormationTemplateResponse#status #status} => String
    #   * {Types::GetCloudFormationTemplateResponse#template_id #template_id} => String
    #   * {Types::GetCloudFormationTemplateResponse#template_url #template_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_formation_template({
    #     application_id: "__string", # required
    #     template_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.creation_time #=> String
    #   resp.expiration_time #=> String
    #   resp.semantic_version #=> String
    #   resp.status #=> String, one of "PREPARING", "ACTIVE", "EXPIRED"
    #   resp.template_id #=> String
    #   resp.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetCloudFormationTemplate AWS API Documentation
    #
    # @overload get_cloud_formation_template(params = {})
    # @param [Hash] params ({})
    def get_cloud_formation_template(params = {}, options = {})
      req = build_request(:get_cloud_formation_template, params)
      req.send_request(options)
    end

    # Retrieves the list of applications nested in the containing
    # application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [Integer] :max_items
    #
    # @option params [String] :next_token
    #
    # @option params [String] :semantic_version
    #
    # @return [Types::ListApplicationDependenciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationDependenciesResponse#dependencies #dependencies} => Array&lt;Types::ApplicationDependencySummary&gt;
    #   * {Types::ListApplicationDependenciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_dependencies({
    #     application_id: "__string", # required
    #     max_items: 1,
    #     next_token: "__string",
    #     semantic_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.dependencies #=> Array
    #   resp.dependencies[0].application_id #=> String
    #   resp.dependencies[0].semantic_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationDependencies AWS API Documentation
    #
    # @overload list_application_dependencies(params = {})
    # @param [Hash] params ({})
    def list_application_dependencies(params = {}, options = {})
      req = build_request(:list_application_dependencies, params)
      req.send_request(options)
    end

    # Lists versions for the specified application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [Integer] :max_items
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListApplicationVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationVersionsResponse#next_token #next_token} => String
    #   * {Types::ListApplicationVersionsResponse#versions #versions} => Array&lt;Types::VersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_versions({
    #     application_id: "__string", # required
    #     max_items: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].application_id #=> String
    #   resp.versions[0].creation_time #=> String
    #   resp.versions[0].semantic_version #=> String
    #   resp.versions[0].source_code_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationVersions AWS API Documentation
    #
    # @overload list_application_versions(params = {})
    # @param [Hash] params ({})
    def list_application_versions(params = {}, options = {})
      req = build_request(:list_application_versions, params)
      req.send_request(options)
    end

    # Lists applications owned by the requester.
    #
    # @option params [Integer] :max_items
    #
    # @option params [String] :next_token
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
    #     max_items: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].application_id #=> String
    #   resp.applications[0].author #=> String
    #   resp.applications[0].creation_time #=> String
    #   resp.applications[0].description #=> String
    #   resp.applications[0].home_page_url #=> String
    #   resp.applications[0].labels #=> Array
    #   resp.applications[0].labels[0] #=> String
    #   resp.applications[0].name #=> String
    #   resp.applications[0].spdx_license_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Sets the permission policy for an application. For the list of actions
    # supported for this operation, see [Application Permissions][1] .
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Array<Types::ApplicationPolicyStatement>] :statements
    #
    # @return [Types::PutApplicationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutApplicationPolicyResponse#statements #statements} => Array&lt;Types::ApplicationPolicyStatement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_policy({
    #     application_id: "__string", # required
    #     statements: [ # required
    #       {
    #         actions: ["__string"], # required
    #         principal_org_i_ds: ["__string"],
    #         principals: ["__string"], # required
    #         statement_id: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.statements #=> Array
    #   resp.statements[0].actions #=> Array
    #   resp.statements[0].actions[0] #=> String
    #   resp.statements[0].principal_org_i_ds #=> Array
    #   resp.statements[0].principal_org_i_ds[0] #=> String
    #   resp.statements[0].principals #=> Array
    #   resp.statements[0].principals[0] #=> String
    #   resp.statements[0].statement_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/PutApplicationPolicy AWS API Documentation
    #
    # @overload put_application_policy(params = {})
    # @param [Hash] params ({})
    def put_application_policy(params = {}, options = {})
      req = build_request(:put_application_policy, params)
      req.send_request(options)
    end

    # Unshares an application from an AWS Organization.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :organization_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unshare_application({
    #     application_id: "__string", # required
    #     organization_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UnshareApplication AWS API Documentation
    #
    # @overload unshare_application(params = {})
    # @param [Hash] params ({})
    def unshare_application(params = {}, options = {})
      req = build_request(:unshare_application, params)
      req.send_request(options)
    end

    # Updates the specified application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :author
    #
    # @option params [String] :description
    #
    # @option params [String] :home_page_url
    #
    # @option params [Array<String>] :labels
    #
    # @option params [String] :readme_body
    #
    # @option params [String] :readme_url
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application_id #application_id} => String
    #   * {Types::UpdateApplicationResponse#author #author} => String
    #   * {Types::UpdateApplicationResponse#creation_time #creation_time} => String
    #   * {Types::UpdateApplicationResponse#description #description} => String
    #   * {Types::UpdateApplicationResponse#home_page_url #home_page_url} => String
    #   * {Types::UpdateApplicationResponse#is_verified_author #is_verified_author} => Boolean
    #   * {Types::UpdateApplicationResponse#labels #labels} => Array&lt;String&gt;
    #   * {Types::UpdateApplicationResponse#license_url #license_url} => String
    #   * {Types::UpdateApplicationResponse#name #name} => String
    #   * {Types::UpdateApplicationResponse#readme_url #readme_url} => String
    #   * {Types::UpdateApplicationResponse#spdx_license_id #spdx_license_id} => String
    #   * {Types::UpdateApplicationResponse#verified_author_url #verified_author_url} => String
    #   * {Types::UpdateApplicationResponse#version #version} => Types::Version
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "__string", # required
    #     author: "__string",
    #     description: "__string",
    #     home_page_url: "__string",
    #     labels: ["__string"],
    #     readme_body: "__string",
    #     readme_url: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.author #=> String
    #   resp.creation_time #=> String
    #   resp.description #=> String
    #   resp.home_page_url #=> String
    #   resp.is_verified_author #=> Boolean
    #   resp.labels #=> Array
    #   resp.labels[0] #=> String
    #   resp.license_url #=> String
    #   resp.name #=> String
    #   resp.readme_url #=> String
    #   resp.spdx_license_id #=> String
    #   resp.verified_author_url #=> String
    #   resp.version.application_id #=> String
    #   resp.version.creation_time #=> String
    #   resp.version.parameter_definitions #=> Array
    #   resp.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.version.parameter_definitions[0].allowed_values #=> Array
    #   resp.version.parameter_definitions[0].allowed_values[0] #=> String
    #   resp.version.parameter_definitions[0].constraint_description #=> String
    #   resp.version.parameter_definitions[0].default_value #=> String
    #   resp.version.parameter_definitions[0].description #=> String
    #   resp.version.parameter_definitions[0].max_length #=> Integer
    #   resp.version.parameter_definitions[0].max_value #=> Integer
    #   resp.version.parameter_definitions[0].min_length #=> Integer
    #   resp.version.parameter_definitions[0].min_value #=> Integer
    #   resp.version.parameter_definitions[0].name #=> String
    #   resp.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.version.parameter_definitions[0].referenced_by_resources #=> Array
    #   resp.version.parameter_definitions[0].referenced_by_resources[0] #=> String
    #   resp.version.parameter_definitions[0].type #=> String
    #   resp.version.required_capabilities #=> Array
    #   resp.version.required_capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"
    #   resp.version.resources_supported #=> Boolean
    #   resp.version.semantic_version #=> String
    #   resp.version.source_code_archive_url #=> String
    #   resp.version.source_code_url #=> String
    #   resp.version.template_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-serverlessapplicationrepository'
      context[:gem_version] = '1.32.0'
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
