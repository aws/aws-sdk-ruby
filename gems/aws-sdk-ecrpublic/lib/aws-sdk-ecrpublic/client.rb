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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ecrpublic)

module Aws::ECRPublic
  # An API client for ECRPublic.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ECRPublic::Client.new(
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

    @identifier = :ecrpublic

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::ECRPublic::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::ECRPublic::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ECRPublic::EndpointParameters`
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

    # Checks the availability of one or more image layers that are within a
    # repository in a public registry. When an image is pushed to a
    # repository, each image layer is checked to verify if it has been
    # uploaded before. If it has been uploaded, then the image layer is
    # skipped.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, associated with
    #   the public registry that contains the image layers to check. If you do
    #   not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that's associated with the image layers to
    #   check.
    #
    # @option params [required, Array<String>] :layer_digests
    #   The digests of the image layers to check.
    #
    # @return [Types::BatchCheckLayerAvailabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCheckLayerAvailabilityResponse#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::BatchCheckLayerAvailabilityResponse#failures #failures} => Array&lt;Types::LayerFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_check_layer_availability({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     layer_digests: ["BatchedOperationLayerDigest"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layers #=> Array
    #   resp.layers[0].layer_digest #=> String
    #   resp.layers[0].layer_availability #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.layers[0].layer_size #=> Integer
    #   resp.layers[0].media_type #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].layer_digest #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidLayerDigest", "MissingLayerDigest"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchCheckLayerAvailability AWS API Documentation
    #
    # @overload batch_check_layer_availability(params = {})
    # @param [Hash] params ({})
    def batch_check_layer_availability(params = {}, options = {})
      req = build_request(:batch_check_layer_availability, params)
      req.send_request(options)
    end

    # Deletes a list of specified images that are within a repository in a
    # public registry. Images are specified with either an `imageTag` or
    # `imageDigest`.
    #
    # You can remove a tag from an image by specifying the image's tag in
    # your request. When you remove the last tag from an image, the image is
    # deleted from your repository.
    #
    # You can completely delete an image (and all of its tags) by specifying
    # the digest of the image in your request.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, that's
    #   associated with the registry that contains the image to delete. If you
    #   do not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository in a public registry that contains the image to delete.
    #
    # @option params [required, Array<Types::ImageIdentifier>] :image_ids
    #   A list of image ID references that correspond to images to delete. The
    #   format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #
    # @return [Types::BatchDeleteImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteImageResponse#image_ids #image_ids} => Array&lt;Types::ImageIdentifier&gt;
    #   * {Types::BatchDeleteImageResponse#failures #failures} => Array&lt;Types::ImageFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_image({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_ids #=> Array
    #   resp.image_ids[0].image_digest #=> String
    #   resp.image_ids[0].image_tag #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].image_id.image_digest #=> String
    #   resp.failures[0].image_id.image_tag #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchDeleteImage AWS API Documentation
    #
    # @overload batch_delete_image(params = {})
    # @param [Hash] params ({})
    def batch_delete_image(params = {}, options = {})
      req = build_request(:batch_delete_image, params)
      req.send_request(options)
    end

    # Informs Amazon ECR that the image layer upload is complete for a
    # specified public registry, repository name, and upload ID. You can
    # optionally provide a `sha256` digest of the image layer for data
    # validation purposes.
    #
    # When an image is pushed, the CompleteLayerUpload API is called once
    # for each new image layer to verify that the upload is complete.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, associated with
    #   the registry where layers are uploaded. If you do not specify a
    #   registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in a public registry to associate with the
    #   image layer.
    #
    # @option params [required, String] :upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the image layer.
    #
    # @option params [required, Array<String>] :layer_digests
    #   The `sha256` digest of the image layer.
    #
    # @return [Types::CompleteLayerUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompleteLayerUploadResponse#registry_id #registry_id} => String
    #   * {Types::CompleteLayerUploadResponse#repository_name #repository_name} => String
    #   * {Types::CompleteLayerUploadResponse#upload_id #upload_id} => String
    #   * {Types::CompleteLayerUploadResponse#layer_digest #layer_digest} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_layer_upload({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     layer_digests: ["LayerDigest"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.upload_id #=> String
    #   resp.layer_digest #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CompleteLayerUpload AWS API Documentation
    #
    # @overload complete_layer_upload(params = {})
    # @param [Hash] params ({})
    def complete_layer_upload(params = {}, options = {})
      req = build_request(:complete_layer_upload, params)
      req.send_request(options)
    end

    # Creates a repository in a public registry. For more information, see
    # [Amazon ECR repositories][1] in the *Amazon Elastic Container Registry
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
    #
    # @option params [required, String] :repository_name
    #   The name to use for the repository. This appears publicly in the
    #   Amazon ECR Public Gallery. The repository name can be specified on its
    #   own (for example `nginx-web-app`) or prepended with a namespace to
    #   group the repository into a category (for example
    #   `project-a/nginx-web-app`).
    #
    # @option params [Types::RepositoryCatalogDataInput] :catalog_data
    #   The details about the repository that are publicly visible in the
    #   Amazon ECR Public Gallery.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to each repository to help categorize and
    #   organize your repositories. Each tag consists of a key and an optional
    #   value. You define both of them. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length of
    #   256 characters.
    #
    # @return [Types::CreateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryResponse#repository #repository} => Types::Repository
    #   * {Types::CreateRepositoryResponse#catalog_data #catalog_data} => Types::RepositoryCatalogData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     repository_name: "RepositoryName", # required
    #     catalog_data: {
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_image_blob: "data",
    #       about_text: "AboutText",
    #       usage_text: "UsageText",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.repository_arn #=> String
    #   resp.repository.registry_id #=> String
    #   resp.repository.repository_name #=> String
    #   resp.repository.repository_uri #=> String
    #   resp.repository.created_at #=> Time
    #   resp.catalog_data.description #=> String
    #   resp.catalog_data.architectures #=> Array
    #   resp.catalog_data.architectures[0] #=> String
    #   resp.catalog_data.operating_systems #=> Array
    #   resp.catalog_data.operating_systems[0] #=> String
    #   resp.catalog_data.logo_url #=> String
    #   resp.catalog_data.about_text #=> String
    #   resp.catalog_data.usage_text #=> String
    #   resp.catalog_data.marketplace_certified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Deletes a repository in a public registry. If the repository contains
    # images, you must either manually delete all images in the repository
    # or use the `force` option. This option deletes all images on your
    # behalf before deleting the repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry that contains the repository to delete. If you do not specify
    #   a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to delete.
    #
    # @option params [Boolean] :force
    #   The force option can be used to delete a repository that contains
    #   images. If the force option is not used, the repository must be empty
    #   prior to deletion.
    #
    # @return [Types::DeleteRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryResponse#repository #repository} => Types::Repository
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.repository_arn #=> String
    #   resp.repository.registry_id #=> String
    #   resp.repository.repository_name #=> String
    #   resp.repository.repository_uri #=> String
    #   resp.repository.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Deletes the repository policy that's associated with the specified
    # repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry that contains the repository policy to delete. If you do not
    #   specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that's associated with the repository
    #   policy to delete.
    #
    # @return [Types::DeleteRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::DeleteRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepositoryPolicy AWS API Documentation
    #
    # @overload delete_repository_policy(params = {})
    # @param [Hash] params ({})
    def delete_repository_policy(params = {}, options = {})
      req = build_request(:delete_repository_policy, params)
      req.send_request(options)
    end

    # Returns the image tag details for a repository in a public registry.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry that contains the repository where images are described. If
    #   you do not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the image tag details to
    #   describe.
    #
    # @option params [String] :next_token
    #   The `nextToken` value that's returned from a previous paginated
    #   `DescribeImageTags` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. If there are no more results to return, this value is `null`.
    #   If you specify images with `imageIds`, you can't use this option.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results that's returned by
    #   `DescribeImageTags` in paginated output. When this parameter is used,
    #   `DescribeImageTags` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `DescribeImageTags`
    #   request with the returned `nextToken` value. This value can be between
    #   1 and 1000. If this parameter isn't used, then `DescribeImageTags`
    #   returns up to 100 results and a `nextToken` value, if applicable. If
    #   you specify images with `imageIds`, you can't use this option.
    #
    # @return [Types::DescribeImageTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageTagsResponse#image_tag_details #image_tag_details} => Array&lt;Types::ImageTagDetail&gt;
    #   * {Types::DescribeImageTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_tags({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_tag_details #=> Array
    #   resp.image_tag_details[0].image_tag #=> String
    #   resp.image_tag_details[0].created_at #=> Time
    #   resp.image_tag_details[0].image_detail.image_digest #=> String
    #   resp.image_tag_details[0].image_detail.image_size_in_bytes #=> Integer
    #   resp.image_tag_details[0].image_detail.image_pushed_at #=> Time
    #   resp.image_tag_details[0].image_detail.image_manifest_media_type #=> String
    #   resp.image_tag_details[0].image_detail.artifact_media_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImageTags AWS API Documentation
    #
    # @overload describe_image_tags(params = {})
    # @param [Hash] params ({})
    def describe_image_tags(params = {}, options = {})
      req = build_request(:describe_image_tags, params)
      req.send_request(options)
    end

    # Returns metadata that's related to the images in a repository in a
    # public registry.
    #
    # <note markdown="1"> Beginning with Docker version 1.9, the Docker client compresses image
    # layers before pushing them to a V2 Docker registry. The output of the
    # `docker images` command shows the uncompressed image size. Therefore,
    # it might return a larger image size than the image sizes that are
    # returned by DescribeImages.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry that contains the repository where images are described. If
    #   you do not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the images to describe.
    #
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   The list of image IDs for the requested repository.
    #
    # @option params [String] :next_token
    #   The `nextToken` value that's returned from a previous paginated
    #   `DescribeImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value. If
    #   there are no more results to return, this value is `null`. If you
    #   specify images with `imageIds`, you can't use this option.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results that's returned by
    #   `DescribeImages` in paginated output. When this parameter is used,
    #   `DescribeImages` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `DescribeImages`
    #   request with the returned `nextToken` value. This value can be between
    #   1 and 1000. If this parameter isn't used, then `DescribeImages`
    #   returns up to 100 results and a `nextToken` value, if applicable. If
    #   you specify images with `imageIds`, you can't use this option.
    #
    # @return [Types::DescribeImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResponse#image_details #image_details} => Array&lt;Types::ImageDetail&gt;
    #   * {Types::DescribeImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_details #=> Array
    #   resp.image_details[0].registry_id #=> String
    #   resp.image_details[0].repository_name #=> String
    #   resp.image_details[0].image_digest #=> String
    #   resp.image_details[0].image_tags #=> Array
    #   resp.image_details[0].image_tags[0] #=> String
    #   resp.image_details[0].image_size_in_bytes #=> Integer
    #   resp.image_details[0].image_pushed_at #=> Time
    #   resp.image_details[0].image_manifest_media_type #=> String
    #   resp.image_details[0].artifact_media_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Returns details for a public registry.
    #
    # @option params [String] :next_token
    #   The `nextToken` value that's returned from a previous paginated
    #   `DescribeRegistries` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. If there are no more results to return, this value is `null`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results that's returned by
    #   `DescribeRegistries` in paginated output. When this parameter is used,
    #   `DescribeRegistries` only returns `maxResults` results in a single
    #   page along with a `nextToken` response element. The remaining results
    #   of the initial request can be seen by sending another
    #   `DescribeRegistries` request with the returned `nextToken` value. This
    #   value can be between 1 and 1000. If this parameter isn't used, then
    #   `DescribeRegistries` returns up to 100 results and a `nextToken`
    #   value, if applicable.
    #
    # @return [Types::DescribeRegistriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistriesResponse#registries #registries} => Array&lt;Types::Registry&gt;
    #   * {Types::DescribeRegistriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registries({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registries #=> Array
    #   resp.registries[0].registry_id #=> String
    #   resp.registries[0].registry_arn #=> String
    #   resp.registries[0].registry_uri #=> String
    #   resp.registries[0].verified #=> Boolean
    #   resp.registries[0].aliases #=> Array
    #   resp.registries[0].aliases[0].name #=> String
    #   resp.registries[0].aliases[0].status #=> String, one of "ACTIVE", "PENDING", "REJECTED"
    #   resp.registries[0].aliases[0].primary_registry_alias #=> Boolean
    #   resp.registries[0].aliases[0].default_registry_alias #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRegistries AWS API Documentation
    #
    # @overload describe_registries(params = {})
    # @param [Hash] params ({})
    def describe_registries(params = {}, options = {})
      req = build_request(:describe_registries, params)
      req.send_request(options)
    end

    # Describes repositories that are in a public registry.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the
    #   registry that contains the repositories to be described. If you do not
    #   specify a registry, the default public registry is assumed.
    #
    # @option params [Array<String>] :repository_names
    #   A list of repositories to describe. If this parameter is omitted, then
    #   all repositories in a registry are described.
    #
    # @option params [String] :next_token
    #   The `nextToken` value that's returned from a previous paginated
    #   `DescribeRepositories` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. If there are no more results to return, this value is `null`.
    #   If you specify repositories with `repositoryNames`, you can't use
    #   this option.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results that's returned by
    #   `DescribeRepositories` in paginated output. When this parameter is
    #   used, `DescribeRepositories` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. You can see the
    #   remaining results of the initial request by sending another
    #   `DescribeRepositories` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter isn't used,
    #   then `DescribeRepositories` returns up to 100 results and a
    #   `nextToken` value, if applicable. If you specify repositories with
    #   `repositoryNames`, you can't use this option.
    #
    # @return [Types::DescribeRepositoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoriesResponse#repositories #repositories} => Array&lt;Types::Repository&gt;
    #   * {Types::DescribeRepositoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repositories({
    #     registry_id: "RegistryId",
    #     repository_names: ["RepositoryName"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].repository_arn #=> String
    #   resp.repositories[0].registry_id #=> String
    #   resp.repositories[0].repository_name #=> String
    #   resp.repositories[0].repository_uri #=> String
    #   resp.repositories[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRepositories AWS API Documentation
    #
    # @overload describe_repositories(params = {})
    # @param [Hash] params ({})
    def describe_repositories(params = {}, options = {})
      req = build_request(:describe_repositories, params)
      req.send_request(options)
    end

    # Retrieves an authorization token. An authorization token represents
    # your IAM authentication credentials. You can use it to access any
    # Amazon ECR registry that your IAM principal has access to. The
    # authorization token is valid for 12 hours. This API requires the
    # `ecr-public:GetAuthorizationToken` and `sts:GetServiceBearerToken`
    # permissions.
    #
    # @return [Types::GetAuthorizationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizationTokenResponse#authorization_data #authorization_data} => Types::AuthorizationData
    #
    # @example Response structure
    #
    #   resp.authorization_data.authorization_token #=> String
    #   resp.authorization_data.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetAuthorizationToken AWS API Documentation
    #
    # @overload get_authorization_token(params = {})
    # @param [Hash] params ({})
    def get_authorization_token(params = {}, options = {})
      req = build_request(:get_authorization_token, params)
      req.send_request(options)
    end

    # Retrieves catalog metadata for a public registry.
    #
    # @return [Types::GetRegistryCatalogDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryCatalogDataResponse#registry_catalog_data #registry_catalog_data} => Types::RegistryCatalogData
    #
    # @example Response structure
    #
    #   resp.registry_catalog_data.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRegistryCatalogData AWS API Documentation
    #
    # @overload get_registry_catalog_data(params = {})
    # @param [Hash] params ({})
    def get_registry_catalog_data(params = {}, options = {})
      req = build_request(:get_registry_catalog_data, params)
      req.send_request(options)
    end

    # Retrieve catalog metadata for a repository in a public registry. This
    # metadata is displayed publicly in the Amazon ECR Public Gallery.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the
    #   registry that contains the repositories to be described. If you do not
    #   specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to retrieve the catalog metadata for.
    #
    # @return [Types::GetRepositoryCatalogDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryCatalogDataResponse#catalog_data #catalog_data} => Types::RepositoryCatalogData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_catalog_data({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog_data.description #=> String
    #   resp.catalog_data.architectures #=> Array
    #   resp.catalog_data.architectures[0] #=> String
    #   resp.catalog_data.operating_systems #=> Array
    #   resp.catalog_data.operating_systems[0] #=> String
    #   resp.catalog_data.logo_url #=> String
    #   resp.catalog_data.about_text #=> String
    #   resp.catalog_data.usage_text #=> String
    #   resp.catalog_data.marketplace_certified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryCatalogData AWS API Documentation
    #
    # @overload get_repository_catalog_data(params = {})
    # @param [Hash] params ({})
    def get_repository_catalog_data(params = {}, options = {})
      req = build_request(:get_repository_catalog_data, params)
      req.send_request(options)
    end

    # Retrieves the repository policy for the specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry that contains the repository. If you do not specify a
    #   registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository with the policy to retrieve.
    #
    # @return [Types::GetRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::GetRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::GetRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryPolicy AWS API Documentation
    #
    # @overload get_repository_policy(params = {})
    # @param [Hash] params ({})
    def get_repository_policy(params = {}, options = {})
      req = build_request(:get_repository_policy, params)
      req.send_request(options)
    end

    # Notifies Amazon ECR that you intend to upload an image layer.
    #
    # When an image is pushed, the InitiateLayerUpload API is called once
    # for each image layer that hasn't already been uploaded. Whether an
    # image layer uploads is determined by the BatchCheckLayerAvailability
    # API action.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, that's
    #   associated with the registry to which you intend to upload layers. If
    #   you do not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that you want to upload layers to.
    #
    # @return [Types::InitiateLayerUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateLayerUploadResponse#upload_id #upload_id} => String
    #   * {Types::InitiateLayerUploadResponse#part_size #part_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_layer_upload({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #   resp.part_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InitiateLayerUpload AWS API Documentation
    #
    # @overload initiate_layer_upload(params = {})
    # @param [Hash] params ({})
    def initiate_layer_upload(params = {}, options = {})
      req = build_request(:initiate_layer_upload, params)
      req.send_request(options)
    end

    # List the tags for an Amazon ECR Public resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resource is an Amazon ECR
    #   Public repository.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the image manifest and tags that are associated
    # with an image.
    #
    # When an image is pushed and all new image layers have been uploaded,
    # the PutImage API is called once to create or update the image manifest
    # and the tags that are associated with the image.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, that's
    #   associated with the public registry that contains the repository where
    #   the image is put. If you do not specify a registry, the default public
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the image is put.
    #
    # @option params [required, String] :image_manifest
    #   The image manifest that corresponds to the image to be uploaded.
    #
    # @option params [String] :image_manifest_media_type
    #   The media type of the image manifest. If you push an image manifest
    #   that doesn't contain the `mediaType` field, you must specify the
    #   `imageManifestMediaType` in the request.
    #
    # @option params [String] :image_tag
    #   The tag to associate with the image. This parameter is required for
    #   images that use the Docker Image Manifest V2 Schema 2 or Open
    #   Container Initiative (OCI) formats.
    #
    # @option params [String] :image_digest
    #   The image digest of the image manifest that corresponds to the image.
    #
    # @return [Types::PutImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageResponse#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     image_manifest: "ImageManifest", # required
    #     image_manifest_media_type: "MediaType",
    #     image_tag: "ImageTag",
    #     image_digest: "ImageDigest",
    #   })
    #
    # @example Response structure
    #
    #   resp.image.registry_id #=> String
    #   resp.image.repository_name #=> String
    #   resp.image.image_id.image_digest #=> String
    #   resp.image.image_id.image_tag #=> String
    #   resp.image.image_manifest #=> String
    #   resp.image.image_manifest_media_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutImage AWS API Documentation
    #
    # @overload put_image(params = {})
    # @param [Hash] params ({})
    def put_image(params = {}, options = {})
      req = build_request(:put_image, params)
      req.send_request(options)
    end

    # Create or update the catalog data for a public registry.
    #
    # @option params [String] :display_name
    #   The display name for a public registry. The display name is shown as
    #   the repository author in the Amazon ECR Public Gallery.
    #
    #   <note markdown="1"> The registry display name is only publicly visible in the Amazon ECR
    #   Public Gallery for verified accounts.
    #
    #    </note>
    #
    # @return [Types::PutRegistryCatalogDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRegistryCatalogDataResponse#registry_catalog_data #registry_catalog_data} => Types::RegistryCatalogData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_catalog_data({
    #     display_name: "RegistryDisplayName",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_catalog_data.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRegistryCatalogData AWS API Documentation
    #
    # @overload put_registry_catalog_data(params = {})
    # @param [Hash] params ({})
    def put_registry_catalog_data(params = {}, options = {})
      req = build_request(:put_registry_catalog_data, params)
      req.send_request(options)
    end

    # Creates or updates the catalog data for a repository in a public
    # registry.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the public
    #   registry the repository is in. If you do not specify a registry, the
    #   default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to create or update the catalog data for.
    #
    # @option params [required, Types::RepositoryCatalogDataInput] :catalog_data
    #   An object containing the catalog data for a repository. This data is
    #   publicly visible in the Amazon ECR Public Gallery.
    #
    # @return [Types::PutRepositoryCatalogDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRepositoryCatalogDataResponse#catalog_data #catalog_data} => Types::RepositoryCatalogData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_catalog_data({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     catalog_data: { # required
    #       description: "RepositoryDescription",
    #       architectures: ["Architecture"],
    #       operating_systems: ["OperatingSystem"],
    #       logo_image_blob: "data",
    #       about_text: "AboutText",
    #       usage_text: "UsageText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog_data.description #=> String
    #   resp.catalog_data.architectures #=> Array
    #   resp.catalog_data.architectures[0] #=> String
    #   resp.catalog_data.operating_systems #=> Array
    #   resp.catalog_data.operating_systems[0] #=> String
    #   resp.catalog_data.logo_url #=> String
    #   resp.catalog_data.about_text #=> String
    #   resp.catalog_data.usage_text #=> String
    #   resp.catalog_data.marketplace_certified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRepositoryCatalogData AWS API Documentation
    #
    # @overload put_repository_catalog_data(params = {})
    # @param [Hash] params ({})
    def put_repository_catalog_data(params = {}, options = {})
      req = build_request(:put_repository_catalog_data, params)
      req.send_request(options)
    end

    # Applies a repository policy to the specified public repository to
    # control access permissions. For more information, see [Amazon ECR
    # Repository Policies][1] in the *Amazon Elastic Container Registry User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID that's associated with the
    #   registry that contains the repository. If you do not specify a
    #   registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to receive the policy.
    #
    # @option params [required, String] :policy_text
    #   The JSON repository policy text to apply to the repository. For more
    #   information, see [Amazon ECR Repository Policies][1] in the *Amazon
    #   Elastic Container Registry User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html
    #
    # @option params [Boolean] :force
    #   If the policy that you want to set on a repository policy would
    #   prevent you from setting another policy in the future, you must force
    #   the SetRepositoryPolicy operation. This prevents accidental repository
    #   lockouts.
    #
    # @return [Types::SetRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::SetRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::SetRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     policy_text: "RepositoryPolicyText", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/SetRepositoryPolicy AWS API Documentation
    #
    # @overload set_repository_policy(params = {})
    # @param [Hash] params ({})
    def set_repository_policy(params = {}, options = {})
      req = build_request(:set_repository_policy, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource aren't specified in the
    # request parameters, they aren't changed. When a resource is deleted,
    # the tags associated with that resource are also deleted.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   Currently, the supported resource is an Amazon ECR Public repository.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #   Tag keys can have a maximum character length of 128 characters, and
    #   tag values can have a maximum length of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   Currently, the supported resource is an Amazon ECR Public repository.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Uploads an image layer part to Amazon ECR.
    #
    # When an image is pushed, each new image layer is uploaded in parts.
    # The maximum size of each image layer part can be 20971520 bytes (about
    # 20MB). The UploadLayerPart API is called once for each new image layer
    # part.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID, or registry alias, that's
    #   associated with the registry that you're uploading layer parts to. If
    #   you do not specify a registry, the default public registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that you're uploading layer parts to.
    #
    # @option params [required, String] :upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the layer part upload.
    #
    # @option params [required, Integer] :part_first_byte
    #   The position of the first byte of the layer part witin the overall
    #   image layer.
    #
    # @option params [required, Integer] :part_last_byte
    #   The position of the last byte of the layer part within the overall
    #   image layer.
    #
    # @option params [required, String, StringIO, File] :layer_part_blob
    #   The base64-encoded layer part payload.
    #
    # @return [Types::UploadLayerPartResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadLayerPartResponse#registry_id #registry_id} => String
    #   * {Types::UploadLayerPartResponse#repository_name #repository_name} => String
    #   * {Types::UploadLayerPartResponse#upload_id #upload_id} => String
    #   * {Types::UploadLayerPartResponse#last_byte_received #last_byte_received} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_layer_part({
    #     registry_id: "RegistryIdOrAlias",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     part_first_byte: 1, # required
    #     part_last_byte: 1, # required
    #     layer_part_blob: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.upload_id #=> String
    #   resp.last_byte_received #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UploadLayerPart AWS API Documentation
    #
    # @overload upload_layer_part(params = {})
    # @param [Hash] params ({})
    def upload_layer_part(params = {}, options = {})
      req = build_request(:upload_layer_part, params)
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
      context[:gem_name] = 'aws-sdk-ecrpublic'
      context[:gem_version] = '1.21.0'
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
