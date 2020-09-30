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

Aws::Plugins::GlobalConfiguration.add_identifier(:codebuild)

module Aws::CodeBuild
  # An API client for CodeBuild.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeBuild::Client.new(
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

    @identifier = :codebuild

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

    # Deletes one or more builds.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the builds to delete.
    #
    # @return [Types::BatchDeleteBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteBuildsOutput#builds_deleted #builds_deleted} => Array&lt;String&gt;
    #   * {Types::BatchDeleteBuildsOutput#builds_not_deleted #builds_not_deleted} => Array&lt;Types::BuildNotDeleted&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_builds({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.builds_deleted #=> Array
    #   resp.builds_deleted[0] #=> String
    #   resp.builds_not_deleted #=> Array
    #   resp.builds_not_deleted[0].id #=> String
    #   resp.builds_not_deleted[0].status_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchDeleteBuilds AWS API Documentation
    #
    # @overload batch_delete_builds(params = {})
    # @param [Hash] params ({})
    def batch_delete_builds(params = {}, options = {})
      req = build_request(:batch_delete_builds, params)
      req.send_request(options)
    end

    # Retrieves information about one or more batch builds.
    #
    # @option params [required, Array<String>] :ids
    #   An array that contains the batch build identifiers to retrieve.
    #
    # @return [Types::BatchGetBuildBatchesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBuildBatchesOutput#build_batches #build_batches} => Array&lt;Types::BuildBatch&gt;
    #   * {Types::BatchGetBuildBatchesOutput#build_batches_not_found #build_batches_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_build_batches({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batches #=> Array
    #   resp.build_batches[0].id #=> String
    #   resp.build_batches[0].arn #=> String
    #   resp.build_batches[0].start_time #=> Time
    #   resp.build_batches[0].end_time #=> Time
    #   resp.build_batches[0].current_phase #=> String
    #   resp.build_batches[0].build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].source_version #=> String
    #   resp.build_batches[0].resolved_source_version #=> String
    #   resp.build_batches[0].project_name #=> String
    #   resp.build_batches[0].phases #=> Array
    #   resp.build_batches[0].phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batches[0].phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].phases[0].start_time #=> Time
    #   resp.build_batches[0].phases[0].end_time #=> Time
    #   resp.build_batches[0].phases[0].duration_in_seconds #=> Integer
    #   resp.build_batches[0].phases[0].contexts #=> Array
    #   resp.build_batches[0].phases[0].contexts[0].status_code #=> String
    #   resp.build_batches[0].phases[0].contexts[0].message #=> String
    #   resp.build_batches[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batches[0].source.location #=> String
    #   resp.build_batches[0].source.git_clone_depth #=> Integer
    #   resp.build_batches[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batches[0].source.buildspec #=> String
    #   resp.build_batches[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.build_batches[0].source.auth.resource #=> String
    #   resp.build_batches[0].source.report_build_status #=> Boolean
    #   resp.build_batches[0].source.build_status_config.context #=> String
    #   resp.build_batches[0].source.build_status_config.target_url #=> String
    #   resp.build_batches[0].source.insecure_ssl #=> Boolean
    #   resp.build_batches[0].source.source_identifier #=> String
    #   resp.build_batches[0].secondary_sources #=> Array
    #   resp.build_batches[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batches[0].secondary_sources[0].location #=> String
    #   resp.build_batches[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batches[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].buildspec #=> String
    #   resp.build_batches[0].secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build_batches[0].secondary_sources[0].auth.resource #=> String
    #   resp.build_batches[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batches[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batches[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].source_identifier #=> String
    #   resp.build_batches[0].secondary_source_versions #=> Array
    #   resp.build_batches[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batches[0].secondary_source_versions[0].source_version #=> String
    #   resp.build_batches[0].artifacts.location #=> String
    #   resp.build_batches[0].artifacts.sha256sum #=> String
    #   resp.build_batches[0].artifacts.md5sum #=> String
    #   resp.build_batches[0].artifacts.override_artifact_name #=> Boolean
    #   resp.build_batches[0].artifacts.encryption_disabled #=> Boolean
    #   resp.build_batches[0].artifacts.artifact_identifier #=> String
    #   resp.build_batches[0].secondary_artifacts #=> Array
    #   resp.build_batches[0].secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batches[0].secondary_artifacts[0].md5sum #=> String
    #   resp.build_batches[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batches[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batches[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batches[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batches[0].cache.location #=> String
    #   resp.build_batches[0].cache.modes #=> Array
    #   resp.build_batches[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batches[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build_batches[0].environment.image #=> String
    #   resp.build_batches[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build_batches[0].environment.environment_variables #=> Array
    #   resp.build_batches[0].environment.environment_variables[0].name #=> String
    #   resp.build_batches[0].environment.environment_variables[0].value #=> String
    #   resp.build_batches[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batches[0].environment.privileged_mode #=> Boolean
    #   resp.build_batches[0].environment.certificate #=> String
    #   resp.build_batches[0].environment.registry_credential.credential #=> String
    #   resp.build_batches[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batches[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batches[0].service_role #=> String
    #   resp.build_batches[0].log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batches[0].log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batches[0].log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batches[0].log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batches[0].log_config.s3_logs.location #=> String
    #   resp.build_batches[0].log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batches[0].build_timeout_in_minutes #=> Integer
    #   resp.build_batches[0].queued_timeout_in_minutes #=> Integer
    #   resp.build_batches[0].complete #=> Boolean
    #   resp.build_batches[0].initiator #=> String
    #   resp.build_batches[0].vpc_config.vpc_id #=> String
    #   resp.build_batches[0].vpc_config.subnets #=> Array
    #   resp.build_batches[0].vpc_config.subnets[0] #=> String
    #   resp.build_batches[0].vpc_config.security_group_ids #=> Array
    #   resp.build_batches[0].vpc_config.security_group_ids[0] #=> String
    #   resp.build_batches[0].encryption_key #=> String
    #   resp.build_batches[0].build_batch_number #=> Integer
    #   resp.build_batches[0].file_system_locations #=> Array
    #   resp.build_batches[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batches[0].file_system_locations[0].location #=> String
    #   resp.build_batches[0].file_system_locations[0].mount_point #=> String
    #   resp.build_batches[0].file_system_locations[0].identifier #=> String
    #   resp.build_batches[0].file_system_locations[0].mount_options #=> String
    #   resp.build_batches[0].build_batch_config.service_role #=> String
    #   resp.build_batches[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batches[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batches[0].build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batches[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batches[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batches[0].build_groups #=> Array
    #   resp.build_batches[0].build_groups[0].identifier #=> String
    #   resp.build_batches[0].build_groups[0].depends_on #=> Array
    #   resp.build_batches[0].build_groups[0].depends_on[0] #=> String
    #   resp.build_batches[0].build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batches[0].build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batches[0].build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #   resp.build_batches_not_found #=> Array
    #   resp.build_batches_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildBatches AWS API Documentation
    #
    # @overload batch_get_build_batches(params = {})
    # @param [Hash] params ({})
    def batch_get_build_batches(params = {}, options = {})
      req = build_request(:batch_get_build_batches, params)
      req.send_request(options)
    end

    # Gets information about one or more builds.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the builds.
    #
    # @return [Types::BatchGetBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::BatchGetBuildsOutput#builds_not_found #builds_not_found} => Array&lt;String&gt;
    #
    #
    # @example Example: To get information about builds
    #
    #   # The following example gets information about builds with the specified build IDs.
    #
    #   resp = client.batch_get_builds({
    #     ids: [
    #       "codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX", 
    #       "codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     builds: [
    #       {
    #         arn: "arn:aws:codebuild:us-east-1:123456789012:build/codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX", 
    #         artifacts: {
    #           location: "arn:aws:s3:::codebuild-123456789012-output-bucket/codebuild-demo-project", 
    #         }, 
    #         build_complete: true, 
    #         build_status: "SUCCEEDED", 
    #         current_phase: "COMPLETED", 
    #         end_time: Time.parse(1479832474.764), 
    #         environment: {
    #           type: "LINUX_CONTAINER", 
    #           compute_type: "BUILD_GENERAL1_SMALL", 
    #           environment_variables: [
    #           ], 
    #           image: "aws/codebuild/java:openjdk-8", 
    #           privileged_mode: false, 
    #         }, 
    #         id: "codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX", 
    #         initiator: "MyDemoUser", 
    #         logs: {
    #           deep_link: "https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logEvent:group=/aws/codebuild/codebuild-demo-project;stream=9b0ac37f-d19e-4254-9079-f47e9a389eEX", 
    #           group_name: "/aws/codebuild/codebuild-demo-project", 
    #           stream_name: "9b0ac37f-d19e-4254-9079-f47e9a389eEX", 
    #         }, 
    #         phases: [
    #           {
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479832342.23), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "SUBMITTED", 
    #             start_time: Time.parse(1479832341.854), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 72, 
    #             end_time: Time.parse(1479832415.064), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "PROVISIONING", 
    #             start_time: Time.parse(1479832342.23), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 46, 
    #             end_time: Time.parse(1479832461.261), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "DOWNLOAD_SOURCE", 
    #             start_time: Time.parse(1479832415.064), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479832461.354), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "INSTALL", 
    #             start_time: Time.parse(1479832461.261), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479832461.448), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "PRE_BUILD", 
    #             start_time: Time.parse(1479832461.354), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 9, 
    #             end_time: Time.parse(1479832471.115), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "BUILD", 
    #             start_time: Time.parse(1479832461.448), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479832471.224), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "POST_BUILD", 
    #             start_time: Time.parse(1479832471.115), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479832471.791), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "UPLOAD_ARTIFACTS", 
    #             start_time: Time.parse(1479832471.224), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 2, 
    #             end_time: Time.parse(1479832474.764), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "FINALIZING", 
    #             start_time: Time.parse(1479832471.791), 
    #           }, 
    #           {
    #             phase_type: "COMPLETED", 
    #             start_time: Time.parse(1479832474.764), 
    #           }, 
    #         ], 
    #         project_name: "codebuild-demo-project", 
    #         source: {
    #           type: "S3", 
    #           buildspec: "", 
    #           location: "arn:aws:s3:::codebuild-123456789012-input-bucket/MessageUtil.zip", 
    #         }, 
    #         start_time: Time.parse(1479832341.854), 
    #         timeout_in_minutes: 60, 
    #       }, 
    #       {
    #         arn: "arn:aws:codebuild:us-east-1:123456789012:build/codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX", 
    #         artifacts: {
    #           location: "arn:aws:s3:::codebuild-123456789012-output-bucket/codebuild-demo-project", 
    #         }, 
    #         build_complete: true, 
    #         build_status: "SUCCEEDED", 
    #         current_phase: "COMPLETED", 
    #         end_time: Time.parse(1479401214.239), 
    #         environment: {
    #           type: "LINUX_CONTAINER", 
    #           compute_type: "BUILD_GENERAL1_SMALL", 
    #           environment_variables: [
    #           ], 
    #           image: "aws/codebuild/java:openjdk-8", 
    #           privileged_mode: false, 
    #         }, 
    #         id: "codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX", 
    #         initiator: "MyDemoUser", 
    #         logs: {
    #           deep_link: "https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logEvent:group=/aws/codebuild/codebuild-demo-project;stream=b79a46f7-1473-4636-a23f-da9c45c208EX", 
    #           group_name: "/aws/codebuild/codebuild-demo-project", 
    #           stream_name: "b79a46f7-1473-4636-a23f-da9c45c208EX", 
    #         }, 
    #         phases: [
    #           {
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479401082.342), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "SUBMITTED", 
    #             start_time: Time.parse(1479401081.869), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 71, 
    #             end_time: Time.parse(1479401154.129), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "PROVISIONING", 
    #             start_time: Time.parse(1479401082.342), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 45, 
    #             end_time: Time.parse(1479401199.136), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "DOWNLOAD_SOURCE", 
    #             start_time: Time.parse(1479401154.129), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479401199.236), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "INSTALL", 
    #             start_time: Time.parse(1479401199.136), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479401199.345), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "PRE_BUILD", 
    #             start_time: Time.parse(1479401199.236), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 9, 
    #             end_time: Time.parse(1479401208.68), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "BUILD", 
    #             start_time: Time.parse(1479401199.345), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479401208.783), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "POST_BUILD", 
    #             start_time: Time.parse(1479401208.68), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 0, 
    #             end_time: Time.parse(1479401209.463), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "UPLOAD_ARTIFACTS", 
    #             start_time: Time.parse(1479401208.783), 
    #           }, 
    #           {
    #             contexts: [
    #             ], 
    #             duration_in_seconds: 4, 
    #             end_time: Time.parse(1479401214.239), 
    #             phase_status: "SUCCEEDED", 
    #             phase_type: "FINALIZING", 
    #             start_time: Time.parse(1479401209.463), 
    #           }, 
    #           {
    #             phase_type: "COMPLETED", 
    #             start_time: Time.parse(1479401214.239), 
    #           }, 
    #         ], 
    #         project_name: "codebuild-demo-project", 
    #         source: {
    #           type: "S3", 
    #           location: "arn:aws:s3:::codebuild-123456789012-input-bucket/MessageUtil.zip", 
    #         }, 
    #         start_time: Time.parse(1479401081.869), 
    #         timeout_in_minutes: 60, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_builds({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.builds #=> Array
    #   resp.builds[0].id #=> String
    #   resp.builds[0].arn #=> String
    #   resp.builds[0].build_number #=> Integer
    #   resp.builds[0].start_time #=> Time
    #   resp.builds[0].end_time #=> Time
    #   resp.builds[0].current_phase #=> String
    #   resp.builds[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].source_version #=> String
    #   resp.builds[0].resolved_source_version #=> String
    #   resp.builds[0].project_name #=> String
    #   resp.builds[0].phases #=> Array
    #   resp.builds[0].phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.builds[0].phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].phases[0].start_time #=> Time
    #   resp.builds[0].phases[0].end_time #=> Time
    #   resp.builds[0].phases[0].duration_in_seconds #=> Integer
    #   resp.builds[0].phases[0].contexts #=> Array
    #   resp.builds[0].phases[0].contexts[0].status_code #=> String
    #   resp.builds[0].phases[0].contexts[0].message #=> String
    #   resp.builds[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.builds[0].source.location #=> String
    #   resp.builds[0].source.git_clone_depth #=> Integer
    #   resp.builds[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.builds[0].source.buildspec #=> String
    #   resp.builds[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.builds[0].source.auth.resource #=> String
    #   resp.builds[0].source.report_build_status #=> Boolean
    #   resp.builds[0].source.build_status_config.context #=> String
    #   resp.builds[0].source.build_status_config.target_url #=> String
    #   resp.builds[0].source.insecure_ssl #=> Boolean
    #   resp.builds[0].source.source_identifier #=> String
    #   resp.builds[0].secondary_sources #=> Array
    #   resp.builds[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.builds[0].secondary_sources[0].location #=> String
    #   resp.builds[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.builds[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.builds[0].secondary_sources[0].buildspec #=> String
    #   resp.builds[0].secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.builds[0].secondary_sources[0].auth.resource #=> String
    #   resp.builds[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.builds[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.builds[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.builds[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.builds[0].secondary_sources[0].source_identifier #=> String
    #   resp.builds[0].secondary_source_versions #=> Array
    #   resp.builds[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.builds[0].secondary_source_versions[0].source_version #=> String
    #   resp.builds[0].artifacts.location #=> String
    #   resp.builds[0].artifacts.sha256sum #=> String
    #   resp.builds[0].artifacts.md5sum #=> String
    #   resp.builds[0].artifacts.override_artifact_name #=> Boolean
    #   resp.builds[0].artifacts.encryption_disabled #=> Boolean
    #   resp.builds[0].artifacts.artifact_identifier #=> String
    #   resp.builds[0].secondary_artifacts #=> Array
    #   resp.builds[0].secondary_artifacts[0].location #=> String
    #   resp.builds[0].secondary_artifacts[0].sha256sum #=> String
    #   resp.builds[0].secondary_artifacts[0].md5sum #=> String
    #   resp.builds[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.builds[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.builds[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.builds[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.builds[0].cache.location #=> String
    #   resp.builds[0].cache.modes #=> Array
    #   resp.builds[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.builds[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.builds[0].environment.image #=> String
    #   resp.builds[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.builds[0].environment.environment_variables #=> Array
    #   resp.builds[0].environment.environment_variables[0].name #=> String
    #   resp.builds[0].environment.environment_variables[0].value #=> String
    #   resp.builds[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.builds[0].environment.privileged_mode #=> Boolean
    #   resp.builds[0].environment.certificate #=> String
    #   resp.builds[0].environment.registry_credential.credential #=> String
    #   resp.builds[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.builds[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.builds[0].service_role #=> String
    #   resp.builds[0].logs.group_name #=> String
    #   resp.builds[0].logs.stream_name #=> String
    #   resp.builds[0].logs.deep_link #=> String
    #   resp.builds[0].logs.s3_deep_link #=> String
    #   resp.builds[0].logs.cloud_watch_logs_arn #=> String
    #   resp.builds[0].logs.s3_logs_arn #=> String
    #   resp.builds[0].logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.builds[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.builds[0].logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.s3_logs.location #=> String
    #   resp.builds[0].logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.builds[0].timeout_in_minutes #=> Integer
    #   resp.builds[0].queued_timeout_in_minutes #=> Integer
    #   resp.builds[0].build_complete #=> Boolean
    #   resp.builds[0].initiator #=> String
    #   resp.builds[0].vpc_config.vpc_id #=> String
    #   resp.builds[0].vpc_config.subnets #=> Array
    #   resp.builds[0].vpc_config.subnets[0] #=> String
    #   resp.builds[0].vpc_config.security_group_ids #=> Array
    #   resp.builds[0].vpc_config.security_group_ids[0] #=> String
    #   resp.builds[0].network_interface.subnet_id #=> String
    #   resp.builds[0].network_interface.network_interface_id #=> String
    #   resp.builds[0].encryption_key #=> String
    #   resp.builds[0].exported_environment_variables #=> Array
    #   resp.builds[0].exported_environment_variables[0].name #=> String
    #   resp.builds[0].exported_environment_variables[0].value #=> String
    #   resp.builds[0].report_arns #=> Array
    #   resp.builds[0].report_arns[0] #=> String
    #   resp.builds[0].file_system_locations #=> Array
    #   resp.builds[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.builds[0].file_system_locations[0].location #=> String
    #   resp.builds[0].file_system_locations[0].mount_point #=> String
    #   resp.builds[0].file_system_locations[0].identifier #=> String
    #   resp.builds[0].file_system_locations[0].mount_options #=> String
    #   resp.builds[0].debug_session.session_enabled #=> Boolean
    #   resp.builds[0].debug_session.session_target #=> String
    #   resp.builds[0].build_batch_arn #=> String
    #   resp.builds_not_found #=> Array
    #   resp.builds_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuilds AWS API Documentation
    #
    # @overload batch_get_builds(params = {})
    # @param [Hash] params ({})
    def batch_get_builds(params = {}, options = {})
      req = build_request(:batch_get_builds, params)
      req.send_request(options)
    end

    # Gets information about one or more build projects.
    #
    # @option params [required, Array<String>] :names
    #   The names or ARNs of the build projects. To get information about a
    #   project shared with your AWS account, its ARN must be specified. You
    #   cannot specify a shared project using its name.
    #
    # @return [Types::BatchGetProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetProjectsOutput#projects #projects} => Array&lt;Types::Project&gt;
    #   * {Types::BatchGetProjectsOutput#projects_not_found #projects_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_projects({
    #     names: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].name #=> String
    #   resp.projects[0].arn #=> String
    #   resp.projects[0].description #=> String
    #   resp.projects[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.projects[0].source.location #=> String
    #   resp.projects[0].source.git_clone_depth #=> Integer
    #   resp.projects[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.projects[0].source.buildspec #=> String
    #   resp.projects[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.projects[0].source.auth.resource #=> String
    #   resp.projects[0].source.report_build_status #=> Boolean
    #   resp.projects[0].source.build_status_config.context #=> String
    #   resp.projects[0].source.build_status_config.target_url #=> String
    #   resp.projects[0].source.insecure_ssl #=> Boolean
    #   resp.projects[0].source.source_identifier #=> String
    #   resp.projects[0].secondary_sources #=> Array
    #   resp.projects[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.projects[0].secondary_sources[0].location #=> String
    #   resp.projects[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.projects[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.projects[0].secondary_sources[0].buildspec #=> String
    #   resp.projects[0].secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.projects[0].secondary_sources[0].auth.resource #=> String
    #   resp.projects[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.projects[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.projects[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.projects[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.projects[0].secondary_sources[0].source_identifier #=> String
    #   resp.projects[0].source_version #=> String
    #   resp.projects[0].secondary_source_versions #=> Array
    #   resp.projects[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.projects[0].secondary_source_versions[0].source_version #=> String
    #   resp.projects[0].artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.projects[0].artifacts.location #=> String
    #   resp.projects[0].artifacts.path #=> String
    #   resp.projects[0].artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.projects[0].artifacts.name #=> String
    #   resp.projects[0].artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.projects[0].artifacts.override_artifact_name #=> Boolean
    #   resp.projects[0].artifacts.encryption_disabled #=> Boolean
    #   resp.projects[0].artifacts.artifact_identifier #=> String
    #   resp.projects[0].secondary_artifacts #=> Array
    #   resp.projects[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.projects[0].secondary_artifacts[0].location #=> String
    #   resp.projects[0].secondary_artifacts[0].path #=> String
    #   resp.projects[0].secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.projects[0].secondary_artifacts[0].name #=> String
    #   resp.projects[0].secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.projects[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.projects[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.projects[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.projects[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.projects[0].cache.location #=> String
    #   resp.projects[0].cache.modes #=> Array
    #   resp.projects[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.projects[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.projects[0].environment.image #=> String
    #   resp.projects[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.projects[0].environment.environment_variables #=> Array
    #   resp.projects[0].environment.environment_variables[0].name #=> String
    #   resp.projects[0].environment.environment_variables[0].value #=> String
    #   resp.projects[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.projects[0].environment.privileged_mode #=> Boolean
    #   resp.projects[0].environment.certificate #=> String
    #   resp.projects[0].environment.registry_credential.credential #=> String
    #   resp.projects[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.projects[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.projects[0].service_role #=> String
    #   resp.projects[0].timeout_in_minutes #=> Integer
    #   resp.projects[0].queued_timeout_in_minutes #=> Integer
    #   resp.projects[0].encryption_key #=> String
    #   resp.projects[0].tags #=> Array
    #   resp.projects[0].tags[0].key #=> String
    #   resp.projects[0].tags[0].value #=> String
    #   resp.projects[0].created #=> Time
    #   resp.projects[0].last_modified #=> Time
    #   resp.projects[0].webhook.url #=> String
    #   resp.projects[0].webhook.payload_url #=> String
    #   resp.projects[0].webhook.secret #=> String
    #   resp.projects[0].webhook.branch_filter #=> String
    #   resp.projects[0].webhook.filter_groups #=> Array
    #   resp.projects[0].webhook.filter_groups[0] #=> Array
    #   resp.projects[0].webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"
    #   resp.projects[0].webhook.filter_groups[0][0].pattern #=> String
    #   resp.projects[0].webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.projects[0].webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH"
    #   resp.projects[0].webhook.last_modified_secret #=> Time
    #   resp.projects[0].vpc_config.vpc_id #=> String
    #   resp.projects[0].vpc_config.subnets #=> Array
    #   resp.projects[0].vpc_config.subnets[0] #=> String
    #   resp.projects[0].vpc_config.security_group_ids #=> Array
    #   resp.projects[0].vpc_config.security_group_ids[0] #=> String
    #   resp.projects[0].badge.badge_enabled #=> Boolean
    #   resp.projects[0].badge.badge_request_url #=> String
    #   resp.projects[0].logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.projects[0].logs_config.cloud_watch_logs.group_name #=> String
    #   resp.projects[0].logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.projects[0].logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.projects[0].logs_config.s3_logs.location #=> String
    #   resp.projects[0].logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.projects[0].file_system_locations #=> Array
    #   resp.projects[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.projects[0].file_system_locations[0].location #=> String
    #   resp.projects[0].file_system_locations[0].mount_point #=> String
    #   resp.projects[0].file_system_locations[0].identifier #=> String
    #   resp.projects[0].file_system_locations[0].mount_options #=> String
    #   resp.projects[0].build_batch_config.service_role #=> String
    #   resp.projects[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.projects[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.projects[0].build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.projects[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.projects[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.projects_not_found #=> Array
    #   resp.projects_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjects AWS API Documentation
    #
    # @overload batch_get_projects(params = {})
    # @param [Hash] params ({})
    def batch_get_projects(params = {}, options = {})
      req = build_request(:batch_get_projects, params)
      req.send_request(options)
    end

    # Returns an array of report groups.
    #
    # @option params [required, Array<String>] :report_group_arns
    #   An array of report group ARNs that identify the report groups to
    #   return.
    #
    # @return [Types::BatchGetReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetReportGroupsOutput#report_groups #report_groups} => Array&lt;Types::ReportGroup&gt;
    #   * {Types::BatchGetReportGroupsOutput#report_groups_not_found #report_groups_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_report_groups({
    #     report_group_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_groups #=> Array
    #   resp.report_groups[0].arn #=> String
    #   resp.report_groups[0].name #=> String
    #   resp.report_groups[0].type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_groups[0].export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_groups[0].export_config.s3_destination.bucket #=> String
    #   resp.report_groups[0].export_config.s3_destination.path #=> String
    #   resp.report_groups[0].export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_groups[0].export_config.s3_destination.encryption_key #=> String
    #   resp.report_groups[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_groups[0].created #=> Time
    #   resp.report_groups[0].last_modified #=> Time
    #   resp.report_groups[0].tags #=> Array
    #   resp.report_groups[0].tags[0].key #=> String
    #   resp.report_groups[0].tags[0].value #=> String
    #   resp.report_groups_not_found #=> Array
    #   resp.report_groups_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportGroups AWS API Documentation
    #
    # @overload batch_get_report_groups(params = {})
    # @param [Hash] params ({})
    def batch_get_report_groups(params = {}, options = {})
      req = build_request(:batch_get_report_groups, params)
      req.send_request(options)
    end

    # Returns an array of reports.
    #
    # @option params [required, Array<String>] :report_arns
    #   An array of ARNs that identify the `Report` objects to return.
    #
    # @return [Types::BatchGetReportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetReportsOutput#reports #reports} => Array&lt;Types::Report&gt;
    #   * {Types::BatchGetReportsOutput#reports_not_found #reports_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_reports({
    #     report_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reports #=> Array
    #   resp.reports[0].arn #=> String
    #   resp.reports[0].type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.reports[0].name #=> String
    #   resp.reports[0].report_group_arn #=> String
    #   resp.reports[0].execution_id #=> String
    #   resp.reports[0].status #=> String, one of "GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"
    #   resp.reports[0].created #=> Time
    #   resp.reports[0].expired #=> Time
    #   resp.reports[0].export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.reports[0].export_config.s3_destination.bucket #=> String
    #   resp.reports[0].export_config.s3_destination.path #=> String
    #   resp.reports[0].export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.reports[0].export_config.s3_destination.encryption_key #=> String
    #   resp.reports[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.reports[0].truncated #=> Boolean
    #   resp.reports[0].test_summary.total #=> Integer
    #   resp.reports[0].test_summary.status_counts #=> Hash
    #   resp.reports[0].test_summary.status_counts["String"] #=> Integer
    #   resp.reports[0].test_summary.duration_in_nano_seconds #=> Integer
    #   resp.reports[0].code_coverage_summary.line_coverage_percentage #=> Float
    #   resp.reports[0].code_coverage_summary.lines_covered #=> Integer
    #   resp.reports[0].code_coverage_summary.lines_missed #=> Integer
    #   resp.reports[0].code_coverage_summary.branch_coverage_percentage #=> Float
    #   resp.reports[0].code_coverage_summary.branches_covered #=> Integer
    #   resp.reports[0].code_coverage_summary.branches_missed #=> Integer
    #   resp.reports_not_found #=> Array
    #   resp.reports_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReports AWS API Documentation
    #
    # @overload batch_get_reports(params = {})
    # @param [Hash] params ({})
    def batch_get_reports(params = {}, options = {})
      req = build_request(:batch_get_reports, params)
      req.send_request(options)
    end

    # Creates a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @option params [String] :description
    #   A description that makes the build project easy to identify.
    #
    # @option params [required, Types::ProjectSource] :source
    #   Information about the build input source code for the build project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   An array of `ProjectSource` objects.
    #
    # @option params [String] :source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag name
    #     that corresponds to the version of the source code you want to
    #     build. If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a branch name is specified, the branch's HEAD commit ID is used. If
    #     not specified, the default branch's HEAD commit ID is used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of the
    #     object that represents the build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that version
    #   takes precedence over this `sourceVersion` (at the project level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take precedence over these `secondarySourceVersions` (at the project
    #   level).
    #
    # @option params [required, Types::ProjectArtifacts] :artifacts
    #   Information about the build output artifacts for the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   An array of `ProjectArtifacts` objects.
    #
    # @option params [Types::ProjectCache] :cache
    #   Stores recently used information so that it can be quickly accessed at
    #   a later time.
    #
    # @option params [required, Types::ProjectEnvironment] :environment
    #   Information about the build environment for the build project.
    #
    # @option params [required, String] :service_role
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   enables AWS CodeBuild to interact with dependent AWS services on
    #   behalf of the AWS account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait before it times out any build that has not been marked as
    #   completed. The default is 60 minutes.
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK) to
    #   be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. These can be logs in
    #   Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or
    #   both.
    #
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild build
    #   project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type` of
    #   a file system created using Amazon Elastic File System.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   A ProjectBuildBatchConfig object that defines the batch build options
    #   for the project.
    #
    # @return [Types::CreateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     name: "ProjectName", # required
    #     description: "ProjectDescription",
    #     source: { # required
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String",
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     artifacts: { # required
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #       },
    #     ],
    #     cache: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #     },
    #     environment: { # required
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #       },
    #       image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     },
    #     service_role: "NonEmptyString", # required
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #       },
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS", # accepts EFS
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String",
    #       },
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.source.location #=> String
    #   resp.project.source.git_clone_depth #=> Integer
    #   resp.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.build_status_config.context #=> String
    #   resp.project.source.build_status_config.target_url #=> String
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].build_status_config.context #=> String
    #   resp.project.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
    #   resp.project.source_version #=> String
    #   resp.project.secondary_source_versions #=> Array
    #   resp.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.project.secondary_source_versions[0].source_version #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.artifacts.override_artifact_name #=> Boolean
    #   resp.project.artifacts.encryption_disabled #=> Boolean
    #   resp.project.artifacts.artifact_identifier #=> String
    #   resp.project.secondary_artifacts #=> Array
    #   resp.project.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.secondary_artifacts[0].location #=> String
    #   resp.project.secondary_artifacts[0].path #=> String
    #   resp.project.secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.secondary_artifacts[0].name #=> String
    #   resp.project.secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.project.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.project.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.project.cache.location #=> String
    #   resp.project.cache.modes #=> Array
    #   resp.project.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.environment.registry_credential.credential #=> String
    #   resp.project.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.project.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.queued_timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #   resp.project.webhook.url #=> String
    #   resp.project.webhook.payload_url #=> String
    #   resp.project.webhook.secret #=> String
    #   resp.project.webhook.branch_filter #=> String
    #   resp.project.webhook.filter_groups #=> Array
    #   resp.project.webhook.filter_groups[0] #=> Array
    #   resp.project.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"
    #   resp.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.project.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH"
    #   resp.project.webhook.last_modified_secret #=> Time
    #   resp.project.vpc_config.vpc_id #=> String
    #   resp.project.vpc_config.subnets #=> Array
    #   resp.project.vpc_config.subnets[0] #=> String
    #   resp.project.vpc_config.security_group_ids #=> Array
    #   resp.project.vpc_config.security_group_ids[0] #=> String
    #   resp.project.badge.badge_enabled #=> Boolean
    #   resp.project.badge.badge_request_url #=> String
    #   resp.project.logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.project.logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.s3_logs.location #=> String
    #   resp.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.project.file_system_locations #=> Array
    #   resp.project.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.project.file_system_locations[0].location #=> String
    #   resp.project.file_system_locations[0].mount_point #=> String
    #   resp.project.file_system_locations[0].identifier #=> String
    #   resp.project.file_system_locations[0].mount_options #=> String
    #   resp.project.build_batch_config.service_role #=> String
    #   resp.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.project.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.project.build_batch_config.timeout_in_mins #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a report group. A report group contains a collection of
    # reports.
    #
    # @option params [required, String] :name
    #   The name of the report group.
    #
    # @option params [required, String] :type
    #   The type of report group.
    #
    # @option params [required, Types::ReportExportConfig] :export_config
    #   A `ReportExportConfig` object that contains information about where
    #   the report group test results are exported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this report group.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild report group tags.
    #
    # @return [Types::CreateReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReportGroupOutput#report_group #report_group} => Types::ReportGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report_group({
    #     name: "ReportGroupName", # required
    #     type: "TEST", # required, accepts TEST, CODE_COVERAGE
    #     export_config: { # required
    #       export_config_type: "S3", # accepts S3, NO_EXPORT
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         path: "String",
    #         packaging: "ZIP", # accepts ZIP, NONE
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.report_group.arn #=> String
    #   resp.report_group.name #=> String
    #   resp.report_group.type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_group.export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_group.export_config.s3_destination.bucket #=> String
    #   resp.report_group.export_config.s3_destination.path #=> String
    #   resp.report_group.export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_group.created #=> Time
    #   resp.report_group.last_modified #=> Time
    #   resp.report_group.tags #=> Array
    #   resp.report_group.tags[0].key #=> String
    #   resp.report_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateReportGroup AWS API Documentation
    #
    # @overload create_report_group(params = {})
    # @param [Hash] params ({})
    def create_report_group(params = {}, options = {})
      req = build_request(:create_report_group, params)
      req.send_request(options)
    end

    # For an existing AWS CodeBuild build project that has its source code
    # stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to
    # start rebuilding the source code every time a code change is pushed to
    # the repository.
    #
    # If you enable webhooks for an AWS CodeBuild project, and the project
    # is used as a build step in AWS CodePipeline, then two identical builds
    # are created for each commit. One build is triggered through webhooks,
    # and one through AWS CodePipeline. Because billing is on a per-build
    # basis, you are billed for both builds. Therefore, if you are using AWS
    # CodePipeline, we recommend that you disable webhooks in AWS CodeBuild.
    # In the AWS CodeBuild console, clear the Webhook box. For more
    # information, see step 5 in [Change a Build Project's Settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches the
    #   regular expression, then it is built. If `branchFilter` is empty, then
    #   all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #
    # @option params [Array<Array>] :filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine which
    #   webhooks are triggered. At least one `WebhookFilter` in the array must
    #   specify `EVENT` as its `type`.
    #
    #   For a build to be triggered, at least one filter group in the
    #   `filterGroups` array must pass. For a filter group to pass, each of
    #   its filters must pass.
    #
    # @option params [String] :build_type
    #   Specifies the type of build this webhook will trigger.
    #
    # @return [Types::CreateWebhookOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebhookOutput#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_webhook({
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE
    #           pattern: "String", # required
    #           exclude_matched_pattern: false,
    #         },
    #       ],
    #     ],
    #     build_type: "BUILD", # accepts BUILD, BUILD_BATCH
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
    #   resp.webhook.filter_groups #=> Array
    #   resp.webhook.filter_groups[0] #=> Array
    #   resp.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"
    #   resp.webhook.filter_groups[0][0].pattern #=> String
    #   resp.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH"
    #   resp.webhook.last_modified_secret #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhook AWS API Documentation
    #
    # @overload create_webhook(params = {})
    # @param [Hash] params ({})
    def create_webhook(params = {}, options = {})
      req = build_request(:create_webhook, params)
      req.send_request(options)
    end

    # Deletes a batch build.
    #
    # @option params [required, String] :id
    #   The identifier of the batch build to delete.
    #
    # @return [Types::DeleteBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBuildBatchOutput#status_code #status_code} => String
    #   * {Types::DeleteBuildBatchOutput#builds_deleted #builds_deleted} => Array&lt;String&gt;
    #   * {Types::DeleteBuildBatchOutput#builds_not_deleted #builds_not_deleted} => Array&lt;Types::BuildNotDeleted&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build_batch({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.builds_deleted #=> Array
    #   resp.builds_deleted[0] #=> String
    #   resp.builds_not_deleted #=> Array
    #   resp.builds_not_deleted[0].id #=> String
    #   resp.builds_not_deleted[0].status_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteBuildBatch AWS API Documentation
    #
    # @overload delete_build_batch(params = {})
    # @param [Hash] params ({})
    def delete_build_batch(params = {}, options = {})
      req = build_request(:delete_build_batch, params)
      req.send_request(options)
    end

    # Deletes a build project. When you delete a project, its builds are not
    # deleted.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     name: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a report.
    #
    # @option params [required, String] :arn
    #   The ARN of the report to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report({
    #     arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReport AWS API Documentation
    #
    # @overload delete_report(params = {})
    # @param [Hash] params ({})
    def delete_report(params = {}, options = {})
      req = build_request(:delete_report, params)
      req.send_request(options)
    end

    # Deletes a report group. Before you delete a report group, you must
    # delete its reports.
    #
    # @option params [required, String] :arn
    #   The ARN of the report group to delete.
    #
    # @option params [Boolean] :delete_reports
    #   If `true`, deletes any reports that belong to a report group before
    #   deleting the report group.
    #
    #   If `false`, you must delete any reports in the report group. Use
    #   [ListReportsForReportGroup][1] to get the reports in a report group.
    #   Use [DeleteReport][2] to delete the reports. If you call
    #   `DeleteReportGroup` for a report group that contains one or more
    #   reports, an exception is thrown.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_group({
    #     arn: "NonEmptyString", # required
    #     delete_reports: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportGroup AWS API Documentation
    #
    # @overload delete_report_group(params = {})
    # @param [Hash] params ({})
    def delete_report_group(params = {}, options = {})
      req = build_request(:delete_report_group, params)
      req.send_request(options)
    end

    # Deletes a resource policy that is identified by its resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
    # credentials.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the token.
    #
    # @return [Types::DeleteSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSourceCredentialsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_credentials({
    #     arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteSourceCredentials AWS API Documentation
    #
    # @overload delete_source_credentials(params = {})
    # @param [Hash] params ({})
    def delete_source_credentials(params = {}, options = {})
      req = build_request(:delete_source_credentials, params)
      req.send_request(options)
    end

    # For an existing AWS CodeBuild build project that has its source code
    # stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from
    # rebuilding the source code every time a code change is pushed to the
    # repository.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhook AWS API Documentation
    #
    # @overload delete_webhook(params = {})
    # @param [Hash] params ({})
    def delete_webhook(params = {}, options = {})
      req = build_request(:delete_webhook, params)
      req.send_request(options)
    end

    # Retrieves one or more code coverage reports.
    #
    # @option params [required, String] :report_arn
    #   The ARN of the report for which test cases are returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `DescribeCodeCoverages`. This specifies the next item to return. To
    #   return the beginning of the list, exclude this parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies if the results are sorted in ascending or descending order.
    #
    # @option params [String] :sort_by
    #   Specifies how the results are sorted. Possible values are:
    #
    #   FILE\_PATH
    #
    #   : The results are sorted by file path.
    #
    #   LINE\_COVERAGE\_PERCENTAGE
    #
    #   : The results are sorted by the percentage of lines that are covered.
    #
    # @option params [Float] :min_line_coverage_percentage
    #   The minimum line coverage percentage to report.
    #
    # @option params [Float] :max_line_coverage_percentage
    #   The maximum line coverage percentage to report.
    #
    # @return [Types::DescribeCodeCoveragesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeCoveragesOutput#next_token #next_token} => String
    #   * {Types::DescribeCodeCoveragesOutput#code_coverages #code_coverages} => Array&lt;Types::CodeCoverage&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_coverages({
    #     report_arn: "NonEmptyString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "LINE_COVERAGE_PERCENTAGE", # accepts LINE_COVERAGE_PERCENTAGE, FILE_PATH
    #     min_line_coverage_percentage: 1.0,
    #     max_line_coverage_percentage: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.code_coverages #=> Array
    #   resp.code_coverages[0].id #=> String
    #   resp.code_coverages[0].report_arn #=> String
    #   resp.code_coverages[0].file_path #=> String
    #   resp.code_coverages[0].line_coverage_percentage #=> Float
    #   resp.code_coverages[0].lines_covered #=> Integer
    #   resp.code_coverages[0].lines_missed #=> Integer
    #   resp.code_coverages[0].branch_coverage_percentage #=> Float
    #   resp.code_coverages[0].branches_covered #=> Integer
    #   resp.code_coverages[0].branches_missed #=> Integer
    #   resp.code_coverages[0].expired #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeCodeCoverages AWS API Documentation
    #
    # @overload describe_code_coverages(params = {})
    # @param [Hash] params ({})
    def describe_code_coverages(params = {}, options = {})
      req = build_request(:describe_code_coverages, params)
      req.send_request(options)
    end

    # Returns a list of details about test cases for a report.
    #
    # @option params [required, String] :report_arn
    #   The ARN of the report for which test cases are returned.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated test cases returned per response. Use
    #   `nextToken` to iterate pages in the list of returned `TestCase`
    #   objects. The default value is 100.
    #
    # @option params [Types::TestCaseFilter] :filter
    #   A `TestCaseFilter` object used to filter the returned reports.
    #
    # @return [Types::DescribeTestCasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestCasesOutput#next_token #next_token} => String
    #   * {Types::DescribeTestCasesOutput#test_cases #test_cases} => Array&lt;Types::TestCase&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_cases({
    #     report_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "String",
    #       keyword: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.test_cases #=> Array
    #   resp.test_cases[0].report_arn #=> String
    #   resp.test_cases[0].test_raw_data_path #=> String
    #   resp.test_cases[0].prefix #=> String
    #   resp.test_cases[0].name #=> String
    #   resp.test_cases[0].status #=> String
    #   resp.test_cases[0].duration_in_nano_seconds #=> Integer
    #   resp.test_cases[0].message #=> String
    #   resp.test_cases[0].expired #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeTestCases AWS API Documentation
    #
    # @overload describe_test_cases(params = {})
    # @param [Hash] params ({})
    def describe_test_cases(params = {}, options = {})
      req = build_request(:describe_test_cases, params)
      req.send_request(options)
    end

    # Gets a resource policy that is identified by its resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #
    # @return [Types::GetResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Imports the source repository credentials for an AWS CodeBuild project
    # that has its source code stored in a GitHub, GitHub Enterprise, or
    # Bitbucket repository.
    #
    # @option params [String] :username
    #   The Bitbucket username when the `authType` is BASIC\_AUTH. This
    #   parameter is not valid for other types of source providers or
    #   connections.
    #
    # @option params [required, String] :token
    #   For GitHub or GitHub Enterprise, this is the personal access token.
    #   For Bitbucket, this is the app password.
    #
    # @option params [required, String] :server_type
    #   The source provider used for this project.
    #
    # @option params [required, String] :auth_type
    #   The type of authentication used to connect to a GitHub, GitHub
    #   Enterprise, or Bitbucket repository. An OAUTH connection is not
    #   supported by the API and must be created using the AWS CodeBuild
    #   console.
    #
    # @option params [Boolean] :should_overwrite
    #   Set to `false` to prevent overwriting the repository source
    #   credentials. Set to `true` to overwrite the repository source
    #   credentials. The default value is `true`.
    #
    # @return [Types::ImportSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSourceCredentialsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_source_credentials({
    #     username: "NonEmptyString",
    #     token: "SensitiveNonEmptyString", # required
    #     server_type: "GITHUB", # required, accepts GITHUB, BITBUCKET, GITHUB_ENTERPRISE
    #     auth_type: "OAUTH", # required, accepts OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN
    #     should_overwrite: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ImportSourceCredentials AWS API Documentation
    #
    # @overload import_source_credentials(params = {})
    # @param [Hash] params ({})
    def import_source_credentials(params = {}, options = {})
      req = build_request(:import_source_credentials, params)
      req.send_request(options)
    end

    # Resets the cache for a project.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild build project that the cache is reset
    #   for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invalidate_project_cache({
    #     project_name: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCache AWS API Documentation
    #
    # @overload invalidate_project_cache(params = {})
    # @param [Hash] params ({})
    def invalidate_project_cache(params = {}, options = {})
      req = build_request(:invalidate_project_cache, params)
      req.send_request(options)
    end

    # Retrieves the identifiers of your build batches in the current region.
    #
    # @option params [Types::BuildBatchFilter] :filter
    #   A `BuildBatchFilter` object that specifies the filters for the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of the returned items. Valid values include:
    #
    #   * `ASCENDING`\: List the batch build identifiers in ascending order by
    #     identifier.
    #
    #   * `DESCENDING`\: List the batch build identifiers in descending order
    #     by identifier.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatches`. This specifies the next item to return. To return
    #   the beginning of the list, exclude this parameter.
    #
    # @return [Types::ListBuildBatchesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildBatchesOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildBatchesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches({
    #     filter: {
    #       status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatches AWS API Documentation
    #
    # @overload list_build_batches(params = {})
    # @param [Hash] params ({})
    def list_build_batches(params = {}, options = {})
      req = build_request(:list_build_batches, params)
      req.send_request(options)
    end

    # Retrieves the identifiers of the build batches for a specific project.
    #
    # @option params [String] :project_name
    #   The name of the project.
    #
    # @option params [Types::BuildBatchFilter] :filter
    #   A `BuildBatchFilter` object that specifies the filters for the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of the returned items. Valid values include:
    #
    #   * `ASCENDING`\: List the batch build identifiers in ascending order by
    #     identifier.
    #
    #   * `DESCENDING`\: List the batch build identifiers in descending order
    #     by identifier.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatchesForProject`. This specifies the next item to return.
    #   To return the beginning of the list, exclude this parameter.
    #
    # @return [Types::ListBuildBatchesForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildBatchesForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildBatchesForProjectOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches_for_project({
    #     project_name: "NonEmptyString",
    #     filter: {
    #       status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesForProject AWS API Documentation
    #
    # @overload list_build_batches_for_project(params = {})
    # @param [Hash] params ({})
    def list_build_batches_for_project(params = {}, options = {})
      req = build_request(:list_build_batches_for_project, params)
      req.send_request(options)
    end

    # Gets a list of build IDs, with each build ID representing a single
    # build.
    #
    # @option params [String] :sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuilds AWS API Documentation
    #
    # @overload list_builds(params = {})
    # @param [Hash] params ({})
    def list_builds(params = {}, options = {})
      req = build_request(:list_builds, params)
      req.send_request(options)
    end

    # Gets a list of build IDs for the specified build project, with each
    # build ID representing a single build.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @option params [String] :sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsForProjectOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds_for_project({
    #     project_name: "NonEmptyString", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProject AWS API Documentation
    #
    # @overload list_builds_for_project(params = {})
    # @param [Hash] params ({})
    def list_builds_for_project(params = {}, options = {})
      req = build_request(:list_builds_for_project, params)
      req.send_request(options)
    end

    # Gets information about Docker images that are managed by AWS
    # CodeBuild.
    #
    # @return [Types::ListCuratedEnvironmentImagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCuratedEnvironmentImagesOutput#platforms #platforms} => Array&lt;Types::EnvironmentPlatform&gt;
    #
    # @example Response structure
    #
    #   resp.platforms #=> Array
    #   resp.platforms[0].platform #=> String, one of "DEBIAN", "AMAZON_LINUX", "UBUNTU", "WINDOWS_SERVER"
    #   resp.platforms[0].languages #=> Array
    #   resp.platforms[0].languages[0].language #=> String, one of "JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE", "PHP"
    #   resp.platforms[0].languages[0].images #=> Array
    #   resp.platforms[0].languages[0].images[0].name #=> String
    #   resp.platforms[0].languages[0].images[0].description #=> String
    #   resp.platforms[0].languages[0].images[0].versions #=> Array
    #   resp.platforms[0].languages[0].images[0].versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImages AWS API Documentation
    #
    # @overload list_curated_environment_images(params = {})
    # @param [Hash] params ({})
    def list_curated_environment_images(params = {}, options = {})
      req = build_request(:list_curated_environment_images, params)
      req.send_request(options)
    end

    # Gets a list of build project names, with each build project name
    # representing a single build project.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build project names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`\: List based on when each build project was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List based on when information about each
    #     build project was last changed.
    #
    #   * `NAME`\: List based on each build project's name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #
    # @option params [String] :sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list build project
    #   names.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #   * {Types::ListProjectsOutput#projects #projects} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Gets a list ARNs for the report groups in the current AWS account.
    #
    # @option params [String] :sort_order
    #   Used to specify the order to sort the list of returned report groups.
    #   Valid values are `ASCENDING` and `DESCENDING`.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build report groups. Valid values
    #   include:
    #
    #   * `CREATED_TIME`\: List based on when each report group was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List based on when each report group was last
    #     changed.
    #
    #   * `NAME`\: List based on each report group's name.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated report groups returned per response.
    #   Use `nextToken` to iterate pages in the list of returned `ReportGroup`
    #   objects. The default value is 100.
    #
    # @return [Types::ListReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportGroupsOutput#next_token #next_token} => String
    #   * {Types::ListReportGroupsOutput#report_groups #report_groups} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_groups({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.report_groups #=> Array
    #   resp.report_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportGroups AWS API Documentation
    #
    # @overload list_report_groups(params = {})
    # @param [Hash] params ({})
    def list_report_groups(params = {}, options = {})
      req = build_request(:list_report_groups, params)
      req.send_request(options)
    end

    # Returns a list of ARNs for the reports in the current AWS account.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the list of returned reports. Valid
    #   values are:
    #
    #   * `ASCENDING`\: return reports in chronological order based on their
    #     creation date.
    #
    #   * `DESCENDING`\: return reports in the reverse chronological order
    #     based on their creation date.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated reports returned per response. Use
    #   `nextToken` to iterate pages in the list of returned `Report` objects.
    #   The default value is 100.
    #
    # @option params [Types::ReportFilter] :filter
    #   A `ReportFilter` object used to filter the returned reports.
    #
    # @return [Types::ListReportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsOutput#next_token #next_token} => String
    #   * {Types::ListReportsOutput#reports #reports} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reports #=> Array
    #   resp.reports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReports AWS API Documentation
    #
    # @overload list_reports(params = {})
    # @param [Hash] params ({})
    def list_reports(params = {}, options = {})
      req = build_request(:list_reports, params)
      req.send_request(options)
    end

    # Returns a list of ARNs for the reports that belong to a `ReportGroup`.
    #
    # @option params [required, String] :report_group_arn
    #   The ARN of the report group for which you want to return report ARNs.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [String] :sort_order
    #   Use to specify whether the results are returned in ascending or
    #   descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated reports in this report group returned
    #   per response. Use `nextToken` to iterate pages in the list of returned
    #   `Report` objects. The default value is 100.
    #
    # @option params [Types::ReportFilter] :filter
    #   A `ReportFilter` object used to filter the returned reports.
    #
    # @return [Types::ListReportsForReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsForReportGroupOutput#next_token #next_token} => String
    #   * {Types::ListReportsForReportGroupOutput#reports #reports} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports_for_report_group({
    #     report_group_arn: "String", # required
    #     next_token: "String",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reports #=> Array
    #   resp.reports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsForReportGroup AWS API Documentation
    #
    # @overload list_reports_for_report_group(params = {})
    # @param [Hash] params ({})
    def list_reports_for_report_group(params = {}, options = {})
      req = build_request(:list_reports_for_report_group, params)
      req.send_request(options)
    end

    # Gets a list of projects that are shared with other AWS accounts or
    # users.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build projects shared with the
    #   current AWS account or user. Valid values include:
    #
    #   * `ARN`\: List based on the ARN.
    #
    #   * `MODIFIED_TIME`\: List based on when information about the shared
    #     project was last changed.
    #
    # @option params [String] :sort_order
    #   The order in which to list shared build projects. Valid values
    #   include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated shared build projects returned per
    #   response. Use `nextToken` to iterate pages in the list of returned
    #   `Project` objects. The default value is 100.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @return [Types::ListSharedProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharedProjectsOutput#next_token #next_token} => String
    #   * {Types::ListSharedProjectsOutput#projects #projects} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_projects({
    #     sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedProjects AWS API Documentation
    #
    # @overload list_shared_projects(params = {})
    # @param [Hash] params ({})
    def list_shared_projects(params = {}, options = {})
      req = build_request(:list_shared_projects, params)
      req.send_request(options)
    end

    # Gets a list of report groups that are shared with other AWS accounts
    # or users.
    #
    # @option params [String] :sort_order
    #   The order in which to list shared report groups. Valid values include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list report groups shared with the current
    #   AWS account or user. Valid values include:
    #
    #   * `ARN`\: List based on the ARN.
    #
    #   * `MODIFIED_TIME`\: List based on when information about the shared
    #     report group was last changed.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated shared report groups per response. Use
    #   `nextToken` to iterate pages in the list of returned `ReportGroup`
    #   objects. The default value is 100.
    #
    # @return [Types::ListSharedReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharedReportGroupsOutput#next_token #next_token} => String
    #   * {Types::ListSharedReportGroupsOutput#report_groups #report_groups} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_report_groups({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.report_groups #=> Array
    #   resp.report_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedReportGroups AWS API Documentation
    #
    # @overload list_shared_report_groups(params = {})
    # @param [Hash] params ({})
    def list_shared_report_groups(params = {}, options = {})
      req = build_request(:list_shared_report_groups, params)
      req.send_request(options)
    end

    # Returns a list of `SourceCredentialsInfo` objects.
    #
    # @return [Types::ListSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceCredentialsOutput#source_credentials_infos #source_credentials_infos} => Array&lt;Types::SourceCredentialsInfo&gt;
    #
    # @example Response structure
    #
    #   resp.source_credentials_infos #=> Array
    #   resp.source_credentials_infos[0].arn #=> String
    #   resp.source_credentials_infos[0].server_type #=> String, one of "GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE"
    #   resp.source_credentials_infos[0].auth_type #=> String, one of "OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSourceCredentials AWS API Documentation
    #
    # @overload list_source_credentials(params = {})
    # @param [Hash] params ({})
    def list_source_credentials(params = {}, options = {})
      req = build_request(:list_source_credentials, params)
      req.send_request(options)
    end

    # Stores a resource policy for the ARN of a `Project` or `ReportGroup`
    # object.
    #
    # @option params [required, String] :policy
    #   A JSON-formatted resource policy. For more information, see [Sharing a
    #   Project][1] and [Sharing a Report Group][2] in the *AWS CodeBuild User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the `Project` or `ReportGroup` resource you want to
    #   associate with a resource policy.
    #
    # @return [Types::PutResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyOutput#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "NonEmptyString", # required
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Restarts a build.
    #
    # @option params [String] :id
    #   Specifies the identifier of the build to restart.
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuild` request. The token is included in the
    #   `RetryBuild` request and is valid for five minutes. If you repeat the
    #   `RetryBuild` request with the same token, but change a parameter, AWS
    #   CodeBuild returns a parameter mismatch error.
    #
    # @return [Types::RetryBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build({
    #     id: "NonEmptyString",
    #     idempotency_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuild AWS API Documentation
    #
    # @overload retry_build(params = {})
    # @param [Hash] params ({})
    def retry_build(params = {}, options = {})
      req = build_request(:retry_build, params)
      req.send_request(options)
    end

    # Restarts a batch build.
    #
    # @option params [String] :id
    #   Specifies the identifier of the batch build to restart.
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuildBatch` request. The token is included in
    #   the `RetryBuildBatch` request and is valid for five minutes. If you
    #   repeat the `RetryBuildBatch` request with the same token, but change a
    #   parameter, AWS CodeBuild returns a parameter mismatch error.
    #
    # @option params [String] :retry_type
    #   Specifies the type of retry to perform.
    #
    # @return [Types::RetryBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build_batch({
    #     id: "NonEmptyString",
    #     idempotency_token: "String",
    #     retry_type: "RETRY_ALL_BUILDS", # accepts RETRY_ALL_BUILDS, RETRY_FAILED_BUILDS
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildBatch AWS API Documentation
    #
    # @overload retry_build_batch(params = {})
    # @param [Hash] params ({})
    def retry_build_batch(params = {}, options = {})
      req = build_request(:retry_build_batch, params)
      req.send_request(options)
    end

    # Starts running a build.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild build project to start running a build.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   An array of `ProjectSource` objects.
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that specify one or more
    #   versions of the project's secondary sources to be used for this build
    #   only.
    #
    # @option params [String] :source_version
    #   The version of the build input to be built, for this build only. If
    #   not specified, the latest version is used. If specified, the contents
    #   depends on the source provider:
    #
    #   AWS CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon Simple Storage Service (Amazon S3)
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   Build output artifact settings that override, for this build only, the
    #   latest ones already defined in the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the build project.
    #
    # @option params [String] :source_type_override
    #   A source input type, for this build, that overrides the source input
    #   defined in the build project.
    #
    # @option params [String] :source_location_override
    #   A location that overrides, for this build, the source location for the
    #   one defined in the build project.
    #
    # @option params [Types::SourceAuth] :source_auth_override
    #   An authorization type for this build that overrides the one defined in
    #   the build project. This override applies only if the build project's
    #   source is BitBucket or GitHub.
    #
    # @option params [Integer] :git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this build only, any previous depth of history defined
    #   in the build project.
    #
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   Information about the Git submodules configuration for this build of
    #   an AWS CodeBuild build project.
    #
    # @option params [String] :buildspec_override
    #   A buildspec file declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #
    #   If this value is set, it can be either an inline buildspec definition,
    #   the path to an alternate buildspec file relative to the value of the
    #   built-in `CODEBUILD_SRC_DIR` environment variable, or the path to an
    #   S3 bucket. The bucket must be in the same AWS Region as the build
    #   project. Specify the buildspec file using its ARN (for example,
    #   `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this value is
    #   not provided or is set to an empty string, the source code must
    #   contain a buildspec file in its root directory. For more information,
    #   see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #
    # @option params [Boolean] :insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the build project. The insecure SSL setting determines
    #   whether to ignore SSL warnings while connecting to the project source
    #   code. This override applies only if the build's source is GitHub
    #   Enterprise.
    #
    # @option params [Boolean] :report_build_status_override
    #   Set to true to report to your source provider the status of a build's
    #   start and completion. If you use this option with a source provider
    #   other than GitHub, GitHub Enterprise, or Bitbucket, an
    #   invalidInputException is thrown.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #
    # @option params [Types::BuildStatusConfig] :build_status_config_override
    #   Contains information that defines how the build project reports the
    #   build status to the source provider. This option is only used when the
    #   source provider is `GITHUB`, `GITHUB_ENTERPRISE`, or `BITBUCKET`.
    #
    # @option params [String] :environment_type_override
    #   A container type for this build that overrides the one specified in
    #   the build project.
    #
    # @option params [String] :image_override
    #   The name of an image for this build that overrides the one specified
    #   in the build project.
    #
    # @option params [String] :compute_type_override
    #   The name of a compute type for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [String] :certificate_override
    #   The name of a certificate for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [Types::ProjectCache] :cache_override
    #   A ProjectCache object specified for this build that overrides the one
    #   defined in the build project.
    #
    # @option params [String] :service_role_override
    #   The name of a service role for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [Boolean] :privileged_mode_override
    #   Enable this flag to override privileged mode in the build project.
    #
    # @option params [Integer] :timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 480 (8 hours), that
    #   overrides, for this build only, the latest setting already defined in
    #   the build project.
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key_override
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   that overrides the one specified in the build project. The CMK key
    #   encrypts the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the StartBuild request. The token is included in the
    #   StartBuild request and is valid for 5 minutes. If you repeat the
    #   StartBuild request with the same token, but change a parameter, AWS
    #   CodeBuild returns a parameter mismatch error.
    #
    # @option params [Types::LogsConfig] :logs_config_override
    #   Log settings for this build that override the log settings defined in
    #   the build project.
    #
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   The credentials for access to a private registry.
    #
    # @option params [String] :image_pull_credentials_type_override
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   build. There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that AWS CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust AWS CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that AWS CodeBuild uses your build project's service
    #     role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an AWS CodeBuild curated image,
    #   you must use `CODEBUILD` credentials.
    #
    # @option params [Boolean] :debug_session_enabled
    #   Specifies if session debugging is enabled for this build. For more
    #   information, see [Viewing a running build in Session Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #
    # @return [Types::StartBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build({
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #       },
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #       },
    #     ],
    #     source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH", # required, accepts OAUTH
    #       resource: "String",
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_status_override: false,
    #     build_status_config_override: {
    #       context: "String",
    #       target_url: "String",
    #     },
    #     environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #       },
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     debug_session_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuild AWS API Documentation
    #
    # @overload start_build(params = {})
    # @param [Hash] params ({})
    def start_build(params = {}, options = {})
      req = build_request(:start_build, params)
      req.send_request(options)
    end

    # Starts a batch build for a project.
    #
    # @option params [required, String] :project_name
    #   The name of the project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   An array of `ProjectSource` objects that override the secondary
    #   sources defined in the batch build project.
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that override the secondary
    #   source versions in the batch build project.
    #
    # @option params [String] :source_version
    #   The version of the batch build input to be built, for this build only.
    #   If not specified, the latest version is used. If specified, the
    #   contents depends on the source provider:
    #
    #   AWS CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon Simple Storage Service (Amazon S3)
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   An array of `ProjectArtifacts` objects that contains information about
    #   the build output artifact overrides for the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects that override the secondary
    #   artifacts defined in the batch build project.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   An array of `EnvironmentVariable` objects that override, or add to,
    #   the environment variables defined in the batch build project.
    #
    # @option params [String] :source_type_override
    #   The source input type that overrides the source input defined in the
    #   batch build project.
    #
    # @option params [String] :source_location_override
    #   A location that overrides, for this batch build, the source location
    #   defined in the batch build project.
    #
    # @option params [Types::SourceAuth] :source_auth_override
    #   A `SourceAuth` object that overrides the one defined in the batch
    #   build project. This override applies only if the build project's
    #   source is BitBucket or GitHub.
    #
    # @option params [Integer] :git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this batch build only, any previous depth of history
    #   defined in the batch build project.
    #
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   A `GitSubmodulesConfig` object that overrides the Git submodules
    #   configuration for this batch build.
    #
    # @option params [String] :buildspec_override
    #   A buildspec file declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #
    #   If this value is set, it can be either an inline buildspec definition,
    #   the path to an alternate buildspec file relative to the value of the
    #   built-in `CODEBUILD_SRC_DIR` environment variable, or the path to an
    #   S3 bucket. The bucket must be in the same AWS Region as the build
    #   project. Specify the buildspec file using its ARN (for example,
    #   `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this value is
    #   not provided or is set to an empty string, the source code must
    #   contain a buildspec file in its root directory. For more information,
    #   see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #
    # @option params [Boolean] :insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the batch build project. The insecure SSL setting
    #   determines whether to ignore SSL warnings while connecting to the
    #   project source code. This override applies only if the build's source
    #   is GitHub Enterprise.
    #
    # @option params [Boolean] :report_build_batch_status_override
    #   Set to `true` to report to your source provider the status of a batch
    #   build's start and completion. If you use this option with a source
    #   provider other than GitHub, GitHub Enterprise, or Bitbucket, an
    #   `invalidInputException` is thrown.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #
    # @option params [String] :environment_type_override
    #   A container type for this batch build that overrides the one specified
    #   in the batch build project.
    #
    # @option params [String] :image_override
    #   The name of an image for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [String] :compute_type_override
    #   The name of a compute type for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [String] :certificate_override
    #   The name of a certificate for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [Types::ProjectCache] :cache_override
    #   A `ProjectCache` object that specifies cache overrides.
    #
    # @option params [String] :service_role_override
    #   The name of a service role for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [Boolean] :privileged_mode_override
    #   Enable this flag to override privileged mode in the batch build
    #   project.
    #
    # @option params [Integer] :build_timeout_in_minutes_override
    #   Overrides the build timeout specified in the batch build project.
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   The number of minutes a batch build is allowed to be queued before it
    #   times out.
    #
    # @option params [String] :encryption_key_override
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   that overrides the one specified in the batch build project. The CMK
    #   key encrypts the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `StartBuildBatch` request. The token is included in
    #   the `StartBuildBatch` request and is valid for five minutes. If you
    #   repeat the `StartBuildBatch` request with the same token, but change a
    #   parameter, AWS CodeBuild returns a parameter mismatch error.
    #
    # @option params [Types::LogsConfig] :logs_config_override
    #   A `LogsConfig` object that override the log settings defined in the
    #   batch build project.
    #
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   A `RegistryCredential` object that overrides credentials for access to
    #   a private registry.
    #
    # @option params [String] :image_pull_credentials_type_override
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   batch build. There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that AWS CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust AWS CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that AWS CodeBuild uses your build project's service
    #     role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an AWS CodeBuild curated image,
    #   you must use `CODEBUILD` credentials.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config_override
    #   A `BuildBatchConfigOverride` object that contains batch build
    #   configuration overrides.
    #
    # @return [Types::StartBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build_batch({
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #       },
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #       },
    #     ],
    #     source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH", # required, accepts OAUTH
    #       resource: "String",
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_batch_status_override: false,
    #     environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     build_timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #       },
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     build_batch_config_override: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildBatch AWS API Documentation
    #
    # @overload start_build_batch(params = {})
    # @param [Hash] params ({})
    def start_build_batch(params = {}, options = {})
      req = build_request(:start_build_batch, params)
      req.send_request(options)
    end

    # Attempts to stop running a build.
    #
    # @option params [required, String] :id
    #   The ID of the build.
    #
    # @return [Types::StopBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuild AWS API Documentation
    #
    # @overload stop_build(params = {})
    # @param [Hash] params ({})
    def stop_build(params = {}, options = {})
      req = build_request(:stop_build, params)
      req.send_request(options)
    end

    # Stops a running batch build.
    #
    # @option params [required, String] :id
    #   The identifier of the batch build to stop.
    #
    # @return [Types::StopBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build_batch({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildBatch AWS API Documentation
    #
    # @overload stop_build_batch(params = {})
    # @param [Hash] params ({})
    def stop_build_batch(params = {}, options = {})
      req = build_request(:stop_build_batch, params)
      req.send_request(options)
    end

    # Changes the settings of a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    #   <note markdown="1"> You cannot change a build project's name.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A new or replacement description of the build project.
    #
    # @option params [Types::ProjectSource] :source
    #   Information to be changed about the build input source code for the
    #   build project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   An array of `ProjectSource` objects.
    #
    # @option params [String] :source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag name
    #     that corresponds to the version of the source code you want to
    #     build. If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a branch name is specified, the branch's HEAD commit ID is used. If
    #     not specified, the default branch's HEAD commit ID is used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of the
    #     object that represents the build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that version
    #   takes precedence over this `sourceVersion` (at the project level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take over these `secondarySourceVersions` (at the project level).
    #
    # @option params [Types::ProjectArtifacts] :artifacts
    #   Information to be changed about the build output artifacts for the
    #   build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   An array of `ProjectSource` objects.
    #
    # @option params [Types::ProjectCache] :cache
    #   Stores recently used information so that it can be quickly accessed at
    #   a later time.
    #
    # @option params [Types::ProjectEnvironment] :environment
    #   Information to be changed about the build environment for the build
    #   project.
    #
    # @option params [String] :service_role
    #   The replacement ARN of the AWS Identity and Access Management (IAM)
    #   role that enables AWS CodeBuild to interact with dependent AWS
    #   services on behalf of the AWS account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The replacement value in minutes, from 5 to 480 (8 hours), for AWS
    #   CodeBuild to wait before timing out any related build that did not get
    #   marked as completed.
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK) to
    #   be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   An updated list of tag key and value pairs associated with this build
    #   project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. A project can create
    #   logs in Amazon CloudWatch Logs, logs in an S3 bucket, or both.
    #
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild build
    #   project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type` of
    #   a file system created using Amazon Elastic File System.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   Contains configuration information about a batch build project.
    #
    # @return [Types::UpdateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     name: "NonEmptyString", # required
    #     description: "ProjectDescription",
    #     source: {
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String",
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     artifacts: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #       },
    #     ],
    #     cache: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #     },
    #     environment: {
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #       },
    #       image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #       },
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS", # accepts EFS
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String",
    #       },
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.source.location #=> String
    #   resp.project.source.git_clone_depth #=> Integer
    #   resp.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.build_status_config.context #=> String
    #   resp.project.source.build_status_config.target_url #=> String
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].build_status_config.context #=> String
    #   resp.project.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
    #   resp.project.source_version #=> String
    #   resp.project.secondary_source_versions #=> Array
    #   resp.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.project.secondary_source_versions[0].source_version #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.artifacts.override_artifact_name #=> Boolean
    #   resp.project.artifacts.encryption_disabled #=> Boolean
    #   resp.project.artifacts.artifact_identifier #=> String
    #   resp.project.secondary_artifacts #=> Array
    #   resp.project.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.secondary_artifacts[0].location #=> String
    #   resp.project.secondary_artifacts[0].path #=> String
    #   resp.project.secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.secondary_artifacts[0].name #=> String
    #   resp.project.secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.project.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.project.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.project.cache.location #=> String
    #   resp.project.cache.modes #=> Array
    #   resp.project.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.environment.registry_credential.credential #=> String
    #   resp.project.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.project.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.queued_timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #   resp.project.webhook.url #=> String
    #   resp.project.webhook.payload_url #=> String
    #   resp.project.webhook.secret #=> String
    #   resp.project.webhook.branch_filter #=> String
    #   resp.project.webhook.filter_groups #=> Array
    #   resp.project.webhook.filter_groups[0] #=> Array
    #   resp.project.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"
    #   resp.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.project.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH"
    #   resp.project.webhook.last_modified_secret #=> Time
    #   resp.project.vpc_config.vpc_id #=> String
    #   resp.project.vpc_config.subnets #=> Array
    #   resp.project.vpc_config.subnets[0] #=> String
    #   resp.project.vpc_config.security_group_ids #=> Array
    #   resp.project.vpc_config.security_group_ids[0] #=> String
    #   resp.project.badge.badge_enabled #=> Boolean
    #   resp.project.badge.badge_request_url #=> String
    #   resp.project.logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.project.logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.s3_logs.location #=> String
    #   resp.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.project.file_system_locations #=> Array
    #   resp.project.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.project.file_system_locations[0].location #=> String
    #   resp.project.file_system_locations[0].mount_point #=> String
    #   resp.project.file_system_locations[0].identifier #=> String
    #   resp.project.file_system_locations[0].mount_options #=> String
    #   resp.project.build_batch_config.service_role #=> String
    #   resp.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.project.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.project.build_batch_config.timeout_in_mins #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates a report group.
    #
    # @option params [required, String] :arn
    #   The ARN of the report group to update.
    #
    # @option params [Types::ReportExportConfig] :export_config
    #   Used to specify an updated export type. Valid values are:
    #
    #   * `S3`\: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`\: The report results are not exported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An updated list of tag key and value pairs associated with this report
    #   group.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild report group tags.
    #
    # @return [Types::UpdateReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateReportGroupOutput#report_group #report_group} => Types::ReportGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_group({
    #     arn: "NonEmptyString", # required
    #     export_config: {
    #       export_config_type: "S3", # accepts S3, NO_EXPORT
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         path: "String",
    #         packaging: "ZIP", # accepts ZIP, NONE
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.report_group.arn #=> String
    #   resp.report_group.name #=> String
    #   resp.report_group.type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_group.export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_group.export_config.s3_destination.bucket #=> String
    #   resp.report_group.export_config.s3_destination.path #=> String
    #   resp.report_group.export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_group.created #=> Time
    #   resp.report_group.last_modified #=> Time
    #   resp.report_group.tags #=> Array
    #   resp.report_group.tags[0].key #=> String
    #   resp.report_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateReportGroup AWS API Documentation
    #
    # @overload update_report_group(params = {})
    # @param [Hash] params ({})
    def update_report_group(params = {}, options = {})
      req = build_request(:update_report_group, params)
      req.send_request(options)
    end

    # Updates the webhook associated with an AWS CodeBuild build project.
    #
    # <note markdown="1"> If you use Bitbucket for your repository, `rotateSecret` is ignored.
    #
    #  </note>
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches the
    #   regular expression, then it is built. If `branchFilter` is empty, then
    #   all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #
    # @option params [Boolean] :rotate_secret
    #   A boolean value that specifies whether the associated GitHub
    #   repository's secret token should be updated. If you use Bitbucket for
    #   your repository, `rotateSecret` is ignored.
    #
    # @option params [Array<Array>] :filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine if a
    #   webhook event can trigger a build. A filter group must contain at
    #   least one `EVENT` `WebhookFilter`.
    #
    # @option params [String] :build_type
    #   Specifies the type of build this webhook will trigger.
    #
    # @return [Types::UpdateWebhookOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebhookOutput#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_webhook({
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     rotate_secret: false,
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE
    #           pattern: "String", # required
    #           exclude_matched_pattern: false,
    #         },
    #       ],
    #     ],
    #     build_type: "BUILD", # accepts BUILD, BUILD_BATCH
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
    #   resp.webhook.filter_groups #=> Array
    #   resp.webhook.filter_groups[0] #=> Array
    #   resp.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"
    #   resp.webhook.filter_groups[0][0].pattern #=> String
    #   resp.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH"
    #   resp.webhook.last_modified_secret #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhook AWS API Documentation
    #
    # @overload update_webhook(params = {})
    # @param [Hash] params ({})
    def update_webhook(params = {}, options = {})
      req = build_request(:update_webhook, params)
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
      context[:gem_name] = 'aws-sdk-codebuild'
      context[:gem_version] = '1.63.0'
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
