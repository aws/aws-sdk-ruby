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

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurureviewer)

module Aws::CodeGuruReviewer
  # An API client for CodeGuruReviewer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeGuruReviewer::Client.new(
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

    @identifier = :codegurureviewer

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
    add_plugin(Aws::CodeGuruReviewer::Plugins::Endpoints)

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
    #   @option options [Aws::CodeGuruReviewer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CodeGuruReviewer::EndpointParameters`
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

    # Use to associate an Amazon Web Services CodeCommit repository or a
    # repository managed by Amazon Web Services CodeStar Connections with
    # Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru
    # Reviewer reviews source code changes in the repository's pull
    # requests and provides automatic recommendations. You can view
    # recommendations using the CodeGuru Reviewer console. For more
    # information, see [Recommendations in Amazon CodeGuru Reviewer][1] in
    # the *Amazon CodeGuru Reviewer User Guide.*
    #
    # If you associate a CodeCommit or S3 repository, it must be in the same
    # Amazon Web Services Region and Amazon Web Services account where its
    # CodeGuru Reviewer code reviews are configured.
    #
    # Bitbucket and GitHub Enterprise Server repositories are managed by
    # Amazon Web Services CodeStar Connections to connect to CodeGuru
    # Reviewer. For more information, see [Associate a repository][2] in the
    # *Amazon CodeGuru Reviewer User Guide.*
    #
    # <note markdown="1"> You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services
    # CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To
    # associate a GitHub repository, use the console. For more information,
    # see [Getting started with CodeGuru Reviewer][3] in the *CodeGuru
    # Reviewer User Guide.*
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html
    # [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html
    # [3]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html
    #
    # @option params [required, Types::Repository] :repository
    #   The repository to associate.
    #
    # @option params [String] :client_request_token
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate repository associations if there are failures
    #   and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`, or
    #     `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #
    # @option params [Types::KMSKeyDetails] :kms_key_details
    #   A `KMSKeyDetails` object that contains:
    #
    #   * The encryption option for this repository association. It is either
    #     owned by Amazon Web Services Key Management Service (KMS)
    #     (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
    #
    #   * The ID of the Amazon Web Services KMS key that is associated with
    #     this repository association.
    #
    # @return [Types::AssociateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateRepositoryResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #   * {Types::AssociateRepositoryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_repository({
    #     repository: { # required
    #       code_commit: {
    #         name: "Name", # required
    #       },
    #       bitbucket: {
    #         name: "Name", # required
    #         connection_arn: "ConnectionArn", # required
    #         owner: "Owner", # required
    #       },
    #       git_hub_enterprise_server: {
    #         name: "Name", # required
    #         connection_arn: "ConnectionArn", # required
    #         owner: "Owner", # required
    #       },
    #       s3_bucket: {
    #         name: "Name", # required
    #         bucket_name: "S3BucketName", # required
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_details: {
    #       kms_key_id: "KMSKeyId",
    #       encryption_option: "AWS_OWNED_CMK", # accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.connection_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating", "Disassociated"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #   resp.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.repository_association.kms_key_details.encryption_option #=> String, one of "AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"
    #   resp.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepository AWS API Documentation
    #
    # @overload associate_repository(params = {})
    # @param [Hash] params ({})
    def associate_repository(params = {}, options = {})
      req = build_request(:associate_repository, params)
      req.send_request(options)
    end

    # Use to create a code review with a [CodeReviewType][1] of
    # `RepositoryAnalysis`. This type of code review analyzes all code under
    # a specified branch in an associated repository. `PullRequest` code
    # reviews are automatically triggered by a pull request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html
    #
    # @option params [required, String] :name
    #   The name of the code review. The name of each code review in your
    #   Amazon Web Services account must be unique.
    #
    # @option params [required, String] :repository_association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #   A code review can only be created on an associated repository. This is
    #   the ARN of the associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @option params [required, Types::CodeReviewType] :type
    #   The type of code review to create. This is specified using a
    #   [CodeReviewType][1] object. You can create a code review only of type
    #   `RepositoryAnalysis`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html
    #
    # @option params [String] :client_request_token
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate code reviews if there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCodeReviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeReviewResponse#code_review #code_review} => Types::CodeReview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_review({
    #     name: "CodeReviewName", # required
    #     repository_association_arn: "AssociationArn", # required
    #     type: { # required
    #       repository_analysis: { # required
    #         repository_head: {
    #           branch_name: "BranchName", # required
    #         },
    #         source_code_type: {
    #           commit_diff: {
    #             source_commit: "CommitId",
    #             destination_commit: "CommitId",
    #             merge_base_commit: "CommitId",
    #           },
    #           repository_head: {
    #             branch_name: "BranchName", # required
    #           },
    #           branch_diff: {
    #             source_branch_name: "BranchName", # required
    #             destination_branch_name: "BranchName", # required
    #           },
    #           s3_bucket_repository: {
    #             name: "Name", # required
    #             details: {
    #               bucket_name: "S3BucketName",
    #               code_artifacts: {
    #                 source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #                 build_artifacts_object_key: "BuildArtifactsObjectKey",
    #               },
    #             },
    #           },
    #           request_metadata: {
    #             request_id: "RequestId",
    #             requester: "Requester",
    #             event_info: {
    #               name: "EventName",
    #               state: "EventState",
    #             },
    #             vendor_name: "GitHub", # accepts GitHub, GitLab, NativeS3
    #           },
    #         },
    #       },
    #       analysis_types: ["Security"], # accepts Security, CodeQuality
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review.name #=> String
    #   resp.code_review.code_review_arn #=> String
    #   resp.code_review.repository_name #=> String
    #   resp.code_review.owner #=> String
    #   resp.code_review.provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.code_review.state #=> String, one of "Completed", "Pending", "Failed", "Deleting"
    #   resp.code_review.state_reason #=> String
    #   resp.code_review.created_time_stamp #=> Time
    #   resp.code_review.last_updated_time_stamp #=> Time
    #   resp.code_review.type #=> String, one of "PullRequest", "RepositoryAnalysis"
    #   resp.code_review.pull_request_id #=> String
    #   resp.code_review.source_code_type.commit_diff.source_commit #=> String
    #   resp.code_review.source_code_type.commit_diff.destination_commit #=> String
    #   resp.code_review.source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.code_review.source_code_type.repository_head.branch_name #=> String
    #   resp.code_review.source_code_type.branch_diff.source_branch_name #=> String
    #   resp.code_review.source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.code_review.source_code_type.request_metadata.request_id #=> String
    #   resp.code_review.source_code_type.request_metadata.requester #=> String
    #   resp.code_review.source_code_type.request_metadata.event_info.name #=> String
    #   resp.code_review.source_code_type.request_metadata.event_info.state #=> String
    #   resp.code_review.source_code_type.request_metadata.vendor_name #=> String, one of "GitHub", "GitLab", "NativeS3"
    #   resp.code_review.association_arn #=> String
    #   resp.code_review.metrics.metered_lines_of_code_count #=> Integer
    #   resp.code_review.metrics.suppressed_lines_of_code_count #=> Integer
    #   resp.code_review.metrics.findings_count #=> Integer
    #   resp.code_review.analysis_types #=> Array
    #   resp.code_review.analysis_types[0] #=> String, one of "Security", "CodeQuality"
    #   resp.code_review.config_file_state #=> String, one of "Present", "Absent", "PresentWithErrors"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CreateCodeReview AWS API Documentation
    #
    # @overload create_code_review(params = {})
    # @param [Hash] params ({})
    def create_code_review(params = {}, options = {})
      req = build_request(:create_code_review, params)
      req.send_request(options)
    end

    # Returns the metadata associated with the code review along with its
    # status.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #
    # @return [Types::DescribeCodeReviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeReviewResponse#code_review #code_review} => Types::CodeReview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_review({
    #     code_review_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review.name #=> String
    #   resp.code_review.code_review_arn #=> String
    #   resp.code_review.repository_name #=> String
    #   resp.code_review.owner #=> String
    #   resp.code_review.provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.code_review.state #=> String, one of "Completed", "Pending", "Failed", "Deleting"
    #   resp.code_review.state_reason #=> String
    #   resp.code_review.created_time_stamp #=> Time
    #   resp.code_review.last_updated_time_stamp #=> Time
    #   resp.code_review.type #=> String, one of "PullRequest", "RepositoryAnalysis"
    #   resp.code_review.pull_request_id #=> String
    #   resp.code_review.source_code_type.commit_diff.source_commit #=> String
    #   resp.code_review.source_code_type.commit_diff.destination_commit #=> String
    #   resp.code_review.source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.code_review.source_code_type.repository_head.branch_name #=> String
    #   resp.code_review.source_code_type.branch_diff.source_branch_name #=> String
    #   resp.code_review.source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.code_review.source_code_type.request_metadata.request_id #=> String
    #   resp.code_review.source_code_type.request_metadata.requester #=> String
    #   resp.code_review.source_code_type.request_metadata.event_info.name #=> String
    #   resp.code_review.source_code_type.request_metadata.event_info.state #=> String
    #   resp.code_review.source_code_type.request_metadata.vendor_name #=> String, one of "GitHub", "GitLab", "NativeS3"
    #   resp.code_review.association_arn #=> String
    #   resp.code_review.metrics.metered_lines_of_code_count #=> Integer
    #   resp.code_review.metrics.suppressed_lines_of_code_count #=> Integer
    #   resp.code_review.metrics.findings_count #=> Integer
    #   resp.code_review.analysis_types #=> Array
    #   resp.code_review.analysis_types[0] #=> String, one of "Security", "CodeQuality"
    #   resp.code_review.config_file_state #=> String, one of "Present", "Absent", "PresentWithErrors"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * code_review_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeCodeReview AWS API Documentation
    #
    # @overload describe_code_review(params = {})
    # @param [Hash] params ({})
    def describe_code_review(params = {}, options = {})
      req = build_request(:describe_code_review, params)
      req.send_request(options)
    end

    # Describes the customer feedback for a CodeGuru Reviewer
    # recommendation.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #
    # @option params [required, String] :recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #
    # @option params [String] :user_id
    #   Optional parameter to describe the feedback for a given user. If this
    #   is not supplied, it defaults to the user making the request.
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
    #
    # @return [Types::DescribeRecommendationFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecommendationFeedbackResponse#recommendation_feedback #recommendation_feedback} => Types::RecommendationFeedback
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommendation_feedback({
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     user_id: "UserId",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_feedback.code_review_arn #=> String
    #   resp.recommendation_feedback.recommendation_id #=> String
    #   resp.recommendation_feedback.reactions #=> Array
    #   resp.recommendation_feedback.reactions[0] #=> String, one of "ThumbsUp", "ThumbsDown"
    #   resp.recommendation_feedback.user_id #=> String
    #   resp.recommendation_feedback.created_time_stamp #=> Time
    #   resp.recommendation_feedback.last_updated_time_stamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRecommendationFeedback AWS API Documentation
    #
    # @overload describe_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def describe_recommendation_feedback(params = {}, options = {})
      req = build_request(:describe_recommendation_feedback, params)
      req.send_request(options)
    end

    # Returns a [RepositoryAssociation][1] object that contains information
    # about the requested repository association.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #
    # @option params [required, String] :association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @return [Types::DescribeRepositoryAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoryAssociationResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #   * {Types::DescribeRepositoryAssociationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository_association({
    #     association_arn: "AssociationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.connection_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating", "Disassociated"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #   resp.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.repository_association.kms_key_details.encryption_option #=> String, one of "AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"
    #   resp.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * repository_association_succeeded
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociation AWS API Documentation
    #
    # @overload describe_repository_association(params = {})
    # @param [Hash] params ({})
    def describe_repository_association(params = {}, options = {})
      req = build_request(:describe_repository_association, params)
      req.send_request(options)
    end

    # Removes the association between Amazon CodeGuru Reviewer and a
    # repository.
    #
    # @option params [required, String] :association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @return [Types::DisassociateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateRepositoryResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #   * {Types::DisassociateRepositoryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_repository({
    #     association_arn: "AssociationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.connection_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating", "Disassociated"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #   resp.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.repository_association.kms_key_details.encryption_option #=> String, one of "AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"
    #   resp.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepository AWS API Documentation
    #
    # @overload disassociate_repository(params = {})
    # @param [Hash] params ({})
    def disassociate_repository(params = {}, options = {})
      req = build_request(:disassociate_repository, params)
      req.send_request(options)
    end

    # Lists all the code reviews that the customer has created in the past
    # 90 days.
    #
    # @option params [Array<String>] :provider_types
    #   List of provider types for filtering that needs to be applied before
    #   displaying the result. For example, `providerTypes=[GitHub]` lists
    #   code reviews from GitHub.
    #
    # @option params [Array<String>] :states
    #   List of states for filtering that needs to be applied before
    #   displaying the result. For example, `states=[Pending]` lists code
    #   reviews in the Pending state.
    #
    #   The valid code review states are:
    #
    #   * `Completed`: The code review is complete.
    #
    #   * `Pending`: The code review started and has not completed or failed.
    #
    #   * `Failed`: The code review failed.
    #
    #   * `Deleting`: The code review is being deleted.
    #
    # @option params [Array<String>] :repository_names
    #   List of repository names for filtering that needs to be applied before
    #   displaying the result.
    #
    # @option params [required, String] :type
    #   The type of code reviews to list in the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #
    # @return [Types::ListCodeReviewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeReviewsResponse#code_review_summaries #code_review_summaries} => Array&lt;Types::CodeReviewSummary&gt;
    #   * {Types::ListCodeReviewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_reviews({
    #     provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub, Bitbucket, GitHubEnterpriseServer, S3Bucket
    #     states: ["Completed"], # accepts Completed, Pending, Failed, Deleting
    #     repository_names: ["Name"],
    #     type: "PullRequest", # required, accepts PullRequest, RepositoryAnalysis
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_summaries #=> Array
    #   resp.code_review_summaries[0].name #=> String
    #   resp.code_review_summaries[0].code_review_arn #=> String
    #   resp.code_review_summaries[0].repository_name #=> String
    #   resp.code_review_summaries[0].owner #=> String
    #   resp.code_review_summaries[0].provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.code_review_summaries[0].state #=> String, one of "Completed", "Pending", "Failed", "Deleting"
    #   resp.code_review_summaries[0].created_time_stamp #=> Time
    #   resp.code_review_summaries[0].last_updated_time_stamp #=> Time
    #   resp.code_review_summaries[0].type #=> String, one of "PullRequest", "RepositoryAnalysis"
    #   resp.code_review_summaries[0].pull_request_id #=> String
    #   resp.code_review_summaries[0].metrics_summary.metered_lines_of_code_count #=> Integer
    #   resp.code_review_summaries[0].metrics_summary.suppressed_lines_of_code_count #=> Integer
    #   resp.code_review_summaries[0].metrics_summary.findings_count #=> Integer
    #   resp.code_review_summaries[0].source_code_type.commit_diff.source_commit #=> String
    #   resp.code_review_summaries[0].source_code_type.commit_diff.destination_commit #=> String
    #   resp.code_review_summaries[0].source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.code_review_summaries[0].source_code_type.repository_head.branch_name #=> String
    #   resp.code_review_summaries[0].source_code_type.branch_diff.source_branch_name #=> String
    #   resp.code_review_summaries[0].source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.code_review_summaries[0].source_code_type.s3_bucket_repository.name #=> String
    #   resp.code_review_summaries[0].source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.code_review_summaries[0].source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.code_review_summaries[0].source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.code_review_summaries[0].source_code_type.request_metadata.request_id #=> String
    #   resp.code_review_summaries[0].source_code_type.request_metadata.requester #=> String
    #   resp.code_review_summaries[0].source_code_type.request_metadata.event_info.name #=> String
    #   resp.code_review_summaries[0].source_code_type.request_metadata.event_info.state #=> String
    #   resp.code_review_summaries[0].source_code_type.request_metadata.vendor_name #=> String, one of "GitHub", "GitLab", "NativeS3"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListCodeReviews AWS API Documentation
    #
    # @overload list_code_reviews(params = {})
    # @param [Hash] params ({})
    def list_code_reviews(params = {}, options = {})
      req = build_request(:list_code_reviews, params)
      req.send_request(options)
    end

    # Returns a list of [RecommendationFeedbackSummary][1] objects that
    # contain customer recommendation feedback for all CodeGuru Reviewer
    # users.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #
    # @option params [Array<String>] :user_ids
    #   An Amazon Web Services user's account ID or Amazon Resource Name
    #   (ARN). Use this ID to query the recommendation feedback for a code
    #   review from that user.
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
    #
    # @option params [Array<String>] :recommendation_ids
    #   Used to query the recommendation feedback for a given recommendation.
    #
    # @return [Types::ListRecommendationFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationFeedbackResponse#recommendation_feedback_summaries #recommendation_feedback_summaries} => Array&lt;Types::RecommendationFeedbackSummary&gt;
    #   * {Types::ListRecommendationFeedbackResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_feedback({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #     user_ids: ["UserId"],
    #     recommendation_ids: ["RecommendationId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_feedback_summaries #=> Array
    #   resp.recommendation_feedback_summaries[0].recommendation_id #=> String
    #   resp.recommendation_feedback_summaries[0].reactions #=> Array
    #   resp.recommendation_feedback_summaries[0].reactions[0] #=> String, one of "ThumbsUp", "ThumbsDown"
    #   resp.recommendation_feedback_summaries[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationFeedback AWS API Documentation
    #
    # @overload list_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def list_recommendation_feedback(params = {}, options = {})
      req = build_request(:list_recommendation_feedback, params)
      req.send_request(options)
    end

    # Returns the list of all recommendations for a completed code review.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].file_path #=> String
    #   resp.recommendation_summaries[0].recommendation_id #=> String
    #   resp.recommendation_summaries[0].start_line #=> Integer
    #   resp.recommendation_summaries[0].end_line #=> Integer
    #   resp.recommendation_summaries[0].description #=> String
    #   resp.recommendation_summaries[0].recommendation_category #=> String, one of "AWSBestPractices", "AWSCloudFormationIssues", "DuplicateCode", "CodeMaintenanceIssues", "ConcurrencyIssues", "InputValidations", "PythonBestPractices", "JavaBestPractices", "ResourceLeaks", "SecurityIssues", "CodeInconsistencies"
    #   resp.recommendation_summaries[0].rule_metadata.rule_id #=> String
    #   resp.recommendation_summaries[0].rule_metadata.rule_name #=> String
    #   resp.recommendation_summaries[0].rule_metadata.short_description #=> String
    #   resp.recommendation_summaries[0].rule_metadata.long_description #=> String
    #   resp.recommendation_summaries[0].rule_metadata.rule_tags #=> Array
    #   resp.recommendation_summaries[0].rule_metadata.rule_tags[0] #=> String
    #   resp.recommendation_summaries[0].severity #=> String, one of "Info", "Low", "Medium", "High", "Critical"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Returns a list of [RepositoryAssociationSummary][1] objects that
    # contain summary information about a repository association. You can
    # filter the returned list by [ProviderType][2], [Name][3], [State][4],
    # and [Owner][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html
    # [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType
    # [3]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name
    # [4]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State
    # [5]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner
    #
    # @option params [Array<String>] :provider_types
    #   List of provider types to use as a filter.
    #
    # @option params [Array<String>] :states
    #   List of repository association states to use as a filter.
    #
    #   The valid repository association states are:
    #
    #   * **Associated**: The repository association is complete.
    #
    #   * **Associating**: CodeGuru Reviewer is:
    #
    #     * Setting up pull request notifications. This is required for pull
    #       requests to trigger a CodeGuru Reviewer review.
    #
    #       <note markdown="1"> If your repository `ProviderType` is `GitHub`, `GitHub Enterprise
    #       Server`, or `Bitbucket`, CodeGuru Reviewer creates webhooks in
    #       your repository to trigger CodeGuru Reviewer reviews. If you
    #       delete these webhooks, reviews of code in your repository cannot
    #       be triggered.
    #
    #        </note>
    #
    #     * Setting up source code access. This is required for CodeGuru
    #       Reviewer to securely clone code in your repository.
    #
    #   * **Failed**: The repository failed to associate or disassociate.
    #
    #   * **Disassociating**: CodeGuru Reviewer is removing the repository's
    #     pull request notifications and source code access.
    #
    #   * **Disassociated**: CodeGuru Reviewer successfully disassociated the
    #     repository. You can create a new association with this repository if
    #     you want to review source code in it later. You can control access
    #     to code reviews created in anassociated repository with tags after
    #     it has been disassociated. For more information, see [Using tags to
    #     control access to associated repositories][1] in the *Amazon
    #     CodeGuru Reviewer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html
    #
    # @option params [Array<String>] :names
    #   List of repository names to use as a filter.
    #
    # @option params [Array<String>] :owners
    #   List of owners to use as a filter. For Amazon Web Services CodeCommit,
    #   it is the name of the CodeCommit account that was used to associate
    #   the repository. For other repository source providers, such as
    #   Bitbucket and GitHub Enterprise Server, this is name of the account
    #   that was used to associate the repository.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this parameter
    #   is used, `ListRepositoryAssociations` only returns `maxResults`
    #   results in a single page with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `ListRepositoryAssociations` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, `ListRepositoryAssociations` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRepositoryAssociations` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that is only used to retrieve
    #   the next items in a list and not for other programmatic purposes.
    #
    #    </note>
    #
    # @return [Types::ListRepositoryAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoryAssociationsResponse#repository_association_summaries #repository_association_summaries} => Array&lt;Types::RepositoryAssociationSummary&gt;
    #   * {Types::ListRepositoryAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_associations({
    #     provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub, Bitbucket, GitHubEnterpriseServer, S3Bucket
    #     states: ["Associated"], # accepts Associated, Associating, Failed, Disassociating, Disassociated
    #     names: ["Name"],
    #     owners: ["Owner"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association_summaries #=> Array
    #   resp.repository_association_summaries[0].association_arn #=> String
    #   resp.repository_association_summaries[0].connection_arn #=> String
    #   resp.repository_association_summaries[0].last_updated_time_stamp #=> Time
    #   resp.repository_association_summaries[0].association_id #=> String
    #   resp.repository_association_summaries[0].name #=> String
    #   resp.repository_association_summaries[0].owner #=> String
    #   resp.repository_association_summaries[0].provider_type #=> String, one of "CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"
    #   resp.repository_association_summaries[0].state #=> String, one of "Associated", "Associating", "Failed", "Disassociating", "Disassociated"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociations AWS API Documentation
    #
    # @overload list_repository_associations(params = {})
    # @param [Hash] params ({})
    def list_repository_associations(params = {}, options = {})
      req = build_request(:list_repository_associations, params)
      req.send_request(options)
    end

    # Returns the list of tags associated with an associated repository
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AssociationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Stores customer feedback for a CodeGuru Reviewer recommendation. When
    # this API is called again with different reactions the previous
    # feedback is overwritten.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #
    # @option params [required, String] :recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #
    # @option params [required, Array<String>] :reactions
    #   List for storing reactions. Reactions are utf-8 text code for emojis.
    #   If you send an empty list it clears all your feedback.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_recommendation_feedback({
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     reactions: ["ThumbsUp"], # required, accepts ThumbsUp, ThumbsDown
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/PutRecommendationFeedback AWS API Documentation
    #
    # @overload put_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def put_recommendation_feedback(params = {}, options = {})
      req = build_request(:put_recommendation_feedback, params)
      req.send_request(options)
    end

    # Adds one or more tags to an associated repository.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`, or
    #     `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AssociationArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an associated repository.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys for each tag you want to remove from an associated
    #   repository.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AssociationArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-codegurureviewer'
      context[:gem_version] = '1.40.0'
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
    # | waiter_name                      | params                                   | :delay   | :max_attempts |
    # | -------------------------------- | ---------------------------------------- | -------- | ------------- |
    # | code_review_completed            | {Client#describe_code_review}            | 10       | 180           |
    # | repository_association_succeeded | {Client#describe_repository_association} | 10       | 30            |
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
        code_review_completed: Waiters::CodeReviewCompleted,
        repository_association_succeeded: Waiters::RepositoryAssociationSucceeded
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
