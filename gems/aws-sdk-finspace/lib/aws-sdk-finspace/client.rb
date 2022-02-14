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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-finspace/plugins/content_type.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:finspace)

module Aws::Finspace
  # An API client for Finspace.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Finspace::Client.new(
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

    @identifier = :finspace

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Finspace::Plugins::ContentType)

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

    # Create a new FinSpace environment.
    #
    # @option params [required, String] :name
    #   The name of the FinSpace environment to be created.
    #
    # @option params [String] :description
    #   The description of the FinSpace environment to be created.
    #
    # @option params [String] :kms_key_id
    #   The KMS key id to encrypt your data in the FinSpace environment.
    #
    # @option params [Hash<String,String>] :tags
    #   Add tags to your FinSpace environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @option params [Types::SuperuserParameters] :superuser_parameters
    #   Configuration information for the superuser.
    #
    # @option params [Array<String>] :data_bundles
    #   The list of Amazon Resource Names (ARN) of the data bundles to
    #   install. Currently supported data bundle ARNs:
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/capital-markets-sample` -
    #     Contains sample Capital Markets datasets, categories and controlled
    #     vocabularies.
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/taq` (default) - Contains
    #     trades and quotes data in addition to sample Capital Markets data.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::CreateEnvironmentResponse#environment_url #environment_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "url",
    #       },
    #     },
    #     superuser_parameters: {
    #       email_address: "EmailId", # required
    #       first_name: "NameString", # required
    #       last_name: "NameString", # required
    #     },
    #     data_bundles: ["DataBundleArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.environment_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Delete an FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier for the FinSpace environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Returns the FinSpace environment object.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # A list of all of your FinSpace environments.
    #
    # @option params [String] :next_token
    #   A token generated by FinSpace that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set of
    #   pages, pass in the nextToken value from the response object of the
    #   previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::Environment&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].aws_account_id #=> String
    #   resp.environments[0].status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "SUSPENDED"
    #   resp.environments[0].environment_url #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].sage_maker_studio_domain_url #=> String
    #   resp.environments[0].kms_key_id #=> String
    #   resp.environments[0].dedicated_service_account_id #=> String
    #   resp.environments[0].federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environments[0].federation_parameters.saml_metadata_document #=> String
    #   resp.environments[0].federation_parameters.saml_metadata_url #=> String
    #   resp.environments[0].federation_parameters.application_call_back_url #=> String
    #   resp.environments[0].federation_parameters.federation_urn #=> String
    #   resp.environments[0].federation_parameters.federation_provider_name #=> String
    #   resp.environments[0].federation_parameters.attribute_map #=> Hash
    #   resp.environments[0].federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # A list of all tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "EnvironmentArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds metadata tags to a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags to be assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "EnvironmentArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   A FinSpace resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "EnvironmentArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update your FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @option params [String] :name
    #   The name of the environment.
    #
    # @option params [String] :description
    #   The description of the environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @return [Types::UpdateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "IdType", # required
    #     name: "EnvironmentName",
    #     description: "Description",
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "url",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
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
      context[:gem_name] = 'aws-sdk-finspace'
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
