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

Aws::Plugins::GlobalConfiguration.add_identifier(:imagebuilder)

module Aws::Imagebuilder
  # An API client for Imagebuilder.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Imagebuilder::Client.new(
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

    @identifier = :imagebuilder

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

    # CancelImageCreation cancels the creation of Image. This operation can
    # only be used on images in a non-terminal state.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation you want to
    #   cancel.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelImageCreationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelImageCreationResponse#request_id #request_id} => String
    #   * {Types::CancelImageCreationResponse#client_token #client_token} => String
    #   * {Types::CancelImageCreationResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_image_creation({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreation AWS API Documentation
    #
    # @overload cancel_image_creation(params = {})
    # @param [Hash] params ({})
    def cancel_image_creation(params = {}, options = {})
      req = build_request(:cancel_image_creation, params)
      req.send_request(options)
    end

    # Creates a new component that can be used to build, validate, test, and
    # assess your image.
    #
    # @option params [required, String] :name
    #   The name of the component.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax. For example, major.minor.patch. This could be
    #   versioned like software (2.0.1) or like a date (2019.12.01).
    #
    # @option params [String] :description
    #   The description of the component. Describes the contents of the
    #   component.
    #
    # @option params [String] :change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #
    # @option params [required, String] :platform
    #   The platform of the component.
    #
    # @option params [Array<String>] :supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   parent image OS version during image recipe creation.
    #
    # @option params [String] :data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the component.
    #
    # @option params [String] :uri
    #   The uri of the component. Must be an S3 URL and the requester must
    #   have permission to access the S3 bucket. If you use S3, you can
    #   specify component content up to your service quota. Either `data` or
    #   `uri` can be used to specify the data within the component.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the component.
    #
    # @option params [required, String] :client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentResponse#request_id #request_id} => String
    #   * {Types::CreateComponentResponse#client_token #client_token} => String
    #   * {Types::CreateComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     platform: "Windows", # required, accepts Windows, Linux
    #     supported_os_versions: ["OsVersion"],
    #     data: "InlineComponentData",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Creates a new distribution configuration. Distribution configurations
    # define and configure the outputs of your pipeline.
    #
    # @option params [required, String] :name
    #   The name of the distribution configuration.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distributions of the distribution configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the distribution configuration.
    #
    # @option params [required, String] :client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateDistributionConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_configuration({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfiguration AWS API Documentation
    #
    # @overload create_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def create_distribution_configuration(params = {}, options = {})
      req = build_request(:create_distribution_configuration, params)
      req.send_request(options)
    end

    # Creates a new image. This request will create a new image along with
    # all of the configured output resources defined in the distribution
    # configuration.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   defines and configures the outputs of your pipeline.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image tests configuration of the image.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageResponse#request_id #request_id} => String
    #   * {Types::CreateImageResponse#client_token #client_token} => String
    #   * {Types::CreateImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImage AWS API Documentation
    #
    # @overload create_image(params = {})
    # @param [Hash] params ({})
    def create_image(params = {}, options = {})
      req = build_request(:create_image, params)
      req.send_request(options)
    end

    # Creates a new image pipeline. Image pipelines enable you to automate
    # the creation and distribution of images.
    #
    # @option params [required, String] :name
    #   The name of the image pipeline.
    #
    # @option params [String] :description
    #   The description of the image pipeline.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images created by this image pipeline.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images created by this image pipeline.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   will be used to configure and distribute images created by this image
    #   pipeline.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image test configuration of the image pipeline.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline.
    #
    # @option params [String] :status
    #   The status of the image pipeline.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image pipeline.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::CreateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::CreateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_pipeline({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #     },
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipeline AWS API Documentation
    #
    # @overload create_image_pipeline(params = {})
    # @param [Hash] params ({})
    def create_image_pipeline(params = {}, options = {})
      req = build_request(:create_image_pipeline, params)
      req.send_request(options)
    end

    # Creates a new image recipe. Image recipes define how images are
    # configured, tested, and assessed.
    #
    # @option params [required, String] :name
    #   The name of the image recipe.
    #
    # @option params [String] :description
    #   The description of the image recipe.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the image recipe.
    #
    # @option params [required, Array<Types::ComponentConfiguration>] :components
    #   The components of the image recipe.
    #
    # @option params [required, String] :parent_image
    #   The parent image of the image recipe. The value of the string can be
    #   the ARN of the parent image or an AMI ID. The format for the ARN
    #   follows this example:
    #   `arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/xxxx.x.x`.
    #   You can provide the specific version that you want to use, or you can
    #   use a wildcard in all of the fields. If you enter an AMI ID for the
    #   string value, you must have access to the AMI, and the AMI must be in
    #   the same Region in which you are using Image Builder.
    #
    # @option params [Array<Types::InstanceBlockDeviceMapping>] :block_device_mappings
    #   The block device mappings of the image recipe.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image recipe.
    #
    # @option params [String] :working_directory
    #   The working directory to be used during build and test workflows.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageRecipeResponse#request_id #request_id} => String
    #   * {Types::CreateImageRecipeResponse#client_token #client_token} => String
    #   * {Types::CreateImageRecipeResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_recipe({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "VersionNumber", # required
    #     components: [ # required
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #       },
    #     ],
    #     parent_image: "NonEmptyString", # required
    #     block_device_mappings: [
    #       {
    #         device_name: "NonEmptyString",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: "NonEmptyString",
    #           snapshot_id: "NonEmptyString",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1
    #         },
    #         virtual_name: "NonEmptyString",
    #         no_device: "EmptyString",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     working_directory: "NonEmptyString",
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipe AWS API Documentation
    #
    # @overload create_image_recipe(params = {})
    # @param [Hash] params ({})
    def create_image_recipe(params = {}, options = {})
      req = build_request(:create_image_recipe, params)
      req.send_request(options)
    end

    # Creates a new infrastructure configuration. An infrastructure
    # configuration defines the environment in which your image will be
    # built and tested.
    #
    # @option params [required, String] :name
    #   The name of the infrastructure configuration.
    #
    # @option params [String] :description
    #   The description of the infrastructure configuration.
    #
    # @option params [Array<String>] :instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The service
    #   will pick one of these instance types based on availability.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your EC2 AMI.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   EC2 AMI.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. This can be used to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of your
    #   workflow fails.
    #
    # @option params [String] :sns_topic_arn
    #   The SNS topic on which to send image build events.
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The tags attached to the resource created by Image Builder.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the infrastructure configuration.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_infrastructure_configuration({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "NonEmptyString", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       },
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfiguration AWS API Documentation
    #
    # @overload create_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def create_infrastructure_configuration(params = {}, options = {})
      req = build_request(:create_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Deletes a component build version.
    #
    # @option params [required, String] :component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version to
    #   delete.
    #
    # @return [Types::DeleteComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteComponentResponse#request_id #request_id} => String
    #   * {Types::DeleteComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     component_build_version_arn: "ComponentBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Deletes a distribution configuration.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration to
    #   delete.
    #
    # @return [Types::DeleteDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::DeleteDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfiguration AWS API Documentation
    #
    # @overload delete_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def delete_distribution_configuration(params = {}, options = {})
      req = build_request(:delete_distribution_configuration, params)
      req.send_request(options)
    end

    # Deletes an image.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image to delete.
    #
    # @return [Types::DeleteImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageResponse#request_id #request_id} => String
    #   * {Types::DeleteImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImage AWS API Documentation
    #
    # @overload delete_image(params = {})
    # @param [Hash] params ({})
    def delete_image(params = {}, options = {})
      req = build_request(:delete_image, params)
      req.send_request(options)
    end

    # Deletes an image pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline to delete.
    #
    # @return [Types::DeleteImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImagePipelineResponse#request_id #request_id} => String
    #   * {Types::DeleteImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipeline AWS API Documentation
    #
    # @overload delete_image_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_image_pipeline(params = {}, options = {})
      req = build_request(:delete_image_pipeline, params)
      req.send_request(options)
    end

    # Deletes an image recipe.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe to delete.
    #
    # @return [Types::DeleteImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageRecipeResponse#request_id #request_id} => String
    #   * {Types::DeleteImageRecipeResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_recipe({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipe AWS API Documentation
    #
    # @overload delete_image_recipe(params = {})
    # @param [Hash] params ({})
    def delete_image_recipe(params = {}, options = {})
      req = build_request(:delete_image_recipe, params)
      req.send_request(options)
    end

    # Deletes an infrastructure configuration.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration to
    #   delete.
    #
    # @return [Types::DeleteInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::DeleteInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfiguration AWS API Documentation
    #
    # @overload delete_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def delete_infrastructure_configuration(params = {}, options = {})
      req = build_request(:delete_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Gets a component object.
    #
    # @option params [required, String] :component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to
    #   retrieve. Regex requires "/\\d+$" suffix.
    #
    # @return [Types::GetComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentResponse#request_id #request_id} => String
    #   * {Types::GetComponentResponse#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     component_build_version_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component.arn #=> String
    #   resp.component.name #=> String
    #   resp.component.version #=> String
    #   resp.component.description #=> String
    #   resp.component.change_description #=> String
    #   resp.component.type #=> String, one of "BUILD", "TEST"
    #   resp.component.platform #=> String, one of "Windows", "Linux"
    #   resp.component.supported_os_versions #=> Array
    #   resp.component.supported_os_versions[0] #=> String
    #   resp.component.owner #=> String
    #   resp.component.data #=> String
    #   resp.component.kms_key_id #=> String
    #   resp.component.encrypted #=> Boolean
    #   resp.component.date_created #=> String
    #   resp.component.tags #=> Hash
    #   resp.component.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Gets a component policy.
    #
    # @option params [required, String] :component_arn
    #   The Amazon Resource Name (ARN) of the component whose policy you want
    #   to retrieve.
    #
    # @return [Types::GetComponentPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentPolicyResponse#request_id #request_id} => String
    #   * {Types::GetComponentPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_policy({
    #     component_arn: "ComponentBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicy AWS API Documentation
    #
    # @overload get_component_policy(params = {})
    # @param [Hash] params ({})
    def get_component_policy(params = {}, options = {})
      req = build_request(:get_component_policy, params)
      req.send_request(options)
    end

    # Gets a distribution configuration.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   you want to retrieve.
    #
    # @return [Types::GetDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::GetDistributionConfigurationResponse#distribution_configuration #distribution_configuration} => Types::DistributionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration.arn #=> String
    #   resp.distribution_configuration.name #=> String
    #   resp.distribution_configuration.description #=> String
    #   resp.distribution_configuration.distributions #=> Array
    #   resp.distribution_configuration.distributions[0].region #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags["TagKey"] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.distribution_configuration.distributions[0].license_configuration_arns #=> Array
    #   resp.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.distribution_configuration.timeout_minutes #=> Integer
    #   resp.distribution_configuration.date_created #=> String
    #   resp.distribution_configuration.date_updated #=> String
    #   resp.distribution_configuration.tags #=> Hash
    #   resp.distribution_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfiguration AWS API Documentation
    #
    # @overload get_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def get_distribution_configuration(params = {}, options = {})
      req = build_request(:get_distribution_configuration, params)
      req.send_request(options)
    end

    # Gets an image.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to retrieve.
    #
    # @return [Types::GetImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageResponse#request_id #request_id} => String
    #   * {Types::GetImageResponse#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image({
    #     image_build_version_arn: "ImageVersionArnOrBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image.arn #=> String
    #   resp.image.name #=> String
    #   resp.image.version #=> String
    #   resp.image.platform #=> String, one of "Windows", "Linux"
    #   resp.image.enhanced_image_metadata_enabled #=> Boolean
    #   resp.image.os_version #=> String
    #   resp.image.state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image.state.reason #=> String
    #   resp.image.image_recipe.arn #=> String
    #   resp.image.image_recipe.name #=> String
    #   resp.image.image_recipe.description #=> String
    #   resp.image.image_recipe.platform #=> String, one of "Windows", "Linux"
    #   resp.image.image_recipe.owner #=> String
    #   resp.image.image_recipe.version #=> String
    #   resp.image.image_recipe.components #=> Array
    #   resp.image.image_recipe.components[0].component_arn #=> String
    #   resp.image.image_recipe.parent_image #=> String
    #   resp.image.image_recipe.block_device_mappings #=> Array
    #   resp.image.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.image.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.image.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.image.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.image.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "sc1", "st1"
    #   resp.image.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.image.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.image.image_recipe.date_created #=> String
    #   resp.image.image_recipe.tags #=> Hash
    #   resp.image.image_recipe.tags["TagKey"] #=> String
    #   resp.image.image_recipe.working_directory #=> String
    #   resp.image.source_pipeline_name #=> String
    #   resp.image.source_pipeline_arn #=> String
    #   resp.image.infrastructure_configuration.arn #=> String
    #   resp.image.infrastructure_configuration.name #=> String
    #   resp.image.infrastructure_configuration.description #=> String
    #   resp.image.infrastructure_configuration.instance_types #=> Array
    #   resp.image.infrastructure_configuration.instance_types[0] #=> String
    #   resp.image.infrastructure_configuration.instance_profile_name #=> String
    #   resp.image.infrastructure_configuration.security_group_ids #=> Array
    #   resp.image.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.image.infrastructure_configuration.subnet_id #=> String
    #   resp.image.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.image.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.image.infrastructure_configuration.key_pair #=> String
    #   resp.image.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.image.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.image.infrastructure_configuration.date_created #=> String
    #   resp.image.infrastructure_configuration.date_updated #=> String
    #   resp.image.infrastructure_configuration.resource_tags #=> Hash
    #   resp.image.infrastructure_configuration.resource_tags["TagKey"] #=> String
    #   resp.image.infrastructure_configuration.tags #=> Hash
    #   resp.image.infrastructure_configuration.tags["TagKey"] #=> String
    #   resp.image.distribution_configuration.arn #=> String
    #   resp.image.distribution_configuration.name #=> String
    #   resp.image.distribution_configuration.description #=> String
    #   resp.image.distribution_configuration.distributions #=> Array
    #   resp.image.distribution_configuration.distributions[0].region #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags["TagKey"] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].license_configuration_arns #=> Array
    #   resp.image.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.image.distribution_configuration.timeout_minutes #=> Integer
    #   resp.image.distribution_configuration.date_created #=> String
    #   resp.image.distribution_configuration.date_updated #=> String
    #   resp.image.distribution_configuration.tags #=> Hash
    #   resp.image.distribution_configuration.tags["TagKey"] #=> String
    #   resp.image.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image.date_created #=> String
    #   resp.image.output_resources.amis #=> Array
    #   resp.image.output_resources.amis[0].region #=> String
    #   resp.image.output_resources.amis[0].image #=> String
    #   resp.image.output_resources.amis[0].name #=> String
    #   resp.image.output_resources.amis[0].description #=> String
    #   resp.image.output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image.output_resources.amis[0].state.reason #=> String
    #   resp.image.output_resources.amis[0].account_id #=> String
    #   resp.image.tags #=> Hash
    #   resp.image.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImage AWS API Documentation
    #
    # @overload get_image(params = {})
    # @param [Hash] params ({})
    def get_image(params = {}, options = {})
      req = build_request(:get_image, params)
      req.send_request(options)
    end

    # Gets an image pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   retrieve.
    #
    # @return [Types::GetImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImagePipelineResponse#request_id #request_id} => String
    #   * {Types::GetImagePipelineResponse#image_pipeline #image_pipeline} => Types::ImagePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline.arn #=> String
    #   resp.image_pipeline.name #=> String
    #   resp.image_pipeline.description #=> String
    #   resp.image_pipeline.platform #=> String, one of "Windows", "Linux"
    #   resp.image_pipeline.enhanced_image_metadata_enabled #=> Boolean
    #   resp.image_pipeline.image_recipe_arn #=> String
    #   resp.image_pipeline.infrastructure_configuration_arn #=> String
    #   resp.image_pipeline.distribution_configuration_arn #=> String
    #   resp.image_pipeline.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image_pipeline.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image_pipeline.schedule.schedule_expression #=> String
    #   resp.image_pipeline.schedule.pipeline_execution_start_condition #=> String, one of "EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
    #   resp.image_pipeline.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.image_pipeline.date_created #=> String
    #   resp.image_pipeline.date_updated #=> String
    #   resp.image_pipeline.date_last_run #=> String
    #   resp.image_pipeline.date_next_run #=> String
    #   resp.image_pipeline.tags #=> Hash
    #   resp.image_pipeline.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipeline AWS API Documentation
    #
    # @overload get_image_pipeline(params = {})
    # @param [Hash] params ({})
    def get_image_pipeline(params = {}, options = {})
      req = build_request(:get_image_pipeline, params)
      req.send_request(options)
    end

    # Gets an image policy.
    #
    # @option params [required, String] :image_arn
    #   The Amazon Resource Name (ARN) of the image whose policy you want to
    #   retrieve.
    #
    # @return [Types::GetImagePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImagePolicyResponse#request_id #request_id} => String
    #   * {Types::GetImagePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_policy({
    #     image_arn: "ImageBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicy AWS API Documentation
    #
    # @overload get_image_policy(params = {})
    # @param [Hash] params ({})
    def get_image_policy(params = {}, options = {})
      req = build_request(:get_image_policy, params)
      req.send_request(options)
    end

    # Gets an image recipe.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that you want to
    #   retrieve.
    #
    # @return [Types::GetImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageRecipeResponse#request_id #request_id} => String
    #   * {Types::GetImageRecipeResponse#image_recipe #image_recipe} => Types::ImageRecipe
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe.arn #=> String
    #   resp.image_recipe.name #=> String
    #   resp.image_recipe.description #=> String
    #   resp.image_recipe.platform #=> String, one of "Windows", "Linux"
    #   resp.image_recipe.owner #=> String
    #   resp.image_recipe.version #=> String
    #   resp.image_recipe.components #=> Array
    #   resp.image_recipe.components[0].component_arn #=> String
    #   resp.image_recipe.parent_image #=> String
    #   resp.image_recipe.block_device_mappings #=> Array
    #   resp.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "sc1", "st1"
    #   resp.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.image_recipe.date_created #=> String
    #   resp.image_recipe.tags #=> Hash
    #   resp.image_recipe.tags["TagKey"] #=> String
    #   resp.image_recipe.working_directory #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipe AWS API Documentation
    #
    # @overload get_image_recipe(params = {})
    # @param [Hash] params ({})
    def get_image_recipe(params = {}, options = {})
      req = build_request(:get_image_recipe, params)
      req.send_request(options)
    end

    # Gets an image recipe policy.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe whose policy you
    #   want to retrieve.
    #
    # @return [Types::GetImageRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::GetImageRecipePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe_policy({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicy AWS API Documentation
    #
    # @overload get_image_recipe_policy(params = {})
    # @param [Hash] params ({})
    def get_image_recipe_policy(params = {}, options = {})
      req = build_request(:get_image_recipe_policy, params)
      req.send_request(options)
    end

    # Gets an infrastructure configuration.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to retrieve.
    #
    # @return [Types::GetInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::GetInfrastructureConfigurationResponse#infrastructure_configuration #infrastructure_configuration} => Types::InfrastructureConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration.arn #=> String
    #   resp.infrastructure_configuration.name #=> String
    #   resp.infrastructure_configuration.description #=> String
    #   resp.infrastructure_configuration.instance_types #=> Array
    #   resp.infrastructure_configuration.instance_types[0] #=> String
    #   resp.infrastructure_configuration.instance_profile_name #=> String
    #   resp.infrastructure_configuration.security_group_ids #=> Array
    #   resp.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.infrastructure_configuration.subnet_id #=> String
    #   resp.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.infrastructure_configuration.key_pair #=> String
    #   resp.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.infrastructure_configuration.date_created #=> String
    #   resp.infrastructure_configuration.date_updated #=> String
    #   resp.infrastructure_configuration.resource_tags #=> Hash
    #   resp.infrastructure_configuration.resource_tags["TagKey"] #=> String
    #   resp.infrastructure_configuration.tags #=> Hash
    #   resp.infrastructure_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfiguration AWS API Documentation
    #
    # @overload get_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def get_infrastructure_configuration(params = {}, options = {})
      req = build_request(:get_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Imports a component and transforms its data into a component document.
    #
    # @option params [required, String] :name
    #   The name of the component.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax. For example, major.minor.patch. This could be
    #   versioned like software (2.0.1) or like a date (2019.12.01).
    #
    # @option params [String] :description
    #   The description of the component. Describes the contents of the
    #   component.
    #
    # @option params [String] :change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #
    # @option params [required, String] :type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #
    # @option params [required, String] :format
    #   The format of the resource that you want to import as a component.
    #
    # @option params [required, String] :platform
    #   The platform of the component.
    #
    # @option params [String] :data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the component.
    #
    # @option params [String] :uri
    #   The uri of the component. Must be an S3 URL and the requester must
    #   have permission to access the S3 bucket. If you use S3, you can
    #   specify component content up to your service quota. Either `data` or
    #   `uri` can be used to specify the data within the component.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the component.
    #
    # @option params [required, String] :client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ImportComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportComponentResponse#request_id #request_id} => String
    #   * {Types::ImportComponentResponse#client_token #client_token} => String
    #   * {Types::ImportComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_component({
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     type: "BUILD", # required, accepts BUILD, TEST
    #     format: "SHELL", # required, accepts SHELL
    #     platform: "Windows", # required, accepts Windows, Linux
    #     data: "NonEmptyString",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponent AWS API Documentation
    #
    # @overload import_component(params = {})
    # @param [Hash] params ({})
    def import_component(params = {}, options = {})
      req = build_request(:import_component, params)
      req.send_request(options)
    end

    # Returns the list of component build versions for the specified
    # semantic version.
    #
    # @option params [required, String] :component_version_arn
    #   The component version Amazon Resource Name (ARN) whose versions you
    #   want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListComponentBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListComponentBuildVersionsResponse#component_summary_list #component_summary_list} => Array&lt;Types::ComponentSummary&gt;
    #   * {Types::ListComponentBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_build_versions({
    #     component_version_arn: "ComponentVersionArn", # required
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_summary_list #=> Array
    #   resp.component_summary_list[0].arn #=> String
    #   resp.component_summary_list[0].name #=> String
    #   resp.component_summary_list[0].version #=> String
    #   resp.component_summary_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.component_summary_list[0].supported_os_versions #=> Array
    #   resp.component_summary_list[0].supported_os_versions[0] #=> String
    #   resp.component_summary_list[0].type #=> String, one of "BUILD", "TEST"
    #   resp.component_summary_list[0].owner #=> String
    #   resp.component_summary_list[0].description #=> String
    #   resp.component_summary_list[0].change_description #=> String
    #   resp.component_summary_list[0].date_created #=> String
    #   resp.component_summary_list[0].tags #=> Hash
    #   resp.component_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersions AWS API Documentation
    #
    # @overload list_component_build_versions(params = {})
    # @param [Hash] params ({})
    def list_component_build_versions(params = {}, options = {})
      req = build_request(:list_component_build_versions, params)
      req.send_request(options)
    end

    # Returns the list of component build versions for the specified
    # semantic version.
    #
    # @option params [String] :owner
    #   The owner defines which components you want to list. By default, this
    #   request will only show components owned by your account. You can use
    #   this field to specify if you want to view components owned by
    #   yourself, by Amazon, or those components that have been shared with
    #   you by other customers.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#request_id #request_id} => String
    #   * {Types::ListComponentsResponse#component_version_list #component_version_list} => Array&lt;Types::ComponentVersion&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     owner: "Self", # accepts Self, Shared, Amazon
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_version_list #=> Array
    #   resp.component_version_list[0].arn #=> String
    #   resp.component_version_list[0].name #=> String
    #   resp.component_version_list[0].version #=> String
    #   resp.component_version_list[0].description #=> String
    #   resp.component_version_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.component_version_list[0].supported_os_versions #=> Array
    #   resp.component_version_list[0].supported_os_versions[0] #=> String
    #   resp.component_version_list[0].type #=> String, one of "BUILD", "TEST"
    #   resp.component_version_list[0].owner #=> String
    #   resp.component_version_list[0].date_created #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Returns a list of distribution configurations.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `name` - The name of this distribution configuration.
    #
    #   ^
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListDistributionConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListDistributionConfigurationsResponse#distribution_configuration_summary_list #distribution_configuration_summary_list} => Array&lt;Types::DistributionConfigurationSummary&gt;
    #   * {Types::ListDistributionConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distribution_configurations({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration_summary_list #=> Array
    #   resp.distribution_configuration_summary_list[0].arn #=> String
    #   resp.distribution_configuration_summary_list[0].name #=> String
    #   resp.distribution_configuration_summary_list[0].description #=> String
    #   resp.distribution_configuration_summary_list[0].date_created #=> String
    #   resp.distribution_configuration_summary_list[0].date_updated #=> String
    #   resp.distribution_configuration_summary_list[0].tags #=> Hash
    #   resp.distribution_configuration_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurations AWS API Documentation
    #
    # @overload list_distribution_configurations(params = {})
    # @param [Hash] params ({})
    def list_distribution_configurations(params = {}, options = {})
      req = build_request(:list_distribution_configurations, params)
      req.send_request(options)
    end

    # Returns a list of image build versions.
    #
    # @option params [required, String] :image_version_arn
    #   The Amazon Resource Name (ARN) of the image whose build versions you
    #   want to retrieve.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListImageBuildVersionsResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImageBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_build_versions({
    #     image_version_arn: "ImageVersionArn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_summary_list #=> Array
    #   resp.image_summary_list[0].arn #=> String
    #   resp.image_summary_list[0].name #=> String
    #   resp.image_summary_list[0].version #=> String
    #   resp.image_summary_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.image_summary_list[0].os_version #=> String
    #   resp.image_summary_list[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image_summary_list[0].state.reason #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.image_summary_list[0].tags #=> Hash
    #   resp.image_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersions AWS API Documentation
    #
    # @overload list_image_build_versions(params = {})
    # @param [Hash] params ({})
    def list_image_build_versions(params = {}, options = {})
      req = build_request(:list_image_build_versions, params)
      req.send_request(options)
    end

    # Returns a list of images created by the specified pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline whose images you
    #   want to view.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagePipelineImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelineImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelineImagesResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImagePipelineImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipeline_images({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_summary_list #=> Array
    #   resp.image_summary_list[0].arn #=> String
    #   resp.image_summary_list[0].name #=> String
    #   resp.image_summary_list[0].version #=> String
    #   resp.image_summary_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.image_summary_list[0].os_version #=> String
    #   resp.image_summary_list[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image_summary_list[0].state.reason #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.image_summary_list[0].tags #=> Hash
    #   resp.image_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImages AWS API Documentation
    #
    # @overload list_image_pipeline_images(params = {})
    # @param [Hash] params ({})
    def list_image_pipeline_images(params = {}, options = {})
      req = build_request(:list_image_pipeline_images, params)
      req.send_request(options)
    end

    # Returns a list of image pipelines.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagePipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelinesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelinesResponse#image_pipeline_list #image_pipeline_list} => Array&lt;Types::ImagePipeline&gt;
    #   * {Types::ListImagePipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipelines({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline_list #=> Array
    #   resp.image_pipeline_list[0].arn #=> String
    #   resp.image_pipeline_list[0].name #=> String
    #   resp.image_pipeline_list[0].description #=> String
    #   resp.image_pipeline_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.image_pipeline_list[0].enhanced_image_metadata_enabled #=> Boolean
    #   resp.image_pipeline_list[0].image_recipe_arn #=> String
    #   resp.image_pipeline_list[0].infrastructure_configuration_arn #=> String
    #   resp.image_pipeline_list[0].distribution_configuration_arn #=> String
    #   resp.image_pipeline_list[0].image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image_pipeline_list[0].image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image_pipeline_list[0].schedule.schedule_expression #=> String
    #   resp.image_pipeline_list[0].schedule.pipeline_execution_start_condition #=> String, one of "EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
    #   resp.image_pipeline_list[0].status #=> String, one of "DISABLED", "ENABLED"
    #   resp.image_pipeline_list[0].date_created #=> String
    #   resp.image_pipeline_list[0].date_updated #=> String
    #   resp.image_pipeline_list[0].date_last_run #=> String
    #   resp.image_pipeline_list[0].date_next_run #=> String
    #   resp.image_pipeline_list[0].tags #=> Hash
    #   resp.image_pipeline_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelines AWS API Documentation
    #
    # @overload list_image_pipelines(params = {})
    # @param [Hash] params ({})
    def list_image_pipelines(params = {}, options = {})
      req = build_request(:list_image_pipelines, params)
      req.send_request(options)
    end

    # Returns a list of image recipes.
    #
    # @option params [String] :owner
    #   The owner defines which image recipes you want to list. By default,
    #   this request will only show image recipes owned by your account. You
    #   can use this field to specify if you want to view image recipes owned
    #   by yourself, by Amazon, or those image recipes that have been shared
    #   with you by other customers.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageRecipesResponse#request_id #request_id} => String
    #   * {Types::ListImageRecipesResponse#image_recipe_summary_list #image_recipe_summary_list} => Array&lt;Types::ImageRecipeSummary&gt;
    #   * {Types::ListImageRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_recipes({
    #     owner: "Self", # accepts Self, Shared, Amazon
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_summary_list #=> Array
    #   resp.image_recipe_summary_list[0].arn #=> String
    #   resp.image_recipe_summary_list[0].name #=> String
    #   resp.image_recipe_summary_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.image_recipe_summary_list[0].owner #=> String
    #   resp.image_recipe_summary_list[0].parent_image #=> String
    #   resp.image_recipe_summary_list[0].date_created #=> String
    #   resp.image_recipe_summary_list[0].tags #=> Hash
    #   resp.image_recipe_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipes AWS API Documentation
    #
    # @overload list_image_recipes(params = {})
    # @param [Hash] params ({})
    def list_image_recipes(params = {}, options = {})
      req = build_request(:list_image_recipes, params)
      req.send_request(options)
    end

    # Returns the list of images that you have access to.
    #
    # @option params [String] :owner
    #   The owner defines which images you want to list. By default, this
    #   request will only show images owned by your account. You can use this
    #   field to specify if you want to view images owned by yourself, by
    #   Amazon, or those images that have been shared with you by other
    #   customers.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagesResponse#image_version_list #image_version_list} => Array&lt;Types::ImageVersion&gt;
    #   * {Types::ListImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images({
    #     owner: "Self", # accepts Self, Shared, Amazon
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_version_list #=> Array
    #   resp.image_version_list[0].arn #=> String
    #   resp.image_version_list[0].name #=> String
    #   resp.image_version_list[0].version #=> String
    #   resp.image_version_list[0].platform #=> String, one of "Windows", "Linux"
    #   resp.image_version_list[0].os_version #=> String
    #   resp.image_version_list[0].owner #=> String
    #   resp.image_version_list[0].date_created #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImages AWS API Documentation
    #
    # @overload list_images(params = {})
    # @param [Hash] params ({})
    def list_images(params = {}, options = {})
      req = build_request(:list_images, params)
      req.send_request(options)
    end

    # Returns a list of infrastructure configurations.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters.
    #
    # @option params [Integer] :max_results
    #   The maximum items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListInfrastructureConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInfrastructureConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListInfrastructureConfigurationsResponse#infrastructure_configuration_summary_list #infrastructure_configuration_summary_list} => Array&lt;Types::InfrastructureConfigurationSummary&gt;
    #   * {Types::ListInfrastructureConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_infrastructure_configurations({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration_summary_list #=> Array
    #   resp.infrastructure_configuration_summary_list[0].arn #=> String
    #   resp.infrastructure_configuration_summary_list[0].name #=> String
    #   resp.infrastructure_configuration_summary_list[0].description #=> String
    #   resp.infrastructure_configuration_summary_list[0].date_created #=> String
    #   resp.infrastructure_configuration_summary_list[0].date_updated #=> String
    #   resp.infrastructure_configuration_summary_list[0].resource_tags #=> Hash
    #   resp.infrastructure_configuration_summary_list[0].resource_tags["TagKey"] #=> String
    #   resp.infrastructure_configuration_summary_list[0].tags #=> Hash
    #   resp.infrastructure_configuration_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurations AWS API Documentation
    #
    # @overload list_infrastructure_configurations(params = {})
    # @param [Hash] params ({})
    def list_infrastructure_configurations(params = {}, options = {})
      req = build_request(:list_infrastructure_configurations, params)
      req.send_request(options)
    end

    # Returns the list of tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Applies a policy to a component. We recommend that you call the RAM
    # API [CreateResourceShare][1] to share resources. If you call the Image
    # Builder API `PutComponentPolicy`, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2] in order for the resource
    # to be visible to all principals with whom the resource is shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy
    #   should be applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutComponentPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutComponentPolicyResponse#request_id #request_id} => String
    #   * {Types::PutComponentPolicyResponse#component_arn #component_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_component_policy({
    #     component_arn: "ComponentBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicy AWS API Documentation
    #
    # @overload put_component_policy(params = {})
    # @param [Hash] params ({})
    def put_component_policy(params = {}, options = {})
      req = build_request(:put_component_policy, params)
      req.send_request(options)
    end

    # Applies a policy to an image. We recommend that you call the RAM API
    # [CreateResourceShare][1] to share resources. If you call the Image
    # Builder API `PutImagePolicy`, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2] in order for the resource
    # to be visible to all principals with whom the resource is shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy should be
    #   applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutImagePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImagePolicyResponse#request_id #request_id} => String
    #   * {Types::PutImagePolicyResponse#image_arn #image_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_policy({
    #     image_arn: "ImageBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicy AWS API Documentation
    #
    # @overload put_image_policy(params = {})
    # @param [Hash] params ({})
    def put_image_policy(params = {}, options = {})
      req = build_request(:put_image_policy, params)
      req.send_request(options)
    end

    # Applies a policy to an image recipe. We recommend that you call the
    # RAM API [CreateResourceShare][1] to share resources. If you call the
    # Image Builder API `PutImageRecipePolicy`, you must also call the RAM
    # API [PromoteResourceShareCreatedFromPolicy][2] in order for the
    # resource to be visible to all principals with whom the resource is
    # shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   should be applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutImageRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::PutImageRecipePolicyResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_recipe_policy({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicy AWS API Documentation
    #
    # @overload put_image_recipe_policy(params = {})
    # @param [Hash] params ({})
    def put_image_recipe_policy(params = {}, options = {})
      req = build_request(:put_image_recipe_policy, params)
      req.send_request(options)
    end

    # Manually triggers a pipeline to create an image.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   manually invoke.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartImagePipelineExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImagePipelineExecutionResponse#request_id #request_id} => String
    #   * {Types::StartImagePipelineExecutionResponse#client_token #client_token} => String
    #   * {Types::StartImagePipelineExecutionResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_pipeline_execution({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecution AWS API Documentation
    #
    # @overload start_image_pipeline_execution(params = {})
    # @param [Hash] params ({})
    def start_image_pipeline_execution(params = {}, options = {})
      req = build_request(:start_image_pipeline_execution, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a new distribution configuration. Distribution configurations
    # define and configure the outputs of your pipeline.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   you want to update.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distributions of the distribution configuration.
    #
    # @option params [required, String] :client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateDistributionConfigurationResponse#client_token #client_token} => String
    #   * {Types::UpdateDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #       },
    #     ],
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfiguration AWS API Documentation
    #
    # @overload update_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def update_distribution_configuration(params = {}, options = {})
      req = build_request(:update_distribution_configuration, params)
      req.send_request(options)
    end

    # Updates a new image pipeline. Image pipelines enable you to automate
    # the creation and distribution of images.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   update.
    #
    # @option params [String] :description
    #   The description of the image pipeline.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images updated by this image pipeline.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images updated by this image pipeline.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   will be used to configure and distribute images updated by this image
    #   pipeline.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image test configuration of the image pipeline.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline.
    #
    # @option params [String] :status
    #   The status of the image pipeline.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::UpdateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::UpdateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #     },
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipeline AWS API Documentation
    #
    # @overload update_image_pipeline(params = {})
    # @param [Hash] params ({})
    def update_image_pipeline(params = {}, options = {})
      req = build_request(:update_image_pipeline, params)
      req.send_request(options)
    end

    # Updates a new infrastructure configuration. An infrastructure
    # configuration defines the environment in which your image will be
    # built and tested.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to update.
    #
    # @option params [String] :description
    #   The description of the infrastructure configuration.
    #
    # @option params [Array<String>] :instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The service
    #   will pick one of these instance types based on availability.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your EC2 AMI.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID to place the instance used to customize your EC2 AMI in.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. This can be used to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of your
    #   workflow fails.
    #
    # @option params [String] :sns_topic_arn
    #   The SNS topic on which to send image build events.
    #
    # @option params [required, String] :client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The tags attached to the resource created by Image Builder.
    #
    # @return [Types::UpdateInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateInfrastructureConfigurationResponse#client_token #client_token} => String
    #   * {Types::UpdateInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "NonEmptyString", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       },
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     client_token: "ClientToken", # required
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfiguration AWS API Documentation
    #
    # @overload update_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def update_infrastructure_configuration(params = {}, options = {})
      req = build_request(:update_infrastructure_configuration, params)
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
      context[:gem_name] = 'aws-sdk-imagebuilder'
      context[:gem_version] = '1.15.0'
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
