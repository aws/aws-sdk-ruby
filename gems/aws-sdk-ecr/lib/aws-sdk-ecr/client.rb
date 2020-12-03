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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ecr)

module Aws::ECR
  # An API client for ECR.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ECR::Client.new(
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

    @identifier = :ecr

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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

    # Checks the availability of one or more image layers in a repository.
    #
    # When an image is pushed to a repository, each image layer is checked
    # to verify if it has been uploaded before. If it has been uploaded,
    # then the image layer is skipped.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image layers to check. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the image layers to
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
    #     registry_id: "RegistryId",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchCheckLayerAvailability AWS API Documentation
    #
    # @overload batch_check_layer_availability(params = {})
    # @param [Hash] params ({})
    def batch_check_layer_availability(params = {}, options = {})
      req = build_request(:batch_check_layer_availability, params)
      req.send_request(options)
    end

    # Deletes a list of specified images within a repository. Images are
    # specified with either an `imageTag` or `imageDigest`.
    #
    # You can remove a tag from an image by specifying the image's tag in
    # your request. When you remove the last tag from an image, the image is
    # deleted from your repository.
    #
    # You can completely delete an image (and all of its tags) by specifying
    # the image's digest in your request.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image to delete. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the image to delete.
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
    #
    # @example Example: To delete multiple images
    #
    #   # This example deletes images with the tags precise and trusty in a repository called ubuntu in the default registry for
    #   # an account.
    #
    #   resp = client.batch_delete_image({
    #     image_ids: [
    #       {
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     image_ids: [
    #       {
    #         image_digest: "sha256:examplee6d1e504117a17000003d3753086354a38375961f2e665416ef4b1b2f", 
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_image({
    #     registry_id: "RegistryId",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchDeleteImage AWS API Documentation
    #
    # @overload batch_delete_image(params = {})
    # @param [Hash] params ({})
    def batch_delete_image(params = {}, options = {})
      req = build_request(:batch_delete_image, params)
      req.send_request(options)
    end

    # Gets detailed information for an image. Images are specified with
    # either an `imageTag` or `imageDigest`.
    #
    # When an image is pulled, the BatchGetImage API is called once to
    # retrieve the image manifest.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   images to describe. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the images to describe.
    #
    # @option params [required, Array<Types::ImageIdentifier>] :image_ids
    #   A list of image ID references that correspond to images to describe.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #
    # @option params [Array<String>] :accepted_media_types
    #   The accepted media types for the request.
    #
    #   Valid values: `application/vnd.docker.distribution.manifest.v1+json`
    #   \| `application/vnd.docker.distribution.manifest.v2+json` \|
    #   `application/vnd.oci.image.manifest.v1+json`
    #
    # @return [Types::BatchGetImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetImageResponse#images #images} => Array&lt;Types::Image&gt;
    #   * {Types::BatchGetImageResponse#failures #failures} => Array&lt;Types::ImageFailure&gt;
    #
    #
    # @example Example: To obtain multiple images in a single request
    #
    #   # This example obtains information for an image with a specified image digest ID from the repository named ubuntu in the
    #   # current account.
    #
    #   resp = client.batch_get_image({
    #     image_ids: [
    #       {
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     images: [
    #       {
    #         image_id: {
    #           image_digest: "sha256:example76bdff6d83a09ba2a818f0d00000063724a9ac3ba5019c56f74ebf42a", 
    #           image_tag: "precise", 
    #         }, 
    #         image_manifest: "{\n \"schemaVersion\": 1,\n \"name\": \"ubuntu\",\n \"tag\": \"precise\",\n...", 
    #         registry_id: "244698725403", 
    #         repository_name: "ubuntu", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_image({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #     accepted_media_types: ["MediaType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].registry_id #=> String
    #   resp.images[0].repository_name #=> String
    #   resp.images[0].image_id.image_digest #=> String
    #   resp.images[0].image_id.image_tag #=> String
    #   resp.images[0].image_manifest #=> String
    #   resp.images[0].image_manifest_media_type #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].image_id.image_digest #=> String
    #   resp.failures[0].image_id.image_tag #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetImage AWS API Documentation
    #
    # @overload batch_get_image(params = {})
    # @param [Hash] params ({})
    def batch_get_image(params = {}, options = {})
      req = build_request(:batch_get_image, params)
      req.send_request(options)
    end

    # Informs Amazon ECR that the image layer upload has completed for a
    # specified registry, repository name, and upload ID. You can optionally
    # provide a `sha256` digest of the image layer for data validation
    # purposes.
    #
    # When an image is pushed, the CompleteLayerUpload API is called once
    # per each new image layer to verify that the upload has completed.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry to which to upload
    #   layers. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to associate with the image layer.
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
    #     registry_id: "RegistryId",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CompleteLayerUpload AWS API Documentation
    #
    # @overload complete_layer_upload(params = {})
    # @param [Hash] params ({})
    def complete_layer_upload(params = {}, options = {})
      req = build_request(:complete_layer_upload, params)
      req.send_request(options)
    end

    # Creates a repository. For more information, see [Amazon ECR
    # Repositories][1] in the *Amazon Elastic Container Registry User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
    #
    # @option params [required, String] :repository_name
    #   The name to use for the repository. The repository name may be
    #   specified on its own (such as `nginx-web-app`) or it can be prepended
    #   with a namespace to group the repository into a category (such as
    #   `project-a/nginx-web-app`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the repository to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
    #   both of which you define. Tag keys can have a maximum character length
    #   of 128 characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @option params [String] :image_tag_mutability
    #   The tag mutability setting for the repository. If this parameter is
    #   omitted, the default setting of `MUTABLE` will be used which will
    #   allow image tags to be overwritten. If `IMMUTABLE` is specified, all
    #   image tags within the repository will be immutable which will prevent
    #   them from being overwritten.
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   The image scanning configuration for the repository. This determines
    #   whether images are scanned for known vulnerabilities after being
    #   pushed to the repository.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration for the repository. This determines how
    #   the contents of your repository are encrypted at rest.
    #
    # @return [Types::CreateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryResponse#repository #repository} => Types::Repository
    #
    #
    # @example Example: To create a new repository
    #
    #   # This example creates a repository called nginx-web-app inside the project-a namespace in the default registry for an
    #   # account.
    #
    #   resp = client.create_repository({
    #     repository_name: "project-a/nginx-web-app", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repository: {
    #       registry_id: "012345678901", 
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/project-a/nginx-web-app", 
    #       repository_name: "project-a/nginx-web-app", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     repository_name: "RepositoryName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     image_tag_mutability: "MUTABLE", # accepts MUTABLE, IMMUTABLE
    #     image_scanning_configuration: {
    #       scan_on_push: false,
    #     },
    #     encryption_configuration: {
    #       encryption_type: "AES256", # required, accepts AES256, KMS
    #       kms_key: "KmsKey",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.repository_arn #=> String
    #   resp.repository.registry_id #=> String
    #   resp.repository.repository_name #=> String
    #   resp.repository.repository_uri #=> String
    #   resp.repository.created_at #=> Time
    #   resp.repository.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE"
    #   resp.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repository.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS"
    #   resp.repository.encryption_configuration.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Deletes the lifecycle policy associated with the specified repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @return [Types::DeleteLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::DeleteLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::DeleteLifecyclePolicyResponse#last_evaluated_at #last_evaluated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.last_evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes a repository. If the repository contains images, you must
    # either delete all images in the repository or use the `force` option
    # to delete the repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository to delete. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to delete.
    #
    # @option params [Boolean] :force
    #   If a repository contains images, forces the deletion.
    #
    # @return [Types::DeleteRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryResponse#repository #repository} => Types::Repository
    #
    #
    # @example Example: To force delete a repository
    #
    #   # This example force deletes a repository named ubuntu in the default registry for an account. The force parameter is
    #   # required if the repository contains images.
    #
    #   resp = client.delete_repository({
    #     force: true, 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repository: {
    #       registry_id: "012345678901", 
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/ubuntu", 
    #       repository_name: "ubuntu", 
    #     }, 
    #   }
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
    #   resp.repository.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE"
    #   resp.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repository.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS"
    #   resp.repository.encryption_configuration.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Deletes the repository policy associated with the specified
    # repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository policy to delete. If you do not specify a registry, the
    #   default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the repository
    #   policy to delete.
    #
    # @return [Types::DeleteRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::DeleteRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    #
    # @example Example: To delete the policy associated with a repository
    #
    #   # This example deletes the policy associated with the repository named ubuntu in the current account.
    #
    #   resp = client.delete_repository_policy({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_text: "{ ... }", 
    #     registry_id: "012345678901", 
    #     repository_name: "ubuntu", 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryPolicy AWS API Documentation
    #
    # @overload delete_repository_policy(params = {})
    # @param [Hash] params ({})
    def delete_repository_policy(params = {}, options = {})
      req = build_request(:delete_repository_policy, params)
      req.send_request(options)
    end

    # Returns the scan findings for the specified image.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to describe the image scan findings for. If you do
    #   not specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository for the image for which to describe the scan findings.
    #
    # @option params [required, Types::ImageIdentifier] :image_id
    #   An object with identifying information for an Amazon ECR image.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImageScanFindings` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is null when there are no more results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of image scan results returned by
    #   `DescribeImageScanFindings` in paginated output. When this parameter
    #   is used, `DescribeImageScanFindings` only returns `maxResults` results
    #   in a single page along with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `DescribeImageScanFindings` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `DescribeImageScanFindings` returns up to
    #   100 results and a `nextToken` value, if applicable.
    #
    # @return [Types::DescribeImageScanFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageScanFindingsResponse#registry_id #registry_id} => String
    #   * {Types::DescribeImageScanFindingsResponse#repository_name #repository_name} => String
    #   * {Types::DescribeImageScanFindingsResponse#image_id #image_id} => Types::ImageIdentifier
    #   * {Types::DescribeImageScanFindingsResponse#image_scan_status #image_scan_status} => Types::ImageScanStatus
    #   * {Types::DescribeImageScanFindingsResponse#image_scan_findings #image_scan_findings} => Types::ImageScanFindings
    #   * {Types::DescribeImageScanFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_scan_findings({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_id.image_digest #=> String
    #   resp.image_id.image_tag #=> String
    #   resp.image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.image_scan_status.description #=> String
    #   resp.image_scan_findings.image_scan_completed_at #=> Time
    #   resp.image_scan_findings.vulnerability_source_updated_at #=> Time
    #   resp.image_scan_findings.findings #=> Array
    #   resp.image_scan_findings.findings[0].name #=> String
    #   resp.image_scan_findings.findings[0].description #=> String
    #   resp.image_scan_findings.findings[0].uri #=> String
    #   resp.image_scan_findings.findings[0].severity #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNDEFINED"
    #   resp.image_scan_findings.findings[0].attributes #=> Array
    #   resp.image_scan_findings.findings[0].attributes[0].key #=> String
    #   resp.image_scan_findings.findings[0].attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.image_scan_findings.finding_severity_counts #=> Hash
    #   resp.image_scan_findings.finding_severity_counts["FindingSeverity"] #=> Integer
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * image_scan_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageScanFindings AWS API Documentation
    #
    # @overload describe_image_scan_findings(params = {})
    # @param [Hash] params ({})
    def describe_image_scan_findings(params = {}, options = {})
      req = build_request(:describe_image_scan_findings, params)
      req.send_request(options)
    end

    # Returns metadata about the images in a repository.
    #
    # <note markdown="1"> Beginning with Docker version 1.9, the Docker client compresses image
    # layers before pushing them to a V2 Docker registry. The output of the
    # `docker images` command shows the uncompressed image size, so it may
    # return a larger image size than the image sizes returned by
    # DescribeImages.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to describe images. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the images to describe.
    #
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   The list of image IDs for the requested repository.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value. This
    #   value is `null` when there are no more results to return. This option
    #   cannot be used when you specify images with `imageIds`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by `DescribeImages`
    #   in paginated output. When this parameter is used, `DescribeImages`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeImages` request with
    #   the returned `nextToken` value. This value can be between 1 and 1000.
    #   If this parameter is not used, then `DescribeImages` returns up to 100
    #   results and a `nextToken` value, if applicable. This option cannot be
    #   used when you specify images with `imageIds`.
    #
    # @option params [Types::DescribeImagesFilter] :filter
    #   The filter key and value with which to filter your `DescribeImages`
    #   results.
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
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
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
    #   resp.image_details[0].image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.image_details[0].image_scan_status.description #=> String
    #   resp.image_details[0].image_scan_findings_summary.image_scan_completed_at #=> Time
    #   resp.image_details[0].image_scan_findings_summary.vulnerability_source_updated_at #=> Time
    #   resp.image_details[0].image_scan_findings_summary.finding_severity_counts #=> Hash
    #   resp.image_details[0].image_scan_findings_summary.finding_severity_counts["FindingSeverity"] #=> Integer
    #   resp.image_details[0].image_manifest_media_type #=> String
    #   resp.image_details[0].artifact_media_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Describes image repositories in a registry.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repositories to be described. If you do not specify a registry, the
    #   default registry is assumed.
    #
    # @option params [Array<String>] :repository_names
    #   A list of repositories to describe. If this parameter is omitted, then
    #   all repositories in a registry are described.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRepositories` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to return.
    #   This option cannot be used when you specify repositories with
    #   `repositoryNames`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by
    #   `DescribeRepositories` in paginated output. When this parameter is
    #   used, `DescribeRepositories` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeRepositories` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter is not used,
    #   then `DescribeRepositories` returns up to 100 results and a
    #   `nextToken` value, if applicable. This option cannot be used when you
    #   specify repositories with `repositoryNames`.
    #
    # @return [Types::DescribeRepositoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoriesResponse#repositories #repositories} => Array&lt;Types::Repository&gt;
    #   * {Types::DescribeRepositoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe all repositories in the current account
    #
    #   # The following example obtains a list and description of all repositories in the default registry to which the current
    #   # user has access.
    #
    #   resp = client.describe_repositories({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repositories: [
    #       {
    #         registry_id: "012345678910", 
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/ubuntu", 
    #         repository_name: "ubuntu", 
    #       }, 
    #       {
    #         registry_id: "012345678910", 
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/test", 
    #         repository_name: "test", 
    #       }, 
    #     ], 
    #   }
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
    #   resp.repositories[0].image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE"
    #   resp.repositories[0].image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repositories[0].encryption_configuration.encryption_type #=> String, one of "AES256", "KMS"
    #   resp.repositories[0].encryption_configuration.kms_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositories AWS API Documentation
    #
    # @overload describe_repositories(params = {})
    # @param [Hash] params ({})
    def describe_repositories(params = {}, options = {})
      req = build_request(:describe_repositories, params)
      req.send_request(options)
    end

    # Retrieves an authorization token. An authorization token represents
    # your IAM authentication credentials and can be used to access any
    # Amazon ECR registry that your IAM principal has access to. The
    # authorization token is valid for 12 hours.
    #
    # The `authorizationToken` returned is a base64 encoded string that can
    # be decoded and used in a `docker login` command to authenticate to a
    # registry. The AWS CLI offers an `get-login-password` command that
    # simplifies the login process. For more information, see [Registry
    # Authentication][1] in the *Amazon Elastic Container Registry User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth
    #
    # @option params [Array<String>] :registry_ids
    #   A list of AWS account IDs that are associated with the registries for
    #   which to get AuthorizationData objects. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @return [Types::GetAuthorizationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizationTokenResponse#authorization_data #authorization_data} => Array&lt;Types::AuthorizationData&gt;
    #
    #
    # @example Example: To obtain an authorization token
    #
    #   # This example gets an authorization token for your default registry.
    #
    #   resp = client.get_authorization_token({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     authorization_data: [
    #       {
    #         authorization_token: "QVdTOkN...", 
    #         expires_at: Time.parse("1470951892432"), 
    #         proxy_endpoint: "https://012345678901.dkr.ecr.us-west-2.amazonaws.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token({
    #     registry_ids: ["RegistryId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_data #=> Array
    #   resp.authorization_data[0].authorization_token #=> String
    #   resp.authorization_data[0].expires_at #=> Time
    #   resp.authorization_data[0].proxy_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAuthorizationToken AWS API Documentation
    #
    # @overload get_authorization_token(params = {})
    # @param [Hash] params ({})
    def get_authorization_token(params = {}, options = {})
      req = build_request(:get_authorization_token, params)
      req.send_request(options)
    end

    # Retrieves the pre-signed Amazon S3 download URL corresponding to an
    # image layer. You can only get URLs for image layers that are
    # referenced in an image.
    #
    # When an image is pulled, the GetDownloadUrlForLayer API is called once
    # per image layer that is not already cached.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image layer to download. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the image layer to
    #   download.
    #
    # @option params [required, String] :layer_digest
    #   The digest of the image layer to download.
    #
    # @return [Types::GetDownloadUrlForLayerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDownloadUrlForLayerResponse#download_url #download_url} => String
    #   * {Types::GetDownloadUrlForLayerResponse#layer_digest #layer_digest} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_download_url_for_layer({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     layer_digest: "LayerDigest", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.download_url #=> String
    #   resp.layer_digest #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetDownloadUrlForLayer AWS API Documentation
    #
    # @overload get_download_url_for_layer(params = {})
    # @param [Hash] params ({})
    def get_download_url_for_layer(params = {}, options = {})
      req = build_request(:get_download_url_for_layer, params)
      req.send_request(options)
    end

    # Retrieves the lifecycle policy for the specified repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @return [Types::GetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::GetLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::GetLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::GetLifecyclePolicyResponse#last_evaluated_at #last_evaluated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.last_evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Retrieves the results of the lifecycle policy preview request for the
    # specified repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   The list of imageIDs to be included.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated 
    #   `GetLifecyclePolicyPreviewRequest` request where `maxResults` was used
    #   and the  results exceeded the value of that parameter. Pagination
    #   continues from the end of the  previous results that returned the
    #   `nextToken` value. This value is  `null` when there are no more
    #   results to return. This option cannot be used when you specify images
    #   with `imageIds`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by
    #   `GetLifecyclePolicyPreviewRequest` in  paginated output. When this
    #   parameter is used, `GetLifecyclePolicyPreviewRequest` only returns 
    #   `maxResults` results in a single page along with a `nextToken` 
    #   response element. The remaining results of the initial request can be
    #   seen by sending  another `GetLifecyclePolicyPreviewRequest` request
    #   with the returned `nextToken`  value. This value can be between 1 and
    #   1000. If this  parameter is not used, then
    #   `GetLifecyclePolicyPreviewRequest` returns up to  100 results and a
    #   `nextToken` value, if  applicable. This option cannot be used when you
    #   specify images with `imageIds`.
    #
    # @option params [Types::LifecyclePolicyPreviewFilter] :filter
    #   An optional parameter that filters results based on image tag status
    #   and all tags, if tagged.
    #
    # @return [Types::GetLifecyclePolicyPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyPreviewResponse#registry_id #registry_id} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#repository_name #repository_name} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#status #status} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#next_token #next_token} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#preview_results #preview_results} => Array&lt;Types::LifecyclePolicyPreviewResult&gt;
    #   * {Types::GetLifecyclePolicyPreviewResponse#summary #summary} => Types::LifecyclePolicyPreviewSummary
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy_preview({
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
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"
    #   resp.next_token #=> String
    #   resp.preview_results #=> Array
    #   resp.preview_results[0].image_tags #=> Array
    #   resp.preview_results[0].image_tags[0] #=> String
    #   resp.preview_results[0].image_digest #=> String
    #   resp.preview_results[0].image_pushed_at #=> Time
    #   resp.preview_results[0].action.type #=> String, one of "EXPIRE"
    #   resp.preview_results[0].applied_rule_priority #=> Integer
    #   resp.summary.expiring_image_total_count #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * lifecycle_policy_preview_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyPreview AWS API Documentation
    #
    # @overload get_lifecycle_policy_preview(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy_preview(params = {}, options = {})
      req = build_request(:get_lifecycle_policy_preview, params)
      req.send_request(options)
    end

    # Retrieves the repository policy for the specified repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
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
    #
    # @example Example: To get the current policy for a repository
    #
    #   # This example obtains the repository policy for the repository named ubuntu.
    #
    #   resp = client.get_repository_policy({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_text: "{\n  \"Version\" : \"2008-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"new statement\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n     \"AWS\" : \"arn:aws:iam::012345678901:role/CodeDeployDemo\"\n    },\n\"Action\" : [ \"ecr:GetDownloadUrlForLayer\", \"ecr:BatchGetImage\", \"ecr:BatchCheckLayerAvailability\" ]\n } ]\n}", 
    #     registry_id: "012345678901", 
    #     repository_name: "ubuntu", 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRepositoryPolicy AWS API Documentation
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
    # per image layer that has not already been uploaded. Whether or not an
    # image layer has been uploaded is determined by the
    # BatchCheckLayerAvailability API action.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry to which you intend to
    #   upload layers. If you do not specify a registry, the default registry
    #   is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to which you intend to upload layers.
    #
    # @return [Types::InitiateLayerUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateLayerUploadResponse#upload_id #upload_id} => String
    #   * {Types::InitiateLayerUploadResponse#part_size #part_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_layer_upload({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #   resp.part_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InitiateLayerUpload AWS API Documentation
    #
    # @overload initiate_layer_upload(params = {})
    # @param [Hash] params ({})
    def initiate_layer_upload(params = {}, options = {})
      req = build_request(:initiate_layer_upload, params)
      req.send_request(options)
    end

    # Lists all the image IDs for the specified repository.
    #
    # You can filter images based on whether or not they are tagged by using
    # the `tagStatus` filter and specifying either `TAGGED`, `UNTAGGED` or
    # `ANY`. For example, you can filter your results to return only
    # `UNTAGGED` images and then pipe that result to a BatchDeleteImage
    # operation to delete them. Or, you can filter your results to return
    # only `TAGGED` images to list all of the tags in your repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to list images. If you do not specify a registry,
    #   the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository with image IDs to be listed.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListImages`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is `null` when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of image results returned by `ListImages` in
    #   paginated output. When this parameter is used, `ListImages` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListImages` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `ListImages` returns up to 100 results and
    #   a `nextToken` value, if applicable.
    #
    # @option params [Types::ListImagesFilter] :filter
    #   The filter key and value with which to filter your `ListImages`
    #   results.
    #
    # @return [Types::ListImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagesResponse#image_ids #image_ids} => Array&lt;Types::ImageIdentifier&gt;
    #   * {Types::ListImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list all images in a repository
    #
    #   # This example lists all of the images in the repository named ubuntu in the default registry in the current account. 
    #
    #   resp = client.list_images({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_ids: [
    #       {
    #         image_digest: "sha256:764f63476bdff6d83a09ba2a818f0d35757063724a9ac3ba5019c56f74ebf42a", 
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.image_ids #=> Array
    #   resp.image_ids[0].image_digest #=> String
    #   resp.image_ids[0].image_tag #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImages AWS API Documentation
    #
    # @overload list_images(params = {})
    # @param [Hash] params ({})
    def list_images(params = {}, options = {})
      req = build_request(:list_images, params)
      req.send_request(options)
    end

    # List the tags for an Amazon ECR resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the only supported resource is an Amazon
    #   ECR repository.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the image manifest and tags associated with an
    # image.
    #
    # When an image is pushed and all new image layers have been uploaded,
    # the PutImage API is called once to create or update the image manifest
    # and the tags associated with the image.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to put the image. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to put the image.
    #
    # @option params [required, String] :image_manifest
    #   The image manifest corresponding to the image to be uploaded.
    #
    # @option params [String] :image_manifest_media_type
    #   The media type of the image manifest. If you push an image manifest
    #   that does not contain the `mediaType` field, you must specify the
    #   `imageManifestMediaType` in the request.
    #
    # @option params [String] :image_tag
    #   The tag to associate with the image. This parameter is required for
    #   images that use the Docker Image Manifest V2 Schema 2 or Open
    #   Container Initiative (OCI) formats.
    #
    # @option params [String] :image_digest
    #   The image digest of the image manifest corresponding to the image.
    #
    # @return [Types::PutImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageResponse#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image({
    #     registry_id: "RegistryId",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImage AWS API Documentation
    #
    # @overload put_image(params = {})
    # @param [Hash] params ({})
    def put_image(params = {}, options = {})
      req = build_request(:put_image, params)
      req.send_request(options)
    end

    # Updates the image scanning configuration for the specified repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to update the image scanning configuration
    #   setting. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to update the image scanning
    #   configuration setting.
    #
    # @option params [required, Types::ImageScanningConfiguration] :image_scanning_configuration
    #   The image scanning configuration for the repository. This setting
    #   determines whether images are scanned for known vulnerabilities after
    #   being pushed to the repository.
    #
    # @return [Types::PutImageScanningConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageScanningConfigurationResponse#registry_id #registry_id} => String
    #   * {Types::PutImageScanningConfigurationResponse#repository_name #repository_name} => String
    #   * {Types::PutImageScanningConfigurationResponse#image_scanning_configuration #image_scanning_configuration} => Types::ImageScanningConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_scanning_configuration({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_scanning_configuration: { # required
    #       scan_on_push: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_scanning_configuration.scan_on_push #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageScanningConfiguration AWS API Documentation
    #
    # @overload put_image_scanning_configuration(params = {})
    # @param [Hash] params ({})
    def put_image_scanning_configuration(params = {}, options = {})
      req = build_request(:put_image_scanning_configuration, params)
      req.send_request(options)
    end

    # Updates the image tag mutability settings for the specified
    # repository. For more information, see [Image Tag Mutability][1] in the
    # *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to update the image tag mutability settings. If
    #   you do not specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to update the image tag mutability
    #   settings.
    #
    # @option params [required, String] :image_tag_mutability
    #   The tag mutability setting for the repository. If `MUTABLE` is
    #   specified, image tags can be overwritten. If `IMMUTABLE` is specified,
    #   all image tags within the repository will be immutable which will
    #   prevent them from being overwritten.
    #
    # @return [Types::PutImageTagMutabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageTagMutabilityResponse#registry_id #registry_id} => String
    #   * {Types::PutImageTagMutabilityResponse#repository_name #repository_name} => String
    #   * {Types::PutImageTagMutabilityResponse#image_tag_mutability #image_tag_mutability} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_tag_mutability({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_tag_mutability: "MUTABLE", # required, accepts MUTABLE, IMMUTABLE
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageTagMutability AWS API Documentation
    #
    # @overload put_image_tag_mutability(params = {})
    # @param [Hash] params ({})
    def put_image_tag_mutability(params = {}, options = {})
      req = build_request(:put_image_tag_mutability, params)
      req.send_request(options)
    end

    # Creates or updates the lifecycle policy for the specified repository.
    # For more information, see [Lifecycle Policy Template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do  not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to receive the policy.
    #
    # @option params [required, String] :lifecycle_policy_text
    #   The JSON repository policy text to apply to the repository.
    #
    # @return [Types::PutLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::PutLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::PutLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutLifecyclePolicy AWS API Documentation
    #
    # @overload put_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_policy(params = {}, options = {})
      req = build_request(:put_lifecycle_policy, params)
      req.send_request(options)
    end

    # Applies a repository policy to the specified repository to control
    # access permissions. For more information, see [Amazon ECR Repository
    # Policies][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
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
    #   If the policy you are attempting to set on a repository policy would
    #   prevent you from setting another policy in the future, you must force
    #   the SetRepositoryPolicy operation. This is intended to prevent
    #   accidental repository lock outs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/SetRepositoryPolicy AWS API Documentation
    #
    # @overload set_repository_policy(params = {})
    # @param [Hash] params ({})
    def set_repository_policy(params = {}, options = {})
      req = build_request(:set_repository_policy, params)
      req.send_request(options)
    end

    # Starts an image vulnerability scan. An image scan can only be started
    # once per day on an individual image. This limit includes if an image
    # was scanned on initial push. For more information, see [Image
    # Scanning][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository in which to start an image scan request. If you do not
    #   specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the images to scan.
    #
    # @option params [required, Types::ImageIdentifier] :image_id
    #   An object with identifying information for an Amazon ECR image.
    #
    # @return [Types::StartImageScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImageScanResponse#registry_id #registry_id} => String
    #   * {Types::StartImageScanResponse#repository_name #repository_name} => String
    #   * {Types::StartImageScanResponse#image_id #image_id} => Types::ImageIdentifier
    #   * {Types::StartImageScanResponse#image_scan_status #image_scan_status} => Types::ImageScanStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_scan({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_id.image_digest #=> String
    #   resp.image_id.image_tag #=> String
    #   resp.image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.image_scan_status.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartImageScan AWS API Documentation
    #
    # @overload start_image_scan(params = {})
    # @param [Hash] params ({})
    def start_image_scan(params = {}, options = {})
      req = build_request(:start_image_scan, params)
      req.send_request(options)
    end

    # Starts a preview of a lifecycle policy for the specified repository.
    # This allows you to see the results before associating the lifecycle
    # policy with the repository.
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to be evaluated.
    #
    # @option params [String] :lifecycle_policy_text
    #   The policy to be evaluated against. If you do not specify a policy,
    #   the current policy for the repository is used.
    #
    # @return [Types::StartLifecyclePolicyPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLifecyclePolicyPreviewResponse#registry_id #registry_id} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#repository_name #repository_name} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_lifecycle_policy_preview({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartLifecyclePolicyPreview AWS API Documentation
    #
    # @overload start_lifecycle_policy_preview(params = {})
    # @param [Hash] params ({})
    def start_lifecycle_policy_preview(params = {}, options = {})
      req = build_request(:start_lifecycle_policy_preview, params)
      req.send_request(options)
    end

    # Adds specified tags to a resource with the specified ARN. Existing
    # tags on a resource are not changed if they are not specified in the
    # request parameters.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the the resource to which to add
    #   tags. Currently, the only supported resource is an Amazon ECR
    #   repository.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags. Currently, the only supported resource is an Amazon ECR
    #   repository.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UntagResource AWS API Documentation
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
    # The maximum size of each image layer part can be 20971520 bytes (or
    # about 20MB). The UploadLayerPart API is called once per each new image
    # layer part.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The AWS account ID associated with the registry to which you are
    #   uploading layer parts. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to which you are uploading layer parts.
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
    #     registry_id: "RegistryId",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadLayerPart AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-ecr'
      context[:gem_version] = '1.39.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                       | params                                | :delay   | :max_attempts |
    # | --------------------------------- | ------------------------------------- | -------- | ------------- |
    # | image_scan_complete               | {Client#describe_image_scan_findings} | 5        | 60            |
    # | lifecycle_policy_preview_complete | {Client#get_lifecycle_policy_preview} | 5        | 20            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        image_scan_complete: Waiters::ImageScanComplete,
        lifecycle_policy_preview_complete: Waiters::LifecyclePolicyPreviewComplete
      }
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
