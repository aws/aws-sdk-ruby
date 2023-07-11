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

Aws::Plugins::GlobalConfiguration.add_identifier(:accessanalyzer)

module Aws::AccessAnalyzer
  # An API client for AccessAnalyzer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AccessAnalyzer::Client.new(
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

    @identifier = :accessanalyzer

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
    add_plugin(Aws::AccessAnalyzer::Plugins::Endpoints)

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
    #   @option options [Aws::AccessAnalyzer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AccessAnalyzer::EndpointParameters`
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

    # Retroactively applies the archive rule to existing findings that meet
    # the archive rule criteria.
    #
    # @option params [required, String] :analyzer_arn
    #   The Amazon resource name (ARN) of the analyzer.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to apply.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_archive_rule({
    #     analyzer_arn: "AnalyzerArn", # required
    #     rule_name: "Name", # required
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ApplyArchiveRule AWS API Documentation
    #
    # @overload apply_archive_rule(params = {})
    # @param [Hash] params ({})
    def apply_archive_rule(params = {}, options = {})
      req = build_request(:apply_archive_rule, params)
      req.send_request(options)
    end

    # Cancels the requested policy generation.
    #
    # @option params [required, String] :job_id
    #   The `JobId` that is returned by the `StartPolicyGeneration` operation.
    #   The `JobId` can be used with `GetGeneratedPolicy` to retrieve the
    #   generated policies or used with `CancelPolicyGeneration` to cancel the
    #   policy generation request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_policy_generation({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CancelPolicyGeneration AWS API Documentation
    #
    # @overload cancel_policy_generation(params = {})
    # @param [Hash] params ({})
    def cancel_policy_generation(params = {}, options = {})
      req = build_request(:cancel_policy_generation, params)
      req.send_request(options)
    end

    # Creates an access preview that allows you to preview IAM Access
    # Analyzer findings for your resource before deploying resource
    # permissions.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the account analyzer][1] used to generate the access
    #   preview. You can only create an access preview for analyzers with an
    #   `Account` type and `Active` status.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [required, Hash<String,Types::Configuration>] :configurations
    #   Access control configuration for your resource that is used to
    #   generate the access preview. The access preview includes findings for
    #   external access allowed to the resource with the proposed access
    #   control configuration. The configuration must contain exactly one
    #   element.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAccessPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPreviewResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_preview({
    #     analyzer_arn: "AnalyzerArn", # required
    #     configurations: { # required
    #       "ConfigurationsMapKey" => {
    #         ebs_snapshot: {
    #           user_ids: ["EbsUserId"],
    #           groups: ["EbsGroup"],
    #           kms_key_id: "EbsSnapshotDataEncryptionKeyId",
    #         },
    #         ecr_repository: {
    #           repository_policy: "EcrRepositoryPolicy",
    #         },
    #         iam_role: {
    #           trust_policy: "IamTrustPolicy",
    #         },
    #         efs_file_system: {
    #           file_system_policy: "EfsFileSystemPolicy",
    #         },
    #         kms_key: {
    #           key_policies: {
    #             "PolicyName" => "KmsKeyPolicy",
    #           },
    #           grants: [
    #             {
    #               operations: ["CreateGrant"], # required, accepts CreateGrant, Decrypt, DescribeKey, Encrypt, GenerateDataKey, GenerateDataKeyPair, GenerateDataKeyPairWithoutPlaintext, GenerateDataKeyWithoutPlaintext, GetPublicKey, ReEncryptFrom, ReEncryptTo, RetireGrant, Sign, Verify
    #               grantee_principal: "GranteePrincipal", # required
    #               retiring_principal: "RetiringPrincipal",
    #               constraints: {
    #                 encryption_context_equals: {
    #                   "KmsConstraintsKey" => "KmsConstraintsValue",
    #                 },
    #                 encryption_context_subset: {
    #                   "KmsConstraintsKey" => "KmsConstraintsValue",
    #                 },
    #               },
    #               issuing_account: "IssuingAccount", # required
    #             },
    #           ],
    #         },
    #         rds_db_cluster_snapshot: {
    #           attributes: {
    #             "RdsDbClusterSnapshotAttributeName" => {
    #               account_ids: ["RdsDbClusterSnapshotAccountId"],
    #             },
    #           },
    #           kms_key_id: "RdsDbClusterSnapshotKmsKeyId",
    #         },
    #         rds_db_snapshot: {
    #           attributes: {
    #             "RdsDbSnapshotAttributeName" => {
    #               account_ids: ["RdsDbSnapshotAccountId"],
    #             },
    #           },
    #           kms_key_id: "RdsDbSnapshotKmsKeyId",
    #         },
    #         secrets_manager_secret: {
    #           kms_key_id: "SecretsManagerSecretKmsId",
    #           secret_policy: "SecretsManagerSecretPolicy",
    #         },
    #         s3_bucket: {
    #           bucket_policy: "S3BucketPolicy",
    #           bucket_acl_grants: [
    #             {
    #               permission: "READ", # required, accepts READ, WRITE, READ_ACP, WRITE_ACP, FULL_CONTROL
    #               grantee: { # required
    #                 id: "AclCanonicalId",
    #                 uri: "AclUri",
    #               },
    #             },
    #           ],
    #           bucket_public_access_block: {
    #             ignore_public_acls: false, # required
    #             restrict_public_buckets: false, # required
    #           },
    #           access_points: {
    #             "AccessPointArn" => {
    #               access_point_policy: "AccessPointPolicy",
    #               public_access_block: {
    #                 ignore_public_acls: false, # required
    #                 restrict_public_buckets: false, # required
    #               },
    #               network_origin: {
    #                 vpc_configuration: {
    #                   vpc_id: "VpcId", # required
    #                 },
    #                 internet_configuration: {
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         sns_topic: {
    #           topic_policy: "SnsTopicPolicy",
    #         },
    #         sqs_queue: {
    #           queue_policy: "SqsQueuePolicy",
    #         },
    #       },
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateAccessPreview AWS API Documentation
    #
    # @overload create_access_preview(params = {})
    # @param [Hash] params ({})
    def create_access_preview(params = {}, options = {})
      req = build_request(:create_access_preview, params)
      req.send_request(options)
    end

    # Creates an analyzer for your account.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to create.
    #
    # @option params [required, String] :type
    #   The type of analyzer to create. Only ACCOUNT and ORGANIZATION
    #   analyzers are supported. You can create only one analyzer per account
    #   per Region. You can create up to 5 analyzers per organization per
    #   Region.
    #
    # @option params [Array<Types::InlineArchiveRule>] :archive_rules
    #   Specifies the archive rules to add for the analyzer. Archive rules
    #   automatically archive findings that meet the criteria you define for
    #   the rule.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the analyzer.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAnalyzerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalyzerResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analyzer({
    #     analyzer_name: "Name", # required
    #     type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION
    #     archive_rules: [
    #       {
    #         rule_name: "Name", # required
    #         filter: { # required
    #           "String" => {
    #             eq: ["String"],
    #             neq: ["String"],
    #             contains: ["String"],
    #             exists: false,
    #           },
    #         },
    #       },
    #     ],
    #     tags: {
    #       "String" => "String",
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateAnalyzer AWS API Documentation
    #
    # @overload create_analyzer(params = {})
    # @param [Hash] params ({})
    def create_analyzer(params = {}, options = {})
      req = build_request(:create_analyzer, params)
      req.send_request(options)
    end

    # Creates an archive rule for the specified analyzer. Archive rules
    # automatically archive new findings that meet the criteria you define
    # when you create the rule.
    #
    # To learn about filter keys that you can use to create an archive rule,
    # see [IAM Access Analyzer filter keys][1] in the **IAM User Guide**.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
    #
    # @option params [required, String] :analyzer_name
    #   The name of the created analyzer.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to create.
    #
    # @option params [required, Hash<String,Types::Criterion>] :filter
    #   The criteria for the rule.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_archive_rule({
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     filter: { # required
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false,
    #       },
    #     },
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateArchiveRule AWS API Documentation
    #
    # @overload create_archive_rule(params = {})
    # @param [Hash] params ({})
    def create_archive_rule(params = {}, options = {})
      req = build_request(:create_archive_rule, params)
      req.send_request(options)
    end

    # Deletes the specified analyzer. When you delete an analyzer, IAM
    # Access Analyzer is disabled for the account or organization in the
    # current or specific Region. All findings that were generated by the
    # analyzer are deleted. You cannot undo this action.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to delete.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analyzer({
    #     analyzer_name: "Name", # required
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteAnalyzer AWS API Documentation
    #
    # @overload delete_analyzer(params = {})
    # @param [Hash] params ({})
    def delete_analyzer(params = {}, options = {})
      req = build_request(:delete_analyzer, params)
      req.send_request(options)
    end

    # Deletes the specified archive rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer that associated with the archive rule to
    #   delete.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to delete.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive_rule({
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteArchiveRule AWS API Documentation
    #
    # @overload delete_archive_rule(params = {})
    # @param [Hash] params ({})
    def delete_archive_rule(params = {}, options = {})
      req = build_request(:delete_archive_rule, params)
      req.send_request(options)
    end

    # Retrieves information about an access preview for the specified
    # analyzer.
    #
    # @option params [required, String] :access_preview_id
    #   The unique ID for the access preview.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] used to generate the access preview.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @return [Types::GetAccessPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPreviewResponse#access_preview #access_preview} => Types::AccessPreview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_preview({
    #     access_preview_id: "AccessPreviewId", # required
    #     analyzer_arn: "AnalyzerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_preview.id #=> String
    #   resp.access_preview.analyzer_arn #=> String
    #   resp.access_preview.configurations #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ebs_snapshot.user_ids #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ebs_snapshot.user_ids[0] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ebs_snapshot.groups #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ebs_snapshot.groups[0] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ebs_snapshot.kms_key_id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].ecr_repository.repository_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].iam_role.trust_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].efs_file_system.file_system_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.key_policies #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.key_policies["PolicyName"] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].operations #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].operations[0] #=> String, one of "CreateGrant", "Decrypt", "DescribeKey", "Encrypt", "GenerateDataKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateDataKeyWithoutPlaintext", "GetPublicKey", "ReEncryptFrom", "ReEncryptTo", "RetireGrant", "Sign", "Verify"
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].grantee_principal #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].retiring_principal #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].constraints.encryption_context_equals #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].constraints.encryption_context_equals["KmsConstraintsKey"] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].constraints.encryption_context_subset #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].constraints.encryption_context_subset["KmsConstraintsKey"] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].kms_key.grants[0].issuing_account #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_cluster_snapshot.attributes #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_cluster_snapshot.attributes["RdsDbClusterSnapshotAttributeName"].account_ids #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_cluster_snapshot.attributes["RdsDbClusterSnapshotAttributeName"].account_ids[0] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_cluster_snapshot.kms_key_id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_snapshot.attributes #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_snapshot.attributes["RdsDbSnapshotAttributeName"].account_ids #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_snapshot.attributes["RdsDbSnapshotAttributeName"].account_ids[0] #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].rds_db_snapshot.kms_key_id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].secrets_manager_secret.kms_key_id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].secrets_manager_secret.secret_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_acl_grants #=> Array
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_acl_grants[0].permission #=> String, one of "READ", "WRITE", "READ_ACP", "WRITE_ACP", "FULL_CONTROL"
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_acl_grants[0].grantee.id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_acl_grants[0].grantee.uri #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_public_access_block.ignore_public_acls #=> Boolean
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.bucket_public_access_block.restrict_public_buckets #=> Boolean
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.access_points #=> Hash
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.access_points["AccessPointArn"].access_point_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.access_points["AccessPointArn"].public_access_block.ignore_public_acls #=> Boolean
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.access_points["AccessPointArn"].public_access_block.restrict_public_buckets #=> Boolean
    #   resp.access_preview.configurations["ConfigurationsMapKey"].s3_bucket.access_points["AccessPointArn"].network_origin.vpc_configuration.vpc_id #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].sns_topic.topic_policy #=> String
    #   resp.access_preview.configurations["ConfigurationsMapKey"].sqs_queue.queue_policy #=> String
    #   resp.access_preview.created_at #=> Time
    #   resp.access_preview.status #=> String, one of "COMPLETED", "CREATING", "FAILED"
    #   resp.access_preview.status_reason.code #=> String, one of "INTERNAL_ERROR", "INVALID_CONFIGURATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAccessPreview AWS API Documentation
    #
    # @overload get_access_preview(params = {})
    # @param [Hash] params ({})
    def get_access_preview(params = {}, options = {})
      req = build_request(:get_access_preview, params)
      req.send_request(options)
    end

    # Retrieves information about a resource that was analyzed.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] to retrieve information from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve information about.
    #
    # @return [Types::GetAnalyzedResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnalyzedResourceResponse#resource #resource} => Types::AnalyzedResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzed_resource({
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource.resource_arn #=> String
    #   resp.resource.resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret", "AWS::EFS::FileSystem", "AWS::EC2::Snapshot", "AWS::ECR::Repository", "AWS::RDS::DBSnapshot", "AWS::RDS::DBClusterSnapshot", "AWS::SNS::Topic"
    #   resp.resource.created_at #=> Time
    #   resp.resource.analyzed_at #=> Time
    #   resp.resource.updated_at #=> Time
    #   resp.resource.is_public #=> Boolean
    #   resp.resource.actions #=> Array
    #   resp.resource.actions[0] #=> String
    #   resp.resource.shared_via #=> Array
    #   resp.resource.shared_via[0] #=> String
    #   resp.resource.status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.resource.resource_owner_account #=> String
    #   resp.resource.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzedResource AWS API Documentation
    #
    # @overload get_analyzed_resource(params = {})
    # @param [Hash] params ({})
    def get_analyzed_resource(params = {}, options = {})
      req = build_request(:get_analyzed_resource, params)
      req.send_request(options)
    end

    # Retrieves information about the specified analyzer.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer retrieved.
    #
    # @return [Types::GetAnalyzerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnalyzerResponse#analyzer #analyzer} => Types::AnalyzerSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzer({
    #     analyzer_name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzer.arn #=> String
    #   resp.analyzer.name #=> String
    #   resp.analyzer.type #=> String, one of "ACCOUNT", "ORGANIZATION"
    #   resp.analyzer.created_at #=> Time
    #   resp.analyzer.last_resource_analyzed #=> String
    #   resp.analyzer.last_resource_analyzed_at #=> Time
    #   resp.analyzer.tags #=> Hash
    #   resp.analyzer.tags["String"] #=> String
    #   resp.analyzer.status #=> String, one of "ACTIVE", "CREATING", "DISABLED", "FAILED"
    #   resp.analyzer.status_reason.code #=> String, one of "AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzer AWS API Documentation
    #
    # @overload get_analyzer(params = {})
    # @param [Hash] params ({})
    def get_analyzer(params = {}, options = {})
      req = build_request(:get_analyzer, params)
      req.send_request(options)
    end

    # Retrieves information about an archive rule.
    #
    # To learn about filter keys that you can use to create an archive rule,
    # see [IAM Access Analyzer filter keys][1] in the **IAM User Guide**.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to retrieve.
    #
    # @return [Types::GetArchiveRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveRuleResponse#archive_rule #archive_rule} => Types::ArchiveRuleSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_rule({
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_rule.rule_name #=> String
    #   resp.archive_rule.filter #=> Hash
    #   resp.archive_rule.filter["String"].eq #=> Array
    #   resp.archive_rule.filter["String"].eq[0] #=> String
    #   resp.archive_rule.filter["String"].neq #=> Array
    #   resp.archive_rule.filter["String"].neq[0] #=> String
    #   resp.archive_rule.filter["String"].contains #=> Array
    #   resp.archive_rule.filter["String"].contains[0] #=> String
    #   resp.archive_rule.filter["String"].exists #=> Boolean
    #   resp.archive_rule.created_at #=> Time
    #   resp.archive_rule.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetArchiveRule AWS API Documentation
    #
    # @overload get_archive_rule(params = {})
    # @param [Hash] params ({})
    def get_archive_rule(params = {}, options = {})
      req = build_request(:get_archive_rule, params)
      req.send_request(options)
    end

    # Retrieves information about the specified finding.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] that generated the finding.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [required, String] :id
    #   The ID of the finding to retrieve.
    #
    # @return [Types::GetFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingResponse#finding #finding} => Types::Finding
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding({
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "FindingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding.id #=> String
    #   resp.finding.principal #=> Hash
    #   resp.finding.principal["String"] #=> String
    #   resp.finding.action #=> Array
    #   resp.finding.action[0] #=> String
    #   resp.finding.resource #=> String
    #   resp.finding.is_public #=> Boolean
    #   resp.finding.resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret", "AWS::EFS::FileSystem", "AWS::EC2::Snapshot", "AWS::ECR::Repository", "AWS::RDS::DBSnapshot", "AWS::RDS::DBClusterSnapshot", "AWS::SNS::Topic"
    #   resp.finding.condition #=> Hash
    #   resp.finding.condition["String"] #=> String
    #   resp.finding.created_at #=> Time
    #   resp.finding.analyzed_at #=> Time
    #   resp.finding.updated_at #=> Time
    #   resp.finding.status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.finding.resource_owner_account #=> String
    #   resp.finding.error #=> String
    #   resp.finding.sources #=> Array
    #   resp.finding.sources[0].type #=> String, one of "POLICY", "BUCKET_ACL", "S3_ACCESS_POINT", "S3_ACCESS_POINT_ACCOUNT"
    #   resp.finding.sources[0].detail.access_point_arn #=> String
    #   resp.finding.sources[0].detail.access_point_account #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetFinding AWS API Documentation
    #
    # @overload get_finding(params = {})
    # @param [Hash] params ({})
    def get_finding(params = {}, options = {})
      req = build_request(:get_finding, params)
      req.send_request(options)
    end

    # Retrieves the policy that was generated using `StartPolicyGeneration`.
    #
    # @option params [required, String] :job_id
    #   The `JobId` that is returned by the `StartPolicyGeneration` operation.
    #   The `JobId` can be used with `GetGeneratedPolicy` to retrieve the
    #   generated policies or used with `CancelPolicyGeneration` to cancel the
    #   policy generation request.
    #
    # @option params [Boolean] :include_resource_placeholders
    #   The level of detail that you want to generate. You can specify whether
    #   to generate policies with placeholders for resource ARNs for actions
    #   that support resource level granularity in policies.
    #
    #   For example, in the resource section of a policy, you can receive a
    #   placeholder such as `"Resource":"arn:aws:s3:::$\{BucketName\}"`
    #   instead of `"*"`.
    #
    # @option params [Boolean] :include_service_level_template
    #   The level of detail that you want to generate. You can specify whether
    #   to generate service-level policies.
    #
    #   IAM Access Analyzer uses `iam:servicelastaccessed` to identify
    #   services that have been used recently to create this service-level
    #   template.
    #
    # @return [Types::GetGeneratedPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeneratedPolicyResponse#job_details #job_details} => Types::JobDetails
    #   * {Types::GetGeneratedPolicyResponse#generated_policy_result #generated_policy_result} => Types::GeneratedPolicyResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_generated_policy({
    #     job_id: "JobId", # required
    #     include_resource_placeholders: false,
    #     include_service_level_template: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_details.job_id #=> String
    #   resp.job_details.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"
    #   resp.job_details.started_on #=> Time
    #   resp.job_details.completed_on #=> Time
    #   resp.job_details.job_error.code #=> String, one of "AUTHORIZATION_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SERVICE_QUOTA_EXCEEDED_ERROR", "SERVICE_ERROR"
    #   resp.job_details.job_error.message #=> String
    #   resp.generated_policy_result.properties.is_complete #=> Boolean
    #   resp.generated_policy_result.properties.principal_arn #=> String
    #   resp.generated_policy_result.properties.cloud_trail_properties.trail_properties #=> Array
    #   resp.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].cloud_trail_arn #=> String
    #   resp.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].regions #=> Array
    #   resp.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].regions[0] #=> String
    #   resp.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].all_regions #=> Boolean
    #   resp.generated_policy_result.properties.cloud_trail_properties.start_time #=> Time
    #   resp.generated_policy_result.properties.cloud_trail_properties.end_time #=> Time
    #   resp.generated_policy_result.generated_policies #=> Array
    #   resp.generated_policy_result.generated_policies[0].policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetGeneratedPolicy AWS API Documentation
    #
    # @overload get_generated_policy(params = {})
    # @param [Hash] params ({})
    def get_generated_policy(params = {}, options = {})
      req = build_request(:get_generated_policy, params)
      req.send_request(options)
    end

    # Retrieves a list of access preview findings generated by the specified
    # access preview.
    #
    # @option params [required, String] :access_preview_id
    #   The unique ID for the access preview.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] used to generate the access.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [Hash<String,Types::Criterion>] :filter
    #   Criteria to filter the returned findings.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListAccessPreviewFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPreviewFindingsResponse#findings #findings} => Array&lt;Types::AccessPreviewFinding&gt;
    #   * {Types::ListAccessPreviewFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_preview_findings({
    #     access_preview_id: "AccessPreviewId", # required
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false,
    #       },
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].id #=> String
    #   resp.findings[0].existing_finding_id #=> String
    #   resp.findings[0].existing_finding_status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.findings[0].principal #=> Hash
    #   resp.findings[0].principal["String"] #=> String
    #   resp.findings[0].action #=> Array
    #   resp.findings[0].action[0] #=> String
    #   resp.findings[0].condition #=> Hash
    #   resp.findings[0].condition["String"] #=> String
    #   resp.findings[0].resource #=> String
    #   resp.findings[0].is_public #=> Boolean
    #   resp.findings[0].resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret", "AWS::EFS::FileSystem", "AWS::EC2::Snapshot", "AWS::ECR::Repository", "AWS::RDS::DBSnapshot", "AWS::RDS::DBClusterSnapshot", "AWS::SNS::Topic"
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].change_type #=> String, one of "CHANGED", "NEW", "UNCHANGED"
    #   resp.findings[0].status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.findings[0].resource_owner_account #=> String
    #   resp.findings[0].error #=> String
    #   resp.findings[0].sources #=> Array
    #   resp.findings[0].sources[0].type #=> String, one of "POLICY", "BUCKET_ACL", "S3_ACCESS_POINT", "S3_ACCESS_POINT_ACCOUNT"
    #   resp.findings[0].sources[0].detail.access_point_arn #=> String
    #   resp.findings[0].sources[0].detail.access_point_account #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAccessPreviewFindings AWS API Documentation
    #
    # @overload list_access_preview_findings(params = {})
    # @param [Hash] params ({})
    def list_access_preview_findings(params = {}, options = {})
      req = build_request(:list_access_preview_findings, params)
      req.send_request(options)
    end

    # Retrieves a list of access previews for the specified analyzer.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] used to generate the access preview.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListAccessPreviewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPreviewsResponse#access_previews #access_previews} => Array&lt;Types::AccessPreviewSummary&gt;
    #   * {Types::ListAccessPreviewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_previews({
    #     analyzer_arn: "AnalyzerArn", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_previews #=> Array
    #   resp.access_previews[0].id #=> String
    #   resp.access_previews[0].analyzer_arn #=> String
    #   resp.access_previews[0].created_at #=> Time
    #   resp.access_previews[0].status #=> String, one of "COMPLETED", "CREATING", "FAILED"
    #   resp.access_previews[0].status_reason.code #=> String, one of "INTERNAL_ERROR", "INVALID_CONFIGURATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAccessPreviews AWS API Documentation
    #
    # @overload list_access_previews(params = {})
    # @param [Hash] params ({})
    def list_access_previews(params = {}, options = {})
      req = build_request(:list_access_previews, params)
      req.send_request(options)
    end

    # Retrieves a list of resources of the specified type that have been
    # analyzed by the specified analyzer..
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] to retrieve a list of analyzed resources
    #   from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [String] :resource_type
    #   The type of resource.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListAnalyzedResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyzedResourcesResponse#analyzed_resources #analyzed_resources} => Array&lt;Types::AnalyzedResourceSummary&gt;
    #   * {Types::ListAnalyzedResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzed_resources({
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_type: "AWS::S3::Bucket", # accepts AWS::S3::Bucket, AWS::IAM::Role, AWS::SQS::Queue, AWS::Lambda::Function, AWS::Lambda::LayerVersion, AWS::KMS::Key, AWS::SecretsManager::Secret, AWS::EFS::FileSystem, AWS::EC2::Snapshot, AWS::ECR::Repository, AWS::RDS::DBSnapshot, AWS::RDS::DBClusterSnapshot, AWS::SNS::Topic
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzed_resources #=> Array
    #   resp.analyzed_resources[0].resource_arn #=> String
    #   resp.analyzed_resources[0].resource_owner_account #=> String
    #   resp.analyzed_resources[0].resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret", "AWS::EFS::FileSystem", "AWS::EC2::Snapshot", "AWS::ECR::Repository", "AWS::RDS::DBSnapshot", "AWS::RDS::DBClusterSnapshot", "AWS::SNS::Topic"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzedResources AWS API Documentation
    #
    # @overload list_analyzed_resources(params = {})
    # @param [Hash] params ({})
    def list_analyzed_resources(params = {}, options = {})
      req = build_request(:list_analyzed_resources, params)
      req.send_request(options)
    end

    # Retrieves a list of analyzers.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :type
    #   The type of analyzer.
    #
    # @return [Types::ListAnalyzersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyzersResponse#analyzers #analyzers} => Array&lt;Types::AnalyzerSummary&gt;
    #   * {Types::ListAnalyzersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzers({
    #     next_token: "Token",
    #     max_results: 1,
    #     type: "ACCOUNT", # accepts ACCOUNT, ORGANIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzers #=> Array
    #   resp.analyzers[0].arn #=> String
    #   resp.analyzers[0].name #=> String
    #   resp.analyzers[0].type #=> String, one of "ACCOUNT", "ORGANIZATION"
    #   resp.analyzers[0].created_at #=> Time
    #   resp.analyzers[0].last_resource_analyzed #=> String
    #   resp.analyzers[0].last_resource_analyzed_at #=> Time
    #   resp.analyzers[0].tags #=> Hash
    #   resp.analyzers[0].tags["String"] #=> String
    #   resp.analyzers[0].status #=> String, one of "ACTIVE", "CREATING", "DISABLED", "FAILED"
    #   resp.analyzers[0].status_reason.code #=> String, one of "AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzers AWS API Documentation
    #
    # @overload list_analyzers(params = {})
    # @param [Hash] params ({})
    def list_analyzers(params = {}, options = {})
      req = build_request(:list_analyzers, params)
      req.send_request(options)
    end

    # Retrieves a list of archive rules created for the specified analyzer.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the request.
    #
    # @return [Types::ListArchiveRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArchiveRulesResponse#archive_rules #archive_rules} => Array&lt;Types::ArchiveRuleSummary&gt;
    #   * {Types::ListArchiveRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archive_rules({
    #     analyzer_name: "Name", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_rules #=> Array
    #   resp.archive_rules[0].rule_name #=> String
    #   resp.archive_rules[0].filter #=> Hash
    #   resp.archive_rules[0].filter["String"].eq #=> Array
    #   resp.archive_rules[0].filter["String"].eq[0] #=> String
    #   resp.archive_rules[0].filter["String"].neq #=> Array
    #   resp.archive_rules[0].filter["String"].neq[0] #=> String
    #   resp.archive_rules[0].filter["String"].contains #=> Array
    #   resp.archive_rules[0].filter["String"].contains[0] #=> String
    #   resp.archive_rules[0].filter["String"].exists #=> Boolean
    #   resp.archive_rules[0].created_at #=> Time
    #   resp.archive_rules[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListArchiveRules AWS API Documentation
    #
    # @overload list_archive_rules(params = {})
    # @param [Hash] params ({})
    def list_archive_rules(params = {}, options = {})
      req = build_request(:list_archive_rules, params)
      req.send_request(options)
    end

    # Retrieves a list of findings generated by the specified analyzer.
    #
    # To learn about filter keys that you can use to retrieve a list of
    # findings, see [IAM Access Analyzer filter keys][1] in the **IAM User
    # Guide**.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] to retrieve findings from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [Hash<String,Types::Criterion>] :filter
    #   A filter to match for the findings to return.
    #
    # @option params [Types::SortCriteria] :sort
    #   The sort order for the findings returned.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#findings #findings} => Array&lt;Types::FindingSummary&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false,
    #       },
    #     },
    #     sort: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].id #=> String
    #   resp.findings[0].principal #=> Hash
    #   resp.findings[0].principal["String"] #=> String
    #   resp.findings[0].action #=> Array
    #   resp.findings[0].action[0] #=> String
    #   resp.findings[0].resource #=> String
    #   resp.findings[0].is_public #=> Boolean
    #   resp.findings[0].resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret", "AWS::EFS::FileSystem", "AWS::EC2::Snapshot", "AWS::ECR::Repository", "AWS::RDS::DBSnapshot", "AWS::RDS::DBClusterSnapshot", "AWS::SNS::Topic"
    #   resp.findings[0].condition #=> Hash
    #   resp.findings[0].condition["String"] #=> String
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].analyzed_at #=> Time
    #   resp.findings[0].updated_at #=> Time
    #   resp.findings[0].status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.findings[0].resource_owner_account #=> String
    #   resp.findings[0].error #=> String
    #   resp.findings[0].sources #=> Array
    #   resp.findings[0].sources[0].type #=> String, one of "POLICY", "BUCKET_ACL", "S3_ACCESS_POINT", "S3_ACCESS_POINT_ACCOUNT"
    #   resp.findings[0].sources[0].detail.access_point_arn #=> String
    #   resp.findings[0].sources[0].detail.access_point_account #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Lists all of the policy generations requested in the last seven days.
    #
    # @option params [String] :principal_arn
    #   The ARN of the IAM entity (user or role) for which you are generating
    #   a policy. Use this with `ListGeneratedPolicies` to filter the results
    #   to only include results for a specific principal.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @return [Types::ListPolicyGenerationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyGenerationsResponse#policy_generations #policy_generations} => Array&lt;Types::PolicyGeneration&gt;
    #   * {Types::ListPolicyGenerationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_generations({
    #     principal_arn: "PrincipalArn",
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_generations #=> Array
    #   resp.policy_generations[0].job_id #=> String
    #   resp.policy_generations[0].principal_arn #=> String
    #   resp.policy_generations[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"
    #   resp.policy_generations[0].started_on #=> Time
    #   resp.policy_generations[0].completed_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListPolicyGenerations AWS API Documentation
    #
    # @overload list_policy_generations(params = {})
    # @param [Hash] params ({})
    def list_policy_generations(params = {}, options = {})
      req = build_request(:list_policy_generations, params)
      req.send_request(options)
    end

    # Retrieves a list of tags applied to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve tags from.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the policy generation request.
    #
    # @option params [required, Types::PolicyGenerationDetails] :policy_generation_details
    #   Contains the ARN of the IAM entity (user or role) for which you are
    #   generating a policy.
    #
    # @option params [Types::CloudTrailDetails] :cloud_trail_details
    #   A `CloudTrailDetails` object that contains details about a `Trail`
    #   that you want to analyze to generate policies.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartPolicyGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPolicyGenerationResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_policy_generation({
    #     policy_generation_details: { # required
    #       principal_arn: "PrincipalArn", # required
    #     },
    #     cloud_trail_details: {
    #       trails: [ # required
    #         {
    #           cloud_trail_arn: "CloudTrailArn", # required
    #           regions: ["String"],
    #           all_regions: false,
    #         },
    #       ],
    #       access_role: "RoleArn", # required
    #       start_time: Time.now, # required
    #       end_time: Time.now,
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/StartPolicyGeneration AWS API Documentation
    #
    # @overload start_policy_generation(params = {})
    # @param [Hash] params ({})
    def start_policy_generation(params = {}, options = {})
      req = build_request(:start_policy_generation, params)
      req.send_request(options)
    end

    # Immediately starts a scan of the policies applied to the specified
    # resource.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] to use to scan the policies applied to
    #   the specified resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to scan.
    #
    # @option params [String] :resource_owner_account
    #   The Amazon Web Services account ID that owns the resource. For most
    #   Amazon Web Services resources, the owning account is the account in
    #   which the resource was created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_scan({
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #     resource_owner_account: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/StartResourceScan AWS API Documentation
    #
    # @overload start_resource_scan(params = {})
    # @param [Hash] params ({})
    def start_resource_scan(params = {}, options = {})
      req = build_request(:start_resource_scan, params)
      req.send_request(options)
    end

    # Adds a tag to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to add the tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key for the tag to add.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the criteria and values for the specified archive rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to update the archive rules for.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to update.
    #
    # @option params [required, Hash<String,Types::Criterion>] :filter
    #   A filter to match for the rules to update. Only rules that match the
    #   filter are updated.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_archive_rule({
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     filter: { # required
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false,
    #       },
    #     },
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateArchiveRule AWS API Documentation
    #
    # @overload update_archive_rule(params = {})
    # @param [Hash] params ({})
    def update_archive_rule(params = {}, options = {})
      req = build_request(:update_archive_rule, params)
      req.send_request(options)
    end

    # Updates the status for the specified findings.
    #
    # @option params [required, String] :analyzer_arn
    #   The [ARN of the analyzer][1] that generated the findings to update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources
    #
    # @option params [required, String] :status
    #   The state represents the action to take to update the finding Status.
    #   Use `ARCHIVE` to change an Active finding to an Archived finding. Use
    #   `ACTIVE` to change an Archived finding to an Active finding.
    #
    # @option params [Array<String>] :ids
    #   The IDs of the findings to update.
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource identified in the finding.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings({
    #     analyzer_arn: "AnalyzerArn", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, ARCHIVED
    #     ids: ["FindingId"],
    #     resource_arn: "ResourceArn",
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateFindings AWS API Documentation
    #
    # @overload update_findings(params = {})
    # @param [Hash] params ({})
    def update_findings(params = {}, options = {})
      req = build_request(:update_findings, params)
      req.send_request(options)
    end

    # Requests the validation of a policy and returns a list of findings.
    # The findings help you identify issues and provide actionable
    # recommendations to resolve the issue and enable you to author
    # functional policies that meet security best practices.
    #
    # @option params [String] :locale
    #   The locale to use for localizing the findings.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [required, String] :policy_document
    #   The JSON policy document to use as the content for the policy.
    #
    # @option params [required, String] :policy_type
    #   The type of policy to validate. Identity policies grant permissions to
    #   IAM principals. Identity policies include managed and inline policies
    #   for IAM roles, users, and groups. They also include service-control
    #   policies (SCPs) that are attached to an Amazon Web Services
    #   organization, organizational unit (OU), or an account.
    #
    #   Resource policies grant permissions on Amazon Web Services resources.
    #   Resource policies include trust policies for IAM roles and bucket
    #   policies for Amazon S3 buckets. You can provide a generic input such
    #   as identity policy or resource policy or a specific input such as
    #   managed policy or Amazon S3 bucket policy.
    #
    # @option params [String] :validate_policy_resource_type
    #   The type of resource to attach to your resource policy. Specify a
    #   value for the policy validation resource type only if the policy type
    #   is `RESOURCE_POLICY`. For example, to validate a resource policy to
    #   attach to an Amazon S3 bucket, you can choose `AWS::S3::Bucket` for
    #   the policy validation resource type.
    #
    #   For resource types not supported as valid values, IAM Access Analyzer
    #   runs policy checks that apply to all resource policies. For example,
    #   to validate a resource policy to attach to a KMS key, do not specify a
    #   value for the policy validation resource type and IAM Access Analyzer
    #   will run policy checks that apply to all resource policies.
    #
    # @return [Types::ValidatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidatePolicyResponse#findings #findings} => Array&lt;Types::ValidatePolicyFinding&gt;
    #   * {Types::ValidatePolicyResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_policy({
    #     locale: "DE", # accepts DE, EN, ES, FR, IT, JA, KO, PT_BR, ZH_CN, ZH_TW
    #     max_results: 1,
    #     next_token: "Token",
    #     policy_document: "PolicyDocument", # required
    #     policy_type: "IDENTITY_POLICY", # required, accepts IDENTITY_POLICY, RESOURCE_POLICY, SERVICE_CONTROL_POLICY
    #     validate_policy_resource_type: "AWS::S3::Bucket", # accepts AWS::S3::Bucket, AWS::S3::AccessPoint, AWS::S3::MultiRegionAccessPoint, AWS::S3ObjectLambda::AccessPoint, AWS::IAM::AssumeRolePolicyDocument
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].finding_details #=> String
    #   resp.findings[0].finding_type #=> String, one of "ERROR", "SECURITY_WARNING", "SUGGESTION", "WARNING"
    #   resp.findings[0].issue_code #=> String
    #   resp.findings[0].learn_more_link #=> String
    #   resp.findings[0].locations #=> Array
    #   resp.findings[0].locations[0].path #=> Array
    #   resp.findings[0].locations[0].path[0].index #=> Integer
    #   resp.findings[0].locations[0].path[0].key #=> String
    #   resp.findings[0].locations[0].path[0].substring.start #=> Integer
    #   resp.findings[0].locations[0].path[0].substring.length #=> Integer
    #   resp.findings[0].locations[0].path[0].value #=> String
    #   resp.findings[0].locations[0].span.start.line #=> Integer
    #   resp.findings[0].locations[0].span.start.column #=> Integer
    #   resp.findings[0].locations[0].span.start.offset #=> Integer
    #   resp.findings[0].locations[0].span.end.line #=> Integer
    #   resp.findings[0].locations[0].span.end.column #=> Integer
    #   resp.findings[0].locations[0].span.end.offset #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ValidatePolicy AWS API Documentation
    #
    # @overload validate_policy(params = {})
    # @param [Hash] params ({})
    def validate_policy(params = {}, options = {})
      req = build_request(:validate_policy, params)
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
      context[:gem_name] = 'aws-sdk-accessanalyzer'
      context[:gem_version] = '1.39.0'
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
