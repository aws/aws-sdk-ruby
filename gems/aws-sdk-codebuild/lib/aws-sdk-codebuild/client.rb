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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:codebuild)

module Aws::CodeBuild
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
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

    # Gets information about builds.
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
    #   resp.builds[0].start_time #=> Time
    #   resp.builds[0].end_time #=> Time
    #   resp.builds[0].current_phase #=> String
    #   resp.builds[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].source_version #=> String
    #   resp.builds[0].project_name #=> String
    #   resp.builds[0].phases #=> Array
    #   resp.builds[0].phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
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
    #   resp.builds[0].source.buildspec #=> String
    #   resp.builds[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.builds[0].source.auth.resource #=> String
    #   resp.builds[0].source.report_build_status #=> Boolean
    #   resp.builds[0].source.insecure_ssl #=> Boolean
    #   resp.builds[0].source.source_identifier #=> String
    #   resp.builds[0].secondary_sources #=> Array
    #   resp.builds[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.builds[0].secondary_sources[0].location #=> String
    #   resp.builds[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.builds[0].secondary_sources[0].buildspec #=> String
    #   resp.builds[0].secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.builds[0].secondary_sources[0].auth.resource #=> String
    #   resp.builds[0].secondary_sources[0].report_build_status #=> Boolean
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
    #   resp.builds[0].cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.builds[0].cache.location #=> String
    #   resp.builds[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.builds[0].environment.image #=> String
    #   resp.builds[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.builds[0].environment.environment_variables #=> Array
    #   resp.builds[0].environment.environment_variables[0].name #=> String
    #   resp.builds[0].environment.environment_variables[0].value #=> String
    #   resp.builds[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.builds[0].environment.privileged_mode #=> Boolean
    #   resp.builds[0].environment.certificate #=> String
    #   resp.builds[0].service_role #=> String
    #   resp.builds[0].logs.group_name #=> String
    #   resp.builds[0].logs.stream_name #=> String
    #   resp.builds[0].logs.deep_link #=> String
    #   resp.builds[0].logs.s3_deep_link #=> String
    #   resp.builds[0].logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.builds[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.builds[0].logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.s3_logs.location #=> String
    #   resp.builds[0].timeout_in_minutes #=> Integer
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

    # Gets information about build projects.
    #
    # @option params [required, Array<String>] :names
    #   The names of the build projects.
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
    #   resp.projects[0].source.buildspec #=> String
    #   resp.projects[0].source.auth.type #=> String, one of "OAUTH"
    #   resp.projects[0].source.auth.resource #=> String
    #   resp.projects[0].source.report_build_status #=> Boolean
    #   resp.projects[0].source.insecure_ssl #=> Boolean
    #   resp.projects[0].source.source_identifier #=> String
    #   resp.projects[0].secondary_sources #=> Array
    #   resp.projects[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.projects[0].secondary_sources[0].location #=> String
    #   resp.projects[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.projects[0].secondary_sources[0].buildspec #=> String
    #   resp.projects[0].secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.projects[0].secondary_sources[0].auth.resource #=> String
    #   resp.projects[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.projects[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.projects[0].secondary_sources[0].source_identifier #=> String
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
    #   resp.projects[0].cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.projects[0].cache.location #=> String
    #   resp.projects[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.projects[0].environment.image #=> String
    #   resp.projects[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.projects[0].environment.environment_variables #=> Array
    #   resp.projects[0].environment.environment_variables[0].name #=> String
    #   resp.projects[0].environment.environment_variables[0].value #=> String
    #   resp.projects[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.projects[0].environment.privileged_mode #=> Boolean
    #   resp.projects[0].environment.certificate #=> String
    #   resp.projects[0].service_role #=> String
    #   resp.projects[0].timeout_in_minutes #=> Integer
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
    #   wait until timing out any build that has not been marked as completed.
    #   The default is 60 minutes.
    #
    # @option params [String] :encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK) to
    #   be used for encrypting the build output artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly-accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. Logs can be Amazon
    #   CloudWatch Logs, uploaded to a specified S3 bucket, or both.
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
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         insecure_ssl: false,
    #         source_identifier: "String",
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
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3
    #       location: "String",
    #     },
    #     environment: { # required
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #     },
    #     service_role: "NonEmptyString", # required
    #     timeout_in_minutes: 1,
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
    #       },
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
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
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
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.project.cache.location #=> String
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # For an existing AWS CodeBuild build project that has its source code
    # stored in a GitHub repository, enables AWS CodeBuild to begin
    # automatically rebuilding the source code every time a code change is
    # pushed to the repository.
    #
    # If you enable webhooks for an AWS CodeBuild project, and the project
    # is used as a build step in AWS CodePipeline, then two identical builds
    # will be created for each commit. One build is triggered through
    # webhooks, and one through AWS CodePipeline. Because billing is on a
    # per-build basis, you will be billed for both builds. Therefore, if you
    # are using AWS CodePipeline, we recommend that you disable webhooks in
    # CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For
    # more information, see step 5 in [Change a Build Project's
    # Settings][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which branches in a repository
    #   are built when a webhook is triggered. If the name of a branch matches
    #   the regular expression, then it is built. If it doesn't match, then
    #   it is not. If branchFilter is empty, then all branches are built.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
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

    # Deletes a build project.
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

    # For an existing AWS CodeBuild build project that has its source code
    # stored in a GitHub repository, stops AWS CodeBuild from automatically
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

    # Resets the cache for a project.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild build project that the cache will be
    #   reset for.
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
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
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
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsForProjectOutput#next_token #next_token} => String
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
    #   resp.platforms[0].languages[0].language #=> String, one of "JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE"
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
    #   * `CREATED_TIME`\: List the build project names based on when each
    #     build project was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List the build project names based on when
    #     information about each build project was last changed.
    #
    #   * `NAME`\: List the build project names based on each build project's
    #     name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #
    # @option params [String] :sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`\: List the build project names in ascending order.
    #
    #   * `DESCENDING`\: List the build project names in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list build project
    #   names.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #   * {Types::ListProjectsOutput#projects #projects} => Array&lt;String&gt;
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
    #   A version of the build input to be built, for this build only. If not
    #   specified, the latest version will be used. If specified, must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag name
    #     that corresponds to the version of the source code you want to
    #     build. If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID will be used. If not
    #     specified, the default branch's HEAD commit ID will be used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a branch name is specified, the branch's HEAD commit ID will be
    #     used. If not specified, the default branch's HEAD commit ID will be
    #     used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of the
    #     object representing the build input ZIP file to use.
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
    #   A source input type for this build that overrides the source input
    #   defined in the build project.
    #
    # @option params [String] :source_location_override
    #   A location that overrides for this build the source location for the
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
    # @option params [String] :buildspec_override
    #   A build spec declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
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
    #   other than GitHub, an invalidInputException is thrown.
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
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the StartBuild request. The token is included in the
    #   StartBuild request and is valid for 12 hours. If you repeat the
    #   StartBuild request with the same token, but change a parameter, AWS
    #   CodeBuild returns a parameter mismatch error.
    #
    # @option params [Types::LogsConfig] :logs_config_override
    #   Log settings for this build that override the log settings defined in
    #   the build project.
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
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
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
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #       },
    #     ],
    #     source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH", # required, accepts OAUTH
    #       resource: "String",
    #     },
    #     git_clone_depth_override: 1,
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_status_override: false,
    #     environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3
    #       location: "String",
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     timeout_in_minutes_override: 1,
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
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
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
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
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
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.build.cache.location #=> String
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.timeout_in_minutes #=> Integer
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuild AWS API Documentation
    #
    # @overload start_build(params = {})
    # @param [Hash] params ({})
    def start_build(params = {}, options = {})
      req = build_request(:start_build, params)
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
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
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
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
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
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.build.cache.location #=> String
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.timeout_in_minutes #=> Integer
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuild AWS API Documentation
    #
    # @overload stop_build(params = {})
    # @param [Hash] params ({})
    def stop_build(params = {}, options = {})
      req = build_request(:stop_build, params)
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
    # @option params [String] :encryption_key
    #   The replacement AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) to be used for encrypting the build output artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The replacement set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly-accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. A project can create
    #   Amazon CloudWatch Logs, logs in an S3 bucket, or both.
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
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         insecure_ssl: false,
    #         source_identifier: "String",
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
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3
    #       location: "String",
    #     },
    #     environment: {
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
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
    #       },
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
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
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
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3"
    #   resp.project.cache.location #=> String
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates the webhook associated with an AWS CodeBuild build project.
    #
    # @option params [required, String] :project_name
    #   The name of the AWS CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which branches in a repository
    #   are built when a webhook is triggered. If the name of a branch matches
    #   the regular expression, then it is built. If it doesn't match, then
    #   it is not. If branchFilter is empty, then all branches are built.
    #
    # @option params [Boolean] :rotate_secret
    #   A boolean value that specifies whether the associated repository's
    #   secret token should be updated.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
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
