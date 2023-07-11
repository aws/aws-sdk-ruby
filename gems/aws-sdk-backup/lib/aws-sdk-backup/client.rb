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

Aws::Plugins::GlobalConfiguration.add_identifier(:backup)

module Aws::Backup
  # An API client for Backup.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Backup::Client.new(
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

    @identifier = :backup

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
    add_plugin(Aws::Backup::Plugins::Endpoints)

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
    #   @option options [Aws::Backup::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Backup::EndpointParameters`
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

    # This action removes the specified legal hold on a recovery point. This
    # action can only be performed by a user with sufficient permissions.
    #
    # @option params [required, String] :legal_hold_id
    #   Legal hold ID required to remove the specified legal hold on a
    #   recovery point.
    #
    # @option params [required, String] :cancel_description
    #   String describing the reason for removing the legal hold.
    #
    # @option params [Integer] :retain_record_in_days
    #   The integer amount in days specifying amount of days after this API
    #   operation to remove legal hold.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_legal_hold({
    #     legal_hold_id: "string", # required
    #     cancel_description: "string", # required
    #     retain_record_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CancelLegalHold AWS API Documentation
    #
    # @overload cancel_legal_hold(params = {})
    # @param [Hash] params ({})
    def cancel_legal_hold(params = {}, options = {})
      req = build_request(:cancel_legal_hold, params)
      req.send_request(options)
    end

    # Creates a backup plan using a backup plan name and backup rules. A
    # backup plan is a document that contains information that Backup uses
    # to schedule tasks that create recovery points for resources.
    #
    # If you call `CreateBackupPlan` with a plan that already exists, you
    # receive an `AlreadyExistsException` exception.
    #
    # @option params [required, Types::BackupPlanInput] :backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #
    # @option params [Hash<String,String>] :backup_plan_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair. The
    #   specified tags are assigned to all backups created with this plan.
    #
    # @option params [String] :creator_request_id
    #   Identifies the request and allows failed requests to be retried
    #   without the risk of running the operation twice. If the request
    #   includes a `CreatorRequestId` that matches an existing backup plan,
    #   that plan is returned. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or '-\_.'
    #   characters.
    #
    # @return [Types::CreateBackupPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupPlanOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::CreateBackupPlanOutput#backup_plan_arn #backup_plan_arn} => String
    #   * {Types::CreateBackupPlanOutput#creation_date #creation_date} => Time
    #   * {Types::CreateBackupPlanOutput#version_id #version_id} => String
    #   * {Types::CreateBackupPlanOutput#advanced_backup_settings #advanced_backup_settings} => Array&lt;Types::AdvancedBackupSetting&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_plan({
    #     backup_plan: { # required
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             },
    #           ],
    #           enable_continuous_backup: false,
    #         },
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue",
    #           },
    #         },
    #       ],
    #     },
    #     backup_plan_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     creator_request_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan_id #=> String
    #   resp.backup_plan_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.version_id #=> String
    #   resp.advanced_backup_settings #=> Array
    #   resp.advanced_backup_settings[0].resource_type #=> String
    #   resp.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupPlan AWS API Documentation
    #
    # @overload create_backup_plan(params = {})
    # @param [Hash] params ({})
    def create_backup_plan(params = {}, options = {})
      req = build_request(:create_backup_plan, params)
      req.send_request(options)
    end

    # Creates a JSON document that specifies a set of resources to assign to
    # a backup plan. For examples, see [Assigning resources
    # programmatically][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies the backup plan to be associated with the
    #   selection of resources.
    #
    # @option params [required, Types::BackupSelection] :backup_selection
    #   Specifies the body of a request to assign a set of resources to a
    #   backup plan.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and allows failed requests
    #   to be retried without the risk of running the operation twice. This
    #   parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or '-\_.'
    #   characters.
    #
    # @return [Types::CreateBackupSelectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupSelectionOutput#selection_id #selection_id} => String
    #   * {Types::CreateBackupSelectionOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::CreateBackupSelectionOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_selection({
    #     backup_plan_id: "string", # required
    #     backup_selection: { # required
    #       selection_name: "BackupSelectionName", # required
    #       iam_role_arn: "IAMRoleArn", # required
    #       resources: ["ARN"],
    #       list_of_tags: [
    #         {
    #           condition_type: "STRINGEQUALS", # required, accepts STRINGEQUALS
    #           condition_key: "ConditionKey", # required
    #           condition_value: "ConditionValue", # required
    #         },
    #       ],
    #       not_resources: ["ARN"],
    #       conditions: {
    #         string_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue",
    #           },
    #         ],
    #         string_not_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue",
    #           },
    #         ],
    #         string_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue",
    #           },
    #         ],
    #         string_not_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue",
    #           },
    #         ],
    #       },
    #     },
    #     creator_request_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.selection_id #=> String
    #   resp.backup_plan_id #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupSelection AWS API Documentation
    #
    # @overload create_backup_selection(params = {})
    # @param [Hash] params ({})
    def create_backup_selection(params = {}, options = {})
      req = build_request(:create_backup_selection, params)
      req.send_request(options)
    end

    # Creates a logical container where backups are stored. A
    # `CreateBackupVault` request includes a name, optionally one or more
    # resource tags, an encryption key, and a request ID.
    #
    # <note markdown="1"> Do not include sensitive data, such as passport numbers, in the name
    # of a backup vault.
    #
    #  </note>
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of letters, numbers, and hyphens.
    #
    # @option params [Hash<String,String>] :backup_vault_tags
    #   Metadata that you can assign to help organize the resources that you
    #   create. Each tag is a key-value pair.
    #
    # @option params [String] :encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and allows failed requests
    #   to be retried without the risk of running the operation twice. This
    #   parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or '-\_.'
    #   characters.
    #
    # @return [Types::CreateBackupVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupVaultOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::CreateBackupVaultOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::CreateBackupVaultOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_vault({
    #     backup_vault_name: "BackupVaultName", # required
    #     backup_vault_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     encryption_key_arn: "ARN",
    #     creator_request_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupVault AWS API Documentation
    #
    # @overload create_backup_vault(params = {})
    # @param [Hash] params ({})
    def create_backup_vault(params = {}, options = {})
      req = build_request(:create_backup_vault, params)
      req.send_request(options)
    end

    # Creates a framework with one or more controls. A framework is a
    # collection of controls that you can use to evaluate your backup
    # practices. By using pre-built customizable controls to define your
    # policies, you can evaluate whether your backup practices comply with
    # your policies and which resources are not yet in compliance.
    #
    # @option params [required, String] :framework_name
    #   The unique name of the framework. The name must be between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #
    # @option params [String] :framework_description
    #   An optional description of the framework with a maximum of 1,024
    #   characters.
    #
    # @option params [required, Array<Types::FrameworkControl>] :framework_controls
    #   A list of the controls that make up the framework. Each control in the
    #   list has a name, input parameters, and scope.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `CreateFrameworkInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :framework_tags
    #   Metadata that you can assign to help organize the frameworks that you
    #   create. Each tag is a key-value pair.
    #
    # @return [Types::CreateFrameworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFrameworkOutput#framework_name #framework_name} => String
    #   * {Types::CreateFrameworkOutput#framework_arn #framework_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_framework({
    #     framework_name: "FrameworkName", # required
    #     framework_description: "FrameworkDescription",
    #     framework_controls: [ # required
    #       {
    #         control_name: "ControlName", # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: "ParameterName",
    #             parameter_value: "ParameterValue",
    #           },
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: ["string"],
    #           compliance_resource_types: ["ARN"],
    #           tags: {
    #             "string" => "string",
    #           },
    #         },
    #       },
    #     ],
    #     idempotency_token: "string",
    #     framework_tags: {
    #       "string" => "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.framework_name #=> String
    #   resp.framework_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateFramework AWS API Documentation
    #
    # @overload create_framework(params = {})
    # @param [Hash] params ({})
    def create_framework(params = {}, options = {})
      req = build_request(:create_framework, params)
      req.send_request(options)
    end

    # This action creates a legal hold on a recovery point (backup). A legal
    # hold is a restraint on altering or deleting a backup until an
    # authorized user cancels the legal hold. Any actions to delete or
    # disassociate a recovery point will fail with an error if one or more
    # active legal holds are on the recovery point.
    #
    # @option params [required, String] :title
    #   This is the string title of the legal hold.
    #
    # @option params [required, String] :description
    #   This is the string description of the legal hold.
    #
    # @option params [String] :idempotency_token
    #   This is a user-chosen string used to distinguish between otherwise
    #   identical calls. Retrying a successful request with the same
    #   idempotency token results in a success message with no action taken.
    #
    # @option params [Types::RecoveryPointSelection] :recovery_point_selection
    #   This specifies criteria to assign a set of resources, such as resource
    #   types or backup vaults.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following characters:
    #   + - = . \_ : /.
    #
    # @return [Types::CreateLegalHoldOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLegalHoldOutput#title #title} => String
    #   * {Types::CreateLegalHoldOutput#status #status} => String
    #   * {Types::CreateLegalHoldOutput#description #description} => String
    #   * {Types::CreateLegalHoldOutput#legal_hold_id #legal_hold_id} => String
    #   * {Types::CreateLegalHoldOutput#legal_hold_arn #legal_hold_arn} => String
    #   * {Types::CreateLegalHoldOutput#creation_date #creation_date} => Time
    #   * {Types::CreateLegalHoldOutput#recovery_point_selection #recovery_point_selection} => Types::RecoveryPointSelection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_legal_hold({
    #     title: "string", # required
    #     description: "string", # required
    #     idempotency_token: "string",
    #     recovery_point_selection: {
    #       vault_names: ["string"],
    #       resource_identifiers: ["string"],
    #       date_range: {
    #         from_date: Time.now, # required
    #         to_date: Time.now, # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CANCELING", "CANCELED"
    #   resp.description #=> String
    #   resp.legal_hold_id #=> String
    #   resp.legal_hold_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.recovery_point_selection.vault_names #=> Array
    #   resp.recovery_point_selection.vault_names[0] #=> String
    #   resp.recovery_point_selection.resource_identifiers #=> Array
    #   resp.recovery_point_selection.resource_identifiers[0] #=> String
    #   resp.recovery_point_selection.date_range.from_date #=> Time
    #   resp.recovery_point_selection.date_range.to_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateLegalHold AWS API Documentation
    #
    # @overload create_legal_hold(params = {})
    # @param [Hash] params ({})
    def create_legal_hold(params = {}, options = {})
      req = build_request(:create_legal_hold, params)
      req.send_request(options)
    end

    # Creates a report plan. A report plan is a document that contains
    # information about the contents of the report and where Backup will
    # deliver it.
    #
    # If you call `CreateReportPlan` with a plan that already exists, you
    # receive an `AlreadyExistsException` exception.
    #
    # @option params [required, String] :report_plan_name
    #   The unique name of the report plan. The name must be between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #
    # @option params [String] :report_plan_description
    #   An optional description of the report plan with a maximum of 1,024
    #   characters.
    #
    # @option params [required, Types::ReportDeliveryChannel] :report_delivery_channel
    #   A structure that contains information about where and how to deliver
    #   your reports, specifically your Amazon S3 bucket name, S3 key prefix,
    #   and the formats of your reports.
    #
    # @option params [required, Types::ReportSetting] :report_setting
    #   Identifies the report template for the report. Reports are built using
    #   a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #
    #   If the report template is `RESOURCE_COMPLIANCE_REPORT` or
    #   `CONTROL_COMPLIANCE_REPORT`, this API resource also describes the
    #   report coverage by Amazon Web Services Regions and frameworks.
    #
    # @option params [Hash<String,String>] :report_plan_tags
    #   Metadata that you can assign to help organize the report plans that
    #   you create. Each tag is a key-value pair.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `CreateReportPlanInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateReportPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReportPlanOutput#report_plan_name #report_plan_name} => String
    #   * {Types::CreateReportPlanOutput#report_plan_arn #report_plan_arn} => String
    #   * {Types::CreateReportPlanOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report_plan({
    #     report_plan_name: "ReportPlanName", # required
    #     report_plan_description: "ReportPlanDescription",
    #     report_delivery_channel: { # required
    #       s3_bucket_name: "string", # required
    #       s3_key_prefix: "string",
    #       formats: ["string"],
    #     },
    #     report_setting: { # required
    #       report_template: "string", # required
    #       framework_arns: ["string"],
    #       number_of_frameworks: 1,
    #       accounts: ["string"],
    #       organization_units: ["string"],
    #       regions: ["string"],
    #     },
    #     report_plan_tags: {
    #       "string" => "string",
    #     },
    #     idempotency_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_plan_name #=> String
    #   resp.report_plan_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateReportPlan AWS API Documentation
    #
    # @overload create_report_plan(params = {})
    # @param [Hash] params ({})
    def create_report_plan(params = {}, options = {})
      req = build_request(:create_report_plan, params)
      req.send_request(options)
    end

    # Deletes a backup plan. A backup plan can only be deleted after all
    # associated selections of resources have been deleted. Deleting a
    # backup plan deletes the current version of a backup plan. Previous
    # versions, if any, will still exist.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @return [Types::DeleteBackupPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupPlanOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::DeleteBackupPlanOutput#backup_plan_arn #backup_plan_arn} => String
    #   * {Types::DeleteBackupPlanOutput#deletion_date #deletion_date} => Time
    #   * {Types::DeleteBackupPlanOutput#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_plan({
    #     backup_plan_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan_id #=> String
    #   resp.backup_plan_arn #=> String
    #   resp.deletion_date #=> Time
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupPlan AWS API Documentation
    #
    # @overload delete_backup_plan(params = {})
    # @param [Hash] params ({})
    def delete_backup_plan(params = {}, options = {})
      req = build_request(:delete_backup_plan, params)
      req.send_request(options)
    end

    # Deletes the resource selection associated with a backup plan that is
    # specified by the `SelectionId`.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [required, String] :selection_id
    #   Uniquely identifies the body of a request to assign a set of resources
    #   to a backup plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_selection({
    #     backup_plan_id: "string", # required
    #     selection_id: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupSelection AWS API Documentation
    #
    # @overload delete_backup_selection(params = {})
    # @param [Hash] params ({})
    def delete_backup_selection(params = {}, options = {})
      req = build_request(:delete_backup_selection, params)
      req.send_request(options)
    end

    # Deletes the backup vault identified by its name. A vault can be
    # deleted only if it is empty.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault({
    #     backup_vault_name: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVault AWS API Documentation
    #
    # @overload delete_backup_vault(params = {})
    # @param [Hash] params ({})
    def delete_backup_vault(params = {}, options = {})
      req = build_request(:delete_backup_vault, params)
      req.send_request(options)
    end

    # Deletes the policy document that manages permissions on a backup
    # vault.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_access_policy({
    #     backup_vault_name: "BackupVaultName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultAccessPolicy AWS API Documentation
    #
    # @overload delete_backup_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_backup_vault_access_policy(params = {}, options = {})
      req = build_request(:delete_backup_vault_access_policy, params)
      req.send_request(options)
    end

    # Deletes Backup Vault Lock from a backup vault specified by a backup
    # vault name.
    #
    # If the Vault Lock configuration is immutable, then you cannot delete
    # Vault Lock using API operations, and you will receive an
    # `InvalidRequestException` if you attempt to do so. For more
    # information, see [Vault Lock][1] in the *Backup Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html
    #
    # @option params [required, String] :backup_vault_name
    #   The name of the backup vault from which to delete Backup Vault Lock.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_lock_configuration({
    #     backup_vault_name: "BackupVaultName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultLockConfiguration AWS API Documentation
    #
    # @overload delete_backup_vault_lock_configuration(params = {})
    # @param [Hash] params ({})
    def delete_backup_vault_lock_configuration(params = {}, options = {})
      req = build_request(:delete_backup_vault_lock_configuration, params)
      req.send_request(options)
    end

    # Deletes event notifications for the specified backup vault.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_notifications({
    #     backup_vault_name: "BackupVaultName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultNotifications AWS API Documentation
    #
    # @overload delete_backup_vault_notifications(params = {})
    # @param [Hash] params ({})
    def delete_backup_vault_notifications(params = {}, options = {})
      req = build_request(:delete_backup_vault_notifications, params)
      req.send_request(options)
    end

    # Deletes the framework specified by a framework name.
    #
    # @option params [required, String] :framework_name
    #   The unique name of a framework.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_framework({
    #     framework_name: "FrameworkName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteFramework AWS API Documentation
    #
    # @overload delete_framework(params = {})
    # @param [Hash] params ({})
    def delete_framework(params = {}, options = {})
      req = build_request(:delete_framework, params)
      req.send_request(options)
    end

    # Deletes the recovery point specified by a recovery point ID.
    #
    # If the recovery point ID belongs to a continuous backup, calling this
    # endpoint deletes the existing continuous backup and stops future
    # continuous backup.
    #
    # When an IAM role's permissions are insufficient to call this API, the
    # service sends back an HTTP 200 response with an empty HTTP body, but
    # the recovery point is not deleted. Instead, it enters an `EXPIRED`
    # state.
    #
    # `EXPIRED` recovery points can be deleted with this API once the IAM
    # role has the `iam:CreateServiceLinkedRole` action. To learn more about
    # adding this role, see [ Troubleshooting manual deletions][1].
    #
    # If the user or role is deleted or the permission within the role is
    # removed, the deletion will not be successful and will enter an
    # `EXPIRED` state.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_point({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteRecoveryPoint AWS API Documentation
    #
    # @overload delete_recovery_point(params = {})
    # @param [Hash] params ({})
    def delete_recovery_point(params = {}, options = {})
      req = build_request(:delete_recovery_point, params)
      req.send_request(options)
    end

    # Deletes the report plan specified by a report plan name.
    #
    # @option params [required, String] :report_plan_name
    #   The unique name of a report plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_plan({
    #     report_plan_name: "ReportPlanName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteReportPlan AWS API Documentation
    #
    # @overload delete_report_plan(params = {})
    # @param [Hash] params ({})
    def delete_report_plan(params = {}, options = {})
      req = build_request(:delete_report_plan, params)
      req.send_request(options)
    end

    # Returns backup job details for the specified `BackupJobId`.
    #
    # @option params [required, String] :backup_job_id
    #   Uniquely identifies a request to Backup to back up a resource.
    #
    # @return [Types::DescribeBackupJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupJobOutput#account_id #account_id} => String
    #   * {Types::DescribeBackupJobOutput#backup_job_id #backup_job_id} => String
    #   * {Types::DescribeBackupJobOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::DescribeBackupJobOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::DescribeBackupJobOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::DescribeBackupJobOutput#resource_arn #resource_arn} => String
    #   * {Types::DescribeBackupJobOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeBackupJobOutput#completion_date #completion_date} => Time
    #   * {Types::DescribeBackupJobOutput#state #state} => String
    #   * {Types::DescribeBackupJobOutput#status_message #status_message} => String
    #   * {Types::DescribeBackupJobOutput#percent_done #percent_done} => String
    #   * {Types::DescribeBackupJobOutput#backup_size_in_bytes #backup_size_in_bytes} => Integer
    #   * {Types::DescribeBackupJobOutput#iam_role_arn #iam_role_arn} => String
    #   * {Types::DescribeBackupJobOutput#created_by #created_by} => Types::RecoveryPointCreator
    #   * {Types::DescribeBackupJobOutput#resource_type #resource_type} => String
    #   * {Types::DescribeBackupJobOutput#bytes_transferred #bytes_transferred} => Integer
    #   * {Types::DescribeBackupJobOutput#expected_completion_date #expected_completion_date} => Time
    #   * {Types::DescribeBackupJobOutput#start_by #start_by} => Time
    #   * {Types::DescribeBackupJobOutput#backup_options #backup_options} => Hash&lt;String,String&gt;
    #   * {Types::DescribeBackupJobOutput#backup_type #backup_type} => String
    #   * {Types::DescribeBackupJobOutput#parent_job_id #parent_job_id} => String
    #   * {Types::DescribeBackupJobOutput#is_parent #is_parent} => Boolean
    #   * {Types::DescribeBackupJobOutput#number_of_child_jobs #number_of_child_jobs} => Integer
    #   * {Types::DescribeBackupJobOutput#child_jobs_in_state #child_jobs_in_state} => Hash&lt;String,Integer&gt;
    #   * {Types::DescribeBackupJobOutput#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_job({
    #     backup_job_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.backup_job_id #=> String
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.recovery_point_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.completion_date #=> Time
    #   resp.state #=> String, one of "CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL"
    #   resp.status_message #=> String
    #   resp.percent_done #=> String
    #   resp.backup_size_in_bytes #=> Integer
    #   resp.iam_role_arn #=> String
    #   resp.created_by.backup_plan_id #=> String
    #   resp.created_by.backup_plan_arn #=> String
    #   resp.created_by.backup_plan_version #=> String
    #   resp.created_by.backup_rule_id #=> String
    #   resp.resource_type #=> String
    #   resp.bytes_transferred #=> Integer
    #   resp.expected_completion_date #=> Time
    #   resp.start_by #=> Time
    #   resp.backup_options #=> Hash
    #   resp.backup_options["BackupOptionKey"] #=> String
    #   resp.backup_type #=> String
    #   resp.parent_job_id #=> String
    #   resp.is_parent #=> Boolean
    #   resp.number_of_child_jobs #=> Integer
    #   resp.child_jobs_in_state #=> Hash
    #   resp.child_jobs_in_state["BackupJobState"] #=> Integer
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupJob AWS API Documentation
    #
    # @overload describe_backup_job(params = {})
    # @param [Hash] params ({})
    def describe_backup_job(params = {}, options = {})
      req = build_request(:describe_backup_job, params)
      req.send_request(options)
    end

    # Returns metadata about a backup vault specified by its name.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @return [Types::DescribeBackupVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupVaultOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::DescribeBackupVaultOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::DescribeBackupVaultOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DescribeBackupVaultOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeBackupVaultOutput#creator_request_id #creator_request_id} => String
    #   * {Types::DescribeBackupVaultOutput#number_of_recovery_points #number_of_recovery_points} => Integer
    #   * {Types::DescribeBackupVaultOutput#locked #locked} => Boolean
    #   * {Types::DescribeBackupVaultOutput#min_retention_days #min_retention_days} => Integer
    #   * {Types::DescribeBackupVaultOutput#max_retention_days #max_retention_days} => Integer
    #   * {Types::DescribeBackupVaultOutput#lock_date #lock_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_vault({
    #     backup_vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.encryption_key_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.creator_request_id #=> String
    #   resp.number_of_recovery_points #=> Integer
    #   resp.locked #=> Boolean
    #   resp.min_retention_days #=> Integer
    #   resp.max_retention_days #=> Integer
    #   resp.lock_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVault AWS API Documentation
    #
    # @overload describe_backup_vault(params = {})
    # @param [Hash] params ({})
    def describe_backup_vault(params = {}, options = {})
      req = build_request(:describe_backup_vault, params)
      req.send_request(options)
    end

    # Returns metadata associated with creating a copy of a resource.
    #
    # @option params [required, String] :copy_job_id
    #   Uniquely identifies a copy job.
    #
    # @return [Types::DescribeCopyJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCopyJobOutput#copy_job #copy_job} => Types::CopyJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_copy_job({
    #     copy_job_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_job.account_id #=> String
    #   resp.copy_job.copy_job_id #=> String
    #   resp.copy_job.source_backup_vault_arn #=> String
    #   resp.copy_job.source_recovery_point_arn #=> String
    #   resp.copy_job.destination_backup_vault_arn #=> String
    #   resp.copy_job.destination_recovery_point_arn #=> String
    #   resp.copy_job.resource_arn #=> String
    #   resp.copy_job.creation_date #=> Time
    #   resp.copy_job.completion_date #=> Time
    #   resp.copy_job.state #=> String, one of "CREATED", "RUNNING", "COMPLETED", "FAILED", "PARTIAL"
    #   resp.copy_job.status_message #=> String
    #   resp.copy_job.backup_size_in_bytes #=> Integer
    #   resp.copy_job.iam_role_arn #=> String
    #   resp.copy_job.created_by.backup_plan_id #=> String
    #   resp.copy_job.created_by.backup_plan_arn #=> String
    #   resp.copy_job.created_by.backup_plan_version #=> String
    #   resp.copy_job.created_by.backup_rule_id #=> String
    #   resp.copy_job.resource_type #=> String
    #   resp.copy_job.parent_job_id #=> String
    #   resp.copy_job.is_parent #=> Boolean
    #   resp.copy_job.composite_member_identifier #=> String
    #   resp.copy_job.number_of_child_jobs #=> Integer
    #   resp.copy_job.child_jobs_in_state #=> Hash
    #   resp.copy_job.child_jobs_in_state["CopyJobState"] #=> Integer
    #   resp.copy_job.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeCopyJob AWS API Documentation
    #
    # @overload describe_copy_job(params = {})
    # @param [Hash] params ({})
    def describe_copy_job(params = {}, options = {})
      req = build_request(:describe_copy_job, params)
      req.send_request(options)
    end

    # Returns the framework details for the specified `FrameworkName`.
    #
    # @option params [required, String] :framework_name
    #   The unique name of a framework.
    #
    # @return [Types::DescribeFrameworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFrameworkOutput#framework_name #framework_name} => String
    #   * {Types::DescribeFrameworkOutput#framework_arn #framework_arn} => String
    #   * {Types::DescribeFrameworkOutput#framework_description #framework_description} => String
    #   * {Types::DescribeFrameworkOutput#framework_controls #framework_controls} => Array&lt;Types::FrameworkControl&gt;
    #   * {Types::DescribeFrameworkOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeFrameworkOutput#deployment_status #deployment_status} => String
    #   * {Types::DescribeFrameworkOutput#framework_status #framework_status} => String
    #   * {Types::DescribeFrameworkOutput#idempotency_token #idempotency_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_framework({
    #     framework_name: "FrameworkName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.framework_name #=> String
    #   resp.framework_arn #=> String
    #   resp.framework_description #=> String
    #   resp.framework_controls #=> Array
    #   resp.framework_controls[0].control_name #=> String
    #   resp.framework_controls[0].control_input_parameters #=> Array
    #   resp.framework_controls[0].control_input_parameters[0].parameter_name #=> String
    #   resp.framework_controls[0].control_input_parameters[0].parameter_value #=> String
    #   resp.framework_controls[0].control_scope.compliance_resource_ids #=> Array
    #   resp.framework_controls[0].control_scope.compliance_resource_ids[0] #=> String
    #   resp.framework_controls[0].control_scope.compliance_resource_types #=> Array
    #   resp.framework_controls[0].control_scope.compliance_resource_types[0] #=> String
    #   resp.framework_controls[0].control_scope.tags #=> Hash
    #   resp.framework_controls[0].control_scope.tags["string"] #=> String
    #   resp.creation_time #=> Time
    #   resp.deployment_status #=> String
    #   resp.framework_status #=> String
    #   resp.idempotency_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeFramework AWS API Documentation
    #
    # @overload describe_framework(params = {})
    # @param [Hash] params ({})
    def describe_framework(params = {}, options = {})
      req = build_request(:describe_framework, params)
      req.send_request(options)
    end

    # Describes whether the Amazon Web Services account is opted in to
    # cross-account backup. Returns an error if the account is not a member
    # of an Organizations organization. Example: `describe-global-settings
    # --region us-west-2`
    #
    # @return [Types::DescribeGlobalSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalSettingsOutput#global_settings #global_settings} => Hash&lt;String,String&gt;
    #   * {Types::DescribeGlobalSettingsOutput#last_update_time #last_update_time} => Time
    #
    # @example Response structure
    #
    #   resp.global_settings #=> Hash
    #   resp.global_settings["GlobalSettingsName"] #=> String
    #   resp.last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeGlobalSettings AWS API Documentation
    #
    # @overload describe_global_settings(params = {})
    # @param [Hash] params ({})
    def describe_global_settings(params = {}, options = {})
      req = build_request(:describe_global_settings, params)
      req.send_request(options)
    end

    # Returns information about a saved resource, including the last time it
    # was backed up, its Amazon Resource Name (ARN), and the Amazon Web
    # Services service type of the saved resource.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource. The
    #   format of the ARN depends on the resource type.
    #
    # @return [Types::DescribeProtectedResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProtectedResourceOutput#resource_arn #resource_arn} => String
    #   * {Types::DescribeProtectedResourceOutput#resource_type #resource_type} => String
    #   * {Types::DescribeProtectedResourceOutput#last_backup_time #last_backup_time} => Time
    #   * {Types::DescribeProtectedResourceOutput#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protected_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.resource_type #=> String
    #   resp.last_backup_time #=> Time
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeProtectedResource AWS API Documentation
    #
    # @overload describe_protected_resource(params = {})
    # @param [Hash] params ({})
    def describe_protected_resource(params = {}, options = {})
      req = build_request(:describe_protected_resource, params)
      req.send_request(options)
    end

    # Returns metadata associated with a recovery point, including ID,
    # status, encryption, and lifecycle.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @return [Types::DescribeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecoveryPointOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::DescribeRecoveryPointOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#source_backup_vault_arn #source_backup_vault_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#resource_arn #resource_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#resource_type #resource_type} => String
    #   * {Types::DescribeRecoveryPointOutput#created_by #created_by} => Types::RecoveryPointCreator
    #   * {Types::DescribeRecoveryPointOutput#iam_role_arn #iam_role_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#status #status} => String
    #   * {Types::DescribeRecoveryPointOutput#status_message #status_message} => String
    #   * {Types::DescribeRecoveryPointOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeRecoveryPointOutput#completion_date #completion_date} => Time
    #   * {Types::DescribeRecoveryPointOutput#backup_size_in_bytes #backup_size_in_bytes} => Integer
    #   * {Types::DescribeRecoveryPointOutput#calculated_lifecycle #calculated_lifecycle} => Types::CalculatedLifecycle
    #   * {Types::DescribeRecoveryPointOutput#lifecycle #lifecycle} => Types::Lifecycle
    #   * {Types::DescribeRecoveryPointOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#is_encrypted #is_encrypted} => Boolean
    #   * {Types::DescribeRecoveryPointOutput#storage_class #storage_class} => String
    #   * {Types::DescribeRecoveryPointOutput#last_restore_time #last_restore_time} => Time
    #   * {Types::DescribeRecoveryPointOutput#parent_recovery_point_arn #parent_recovery_point_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#composite_member_identifier #composite_member_identifier} => String
    #   * {Types::DescribeRecoveryPointOutput#is_parent #is_parent} => Boolean
    #   * {Types::DescribeRecoveryPointOutput#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_point({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recovery_point_arn #=> String
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.source_backup_vault_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_type #=> String
    #   resp.created_by.backup_plan_id #=> String
    #   resp.created_by.backup_plan_arn #=> String
    #   resp.created_by.backup_plan_version #=> String
    #   resp.created_by.backup_rule_id #=> String
    #   resp.iam_role_arn #=> String
    #   resp.status #=> String, one of "COMPLETED", "PARTIAL", "DELETING", "EXPIRED"
    #   resp.status_message #=> String
    #   resp.creation_date #=> Time
    #   resp.completion_date #=> Time
    #   resp.backup_size_in_bytes #=> Integer
    #   resp.calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.calculated_lifecycle.delete_at #=> Time
    #   resp.lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.lifecycle.delete_after_days #=> Integer
    #   resp.encryption_key_arn #=> String
    #   resp.is_encrypted #=> Boolean
    #   resp.storage_class #=> String, one of "WARM", "COLD", "DELETED"
    #   resp.last_restore_time #=> Time
    #   resp.parent_recovery_point_arn #=> String
    #   resp.composite_member_identifier #=> String
    #   resp.is_parent #=> Boolean
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPoint AWS API Documentation
    #
    # @overload describe_recovery_point(params = {})
    # @param [Hash] params ({})
    def describe_recovery_point(params = {}, options = {})
      req = build_request(:describe_recovery_point, params)
      req.send_request(options)
    end

    # Returns the current service opt-in settings for the Region. If service
    # opt-in is enabled for a service, Backup tries to protect that
    # service's resources in this Region, when the resource is included in
    # an on-demand backup or scheduled backup plan. Otherwise, Backup does
    # not try to protect that service's resources in this Region.
    #
    # @return [Types::DescribeRegionSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegionSettingsOutput#resource_type_opt_in_preference #resource_type_opt_in_preference} => Hash&lt;String,Boolean&gt;
    #   * {Types::DescribeRegionSettingsOutput#resource_type_management_preference #resource_type_management_preference} => Hash&lt;String,Boolean&gt;
    #
    # @example Response structure
    #
    #   resp.resource_type_opt_in_preference #=> Hash
    #   resp.resource_type_opt_in_preference["ResourceType"] #=> Boolean
    #   resp.resource_type_management_preference #=> Hash
    #   resp.resource_type_management_preference["ResourceType"] #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettings AWS API Documentation
    #
    # @overload describe_region_settings(params = {})
    # @param [Hash] params ({})
    def describe_region_settings(params = {}, options = {})
      req = build_request(:describe_region_settings, params)
      req.send_request(options)
    end

    # Returns the details associated with creating a report as specified by
    # its `ReportJobId`.
    #
    # @option params [required, String] :report_job_id
    #   The identifier of the report job. A unique, randomly generated,
    #   Unicode, UTF-8 encoded string that is at most 1,024 bytes long. The
    #   report job ID cannot be edited.
    #
    # @return [Types::DescribeReportJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReportJobOutput#report_job #report_job} => Types::ReportJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_job({
    #     report_job_id: "ReportJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_job.report_job_id #=> String
    #   resp.report_job.report_plan_arn #=> String
    #   resp.report_job.report_template #=> String
    #   resp.report_job.creation_time #=> Time
    #   resp.report_job.completion_time #=> Time
    #   resp.report_job.status #=> String
    #   resp.report_job.status_message #=> String
    #   resp.report_job.report_destination.s3_bucket_name #=> String
    #   resp.report_job.report_destination.s3_keys #=> Array
    #   resp.report_job.report_destination.s3_keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportJob AWS API Documentation
    #
    # @overload describe_report_job(params = {})
    # @param [Hash] params ({})
    def describe_report_job(params = {}, options = {})
      req = build_request(:describe_report_job, params)
      req.send_request(options)
    end

    # Returns a list of all report plans for an Amazon Web Services account
    # and Amazon Web Services Region.
    #
    # @option params [required, String] :report_plan_name
    #   The unique name of a report plan.
    #
    # @return [Types::DescribeReportPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReportPlanOutput#report_plan #report_plan} => Types::ReportPlan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_plan({
    #     report_plan_name: "ReportPlanName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_plan.report_plan_arn #=> String
    #   resp.report_plan.report_plan_name #=> String
    #   resp.report_plan.report_plan_description #=> String
    #   resp.report_plan.report_setting.report_template #=> String
    #   resp.report_plan.report_setting.framework_arns #=> Array
    #   resp.report_plan.report_setting.framework_arns[0] #=> String
    #   resp.report_plan.report_setting.number_of_frameworks #=> Integer
    #   resp.report_plan.report_setting.accounts #=> Array
    #   resp.report_plan.report_setting.accounts[0] #=> String
    #   resp.report_plan.report_setting.organization_units #=> Array
    #   resp.report_plan.report_setting.organization_units[0] #=> String
    #   resp.report_plan.report_setting.regions #=> Array
    #   resp.report_plan.report_setting.regions[0] #=> String
    #   resp.report_plan.report_delivery_channel.s3_bucket_name #=> String
    #   resp.report_plan.report_delivery_channel.s3_key_prefix #=> String
    #   resp.report_plan.report_delivery_channel.formats #=> Array
    #   resp.report_plan.report_delivery_channel.formats[0] #=> String
    #   resp.report_plan.deployment_status #=> String
    #   resp.report_plan.creation_time #=> Time
    #   resp.report_plan.last_attempted_execution_time #=> Time
    #   resp.report_plan.last_successful_execution_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportPlan AWS API Documentation
    #
    # @overload describe_report_plan(params = {})
    # @param [Hash] params ({})
    def describe_report_plan(params = {}, options = {})
      req = build_request(:describe_report_plan, params)
      req.send_request(options)
    end

    # Returns metadata associated with a restore job that is specified by a
    # job ID.
    #
    # @option params [required, String] :restore_job_id
    #   Uniquely identifies the job that restores a recovery point.
    #
    # @return [Types::DescribeRestoreJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRestoreJobOutput#account_id #account_id} => String
    #   * {Types::DescribeRestoreJobOutput#restore_job_id #restore_job_id} => String
    #   * {Types::DescribeRestoreJobOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::DescribeRestoreJobOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeRestoreJobOutput#completion_date #completion_date} => Time
    #   * {Types::DescribeRestoreJobOutput#status #status} => String
    #   * {Types::DescribeRestoreJobOutput#status_message #status_message} => String
    #   * {Types::DescribeRestoreJobOutput#percent_done #percent_done} => String
    #   * {Types::DescribeRestoreJobOutput#backup_size_in_bytes #backup_size_in_bytes} => Integer
    #   * {Types::DescribeRestoreJobOutput#iam_role_arn #iam_role_arn} => String
    #   * {Types::DescribeRestoreJobOutput#expected_completion_time_minutes #expected_completion_time_minutes} => Integer
    #   * {Types::DescribeRestoreJobOutput#created_resource_arn #created_resource_arn} => String
    #   * {Types::DescribeRestoreJobOutput#resource_type #resource_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_restore_job({
    #     restore_job_id: "RestoreJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.restore_job_id #=> String
    #   resp.recovery_point_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.completion_date #=> Time
    #   resp.status #=> String, one of "PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"
    #   resp.status_message #=> String
    #   resp.percent_done #=> String
    #   resp.backup_size_in_bytes #=> Integer
    #   resp.iam_role_arn #=> String
    #   resp.expected_completion_time_minutes #=> Integer
    #   resp.created_resource_arn #=> String
    #   resp.resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRestoreJob AWS API Documentation
    #
    # @overload describe_restore_job(params = {})
    # @param [Hash] params ({})
    def describe_restore_job(params = {}, options = {})
      req = build_request(:describe_restore_job, params)
      req.send_request(options)
    end

    # Deletes the specified continuous backup recovery point from Backup and
    # releases control of that continuous backup to the source service, such
    # as Amazon RDS. The source service will continue to create and retain
    # continuous backups using the lifecycle that you specified in your
    # original backup plan.
    #
    # Does not support snapshot backup recovery points.
    #
    # @option params [required, String] :backup_vault_name
    #   The unique name of an Backup vault.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an Backup
    #   recovery point.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_recovery_point({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DisassociateRecoveryPoint AWS API Documentation
    #
    # @overload disassociate_recovery_point(params = {})
    # @param [Hash] params ({})
    def disassociate_recovery_point(params = {}, options = {})
      req = build_request(:disassociate_recovery_point, params)
      req.send_request(options)
    end

    # This action to a specific child (nested) recovery point removes the
    # relationship between the specified recovery point and its parent
    # (composite) recovery point.
    #
    # @option params [required, String] :backup_vault_name
    #   This is the name of a logical container where the child (nested)
    #   recovery point is stored. Backup vaults are identified by names that
    #   are unique to the account used to create them and the Amazon Web
    #   Services Region where they are created. They consist of lowercase
    #   letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   This is the Amazon Resource Name (ARN) that uniquely identifies the
    #   child (nested) recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_recovery_point_from_parent({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DisassociateRecoveryPointFromParent AWS API Documentation
    #
    # @overload disassociate_recovery_point_from_parent(params = {})
    # @param [Hash] params ({})
    def disassociate_recovery_point_from_parent(params = {}, options = {})
      req = build_request(:disassociate_recovery_point_from_parent, params)
      req.send_request(options)
    end

    # Returns the backup plan that is specified by the plan ID as a backup
    # template.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @return [Types::ExportBackupPlanTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportBackupPlanTemplateOutput#backup_plan_template_json #backup_plan_template_json} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_backup_plan_template({
    #     backup_plan_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan_template_json #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ExportBackupPlanTemplate AWS API Documentation
    #
    # @overload export_backup_plan_template(params = {})
    # @param [Hash] params ({})
    def export_backup_plan_template(params = {}, options = {})
      req = build_request(:export_backup_plan_template, params)
      req.send_request(options)
    end

    # Returns `BackupPlan` details for the specified `BackupPlanId`. The
    # details are the body of a backup plan in JSON format, in addition to
    # plan metadata.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [String] :version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
    #   most 1,024 bytes long. Version IDs cannot be edited.
    #
    # @return [Types::GetBackupPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupPlanOutput#backup_plan #backup_plan} => Types::BackupPlan
    #   * {Types::GetBackupPlanOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::GetBackupPlanOutput#backup_plan_arn #backup_plan_arn} => String
    #   * {Types::GetBackupPlanOutput#version_id #version_id} => String
    #   * {Types::GetBackupPlanOutput#creator_request_id #creator_request_id} => String
    #   * {Types::GetBackupPlanOutput#creation_date #creation_date} => Time
    #   * {Types::GetBackupPlanOutput#deletion_date #deletion_date} => Time
    #   * {Types::GetBackupPlanOutput#last_execution_date #last_execution_date} => Time
    #   * {Types::GetBackupPlanOutput#advanced_backup_settings #advanced_backup_settings} => Array&lt;Types::AdvancedBackupSetting&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan({
    #     backup_plan_id: "string", # required
    #     version_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan.backup_plan_name #=> String
    #   resp.backup_plan.rules #=> Array
    #   resp.backup_plan.rules[0].rule_name #=> String
    #   resp.backup_plan.rules[0].target_backup_vault_name #=> String
    #   resp.backup_plan.rules[0].schedule_expression #=> String
    #   resp.backup_plan.rules[0].start_window_minutes #=> Integer
    #   resp.backup_plan.rules[0].completion_window_minutes #=> Integer
    #   resp.backup_plan.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan.rules[0].recovery_point_tags #=> Hash
    #   resp.backup_plan.rules[0].recovery_point_tags["TagKey"] #=> String
    #   resp.backup_plan.rules[0].rule_id #=> String
    #   resp.backup_plan.rules[0].copy_actions #=> Array
    #   resp.backup_plan.rules[0].copy_actions[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan.rules[0].copy_actions[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.backup_plan.rules[0].enable_continuous_backup #=> Boolean
    #   resp.backup_plan.advanced_backup_settings #=> Array
    #   resp.backup_plan.advanced_backup_settings[0].resource_type #=> String
    #   resp.backup_plan.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.backup_plan.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #   resp.backup_plan_id #=> String
    #   resp.backup_plan_arn #=> String
    #   resp.version_id #=> String
    #   resp.creator_request_id #=> String
    #   resp.creation_date #=> Time
    #   resp.deletion_date #=> Time
    #   resp.last_execution_date #=> Time
    #   resp.advanced_backup_settings #=> Array
    #   resp.advanced_backup_settings[0].resource_type #=> String
    #   resp.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlan AWS API Documentation
    #
    # @overload get_backup_plan(params = {})
    # @param [Hash] params ({})
    def get_backup_plan(params = {}, options = {})
      req = build_request(:get_backup_plan, params)
      req.send_request(options)
    end

    # Returns a valid JSON document specifying a backup plan or an error.
    #
    # @option params [required, String] :backup_plan_template_json
    #   A customer-supplied backup plan document in JSON format.
    #
    # @return [Types::GetBackupPlanFromJSONOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupPlanFromJSONOutput#backup_plan #backup_plan} => Types::BackupPlan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan_from_json({
    #     backup_plan_template_json: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan.backup_plan_name #=> String
    #   resp.backup_plan.rules #=> Array
    #   resp.backup_plan.rules[0].rule_name #=> String
    #   resp.backup_plan.rules[0].target_backup_vault_name #=> String
    #   resp.backup_plan.rules[0].schedule_expression #=> String
    #   resp.backup_plan.rules[0].start_window_minutes #=> Integer
    #   resp.backup_plan.rules[0].completion_window_minutes #=> Integer
    #   resp.backup_plan.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan.rules[0].recovery_point_tags #=> Hash
    #   resp.backup_plan.rules[0].recovery_point_tags["TagKey"] #=> String
    #   resp.backup_plan.rules[0].rule_id #=> String
    #   resp.backup_plan.rules[0].copy_actions #=> Array
    #   resp.backup_plan.rules[0].copy_actions[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan.rules[0].copy_actions[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.backup_plan.rules[0].enable_continuous_backup #=> Boolean
    #   resp.backup_plan.advanced_backup_settings #=> Array
    #   resp.backup_plan.advanced_backup_settings[0].resource_type #=> String
    #   resp.backup_plan.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.backup_plan.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromJSON AWS API Documentation
    #
    # @overload get_backup_plan_from_json(params = {})
    # @param [Hash] params ({})
    def get_backup_plan_from_json(params = {}, options = {})
      req = build_request(:get_backup_plan_from_json, params)
      req.send_request(options)
    end

    # Returns the template specified by its `templateId` as a backup plan.
    #
    # @option params [required, String] :backup_plan_template_id
    #   Uniquely identifies a stored backup plan template.
    #
    # @return [Types::GetBackupPlanFromTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupPlanFromTemplateOutput#backup_plan_document #backup_plan_document} => Types::BackupPlan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan_from_template({
    #     backup_plan_template_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan_document.backup_plan_name #=> String
    #   resp.backup_plan_document.rules #=> Array
    #   resp.backup_plan_document.rules[0].rule_name #=> String
    #   resp.backup_plan_document.rules[0].target_backup_vault_name #=> String
    #   resp.backup_plan_document.rules[0].schedule_expression #=> String
    #   resp.backup_plan_document.rules[0].start_window_minutes #=> Integer
    #   resp.backup_plan_document.rules[0].completion_window_minutes #=> Integer
    #   resp.backup_plan_document.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan_document.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan_document.rules[0].recovery_point_tags #=> Hash
    #   resp.backup_plan_document.rules[0].recovery_point_tags["TagKey"] #=> String
    #   resp.backup_plan_document.rules[0].rule_id #=> String
    #   resp.backup_plan_document.rules[0].copy_actions #=> Array
    #   resp.backup_plan_document.rules[0].copy_actions[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.backup_plan_document.rules[0].copy_actions[0].lifecycle.delete_after_days #=> Integer
    #   resp.backup_plan_document.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.backup_plan_document.rules[0].enable_continuous_backup #=> Boolean
    #   resp.backup_plan_document.advanced_backup_settings #=> Array
    #   resp.backup_plan_document.advanced_backup_settings[0].resource_type #=> String
    #   resp.backup_plan_document.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.backup_plan_document.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromTemplate AWS API Documentation
    #
    # @overload get_backup_plan_from_template(params = {})
    # @param [Hash] params ({})
    def get_backup_plan_from_template(params = {}, options = {})
      req = build_request(:get_backup_plan_from_template, params)
      req.send_request(options)
    end

    # Returns selection metadata and a document in JSON format that
    # specifies a list of resources that are associated with a backup plan.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [required, String] :selection_id
    #   Uniquely identifies the body of a request to assign a set of resources
    #   to a backup plan.
    #
    # @return [Types::GetBackupSelectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupSelectionOutput#backup_selection #backup_selection} => Types::BackupSelection
    #   * {Types::GetBackupSelectionOutput#selection_id #selection_id} => String
    #   * {Types::GetBackupSelectionOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::GetBackupSelectionOutput#creation_date #creation_date} => Time
    #   * {Types::GetBackupSelectionOutput#creator_request_id #creator_request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_selection({
    #     backup_plan_id: "string", # required
    #     selection_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_selection.selection_name #=> String
    #   resp.backup_selection.iam_role_arn #=> String
    #   resp.backup_selection.resources #=> Array
    #   resp.backup_selection.resources[0] #=> String
    #   resp.backup_selection.list_of_tags #=> Array
    #   resp.backup_selection.list_of_tags[0].condition_type #=> String, one of "STRINGEQUALS"
    #   resp.backup_selection.list_of_tags[0].condition_key #=> String
    #   resp.backup_selection.list_of_tags[0].condition_value #=> String
    #   resp.backup_selection.not_resources #=> Array
    #   resp.backup_selection.not_resources[0] #=> String
    #   resp.backup_selection.conditions.string_equals #=> Array
    #   resp.backup_selection.conditions.string_equals[0].condition_key #=> String
    #   resp.backup_selection.conditions.string_equals[0].condition_value #=> String
    #   resp.backup_selection.conditions.string_not_equals #=> Array
    #   resp.backup_selection.conditions.string_not_equals[0].condition_key #=> String
    #   resp.backup_selection.conditions.string_not_equals[0].condition_value #=> String
    #   resp.backup_selection.conditions.string_like #=> Array
    #   resp.backup_selection.conditions.string_like[0].condition_key #=> String
    #   resp.backup_selection.conditions.string_like[0].condition_value #=> String
    #   resp.backup_selection.conditions.string_not_like #=> Array
    #   resp.backup_selection.conditions.string_not_like[0].condition_key #=> String
    #   resp.backup_selection.conditions.string_not_like[0].condition_value #=> String
    #   resp.selection_id #=> String
    #   resp.backup_plan_id #=> String
    #   resp.creation_date #=> Time
    #   resp.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupSelection AWS API Documentation
    #
    # @overload get_backup_selection(params = {})
    # @param [Hash] params ({})
    def get_backup_selection(params = {}, options = {})
      req = build_request(:get_backup_selection, params)
      req.send_request(options)
    end

    # Returns the access policy document that is associated with the named
    # backup vault.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @return [Types::GetBackupVaultAccessPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupVaultAccessPolicyOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::GetBackupVaultAccessPolicyOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::GetBackupVaultAccessPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_vault_access_policy({
    #     backup_vault_name: "BackupVaultName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultAccessPolicy AWS API Documentation
    #
    # @overload get_backup_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def get_backup_vault_access_policy(params = {}, options = {})
      req = build_request(:get_backup_vault_access_policy, params)
      req.send_request(options)
    end

    # Returns event notifications for the specified backup vault.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @return [Types::GetBackupVaultNotificationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackupVaultNotificationsOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::GetBackupVaultNotificationsOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::GetBackupVaultNotificationsOutput#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::GetBackupVaultNotificationsOutput#backup_vault_events #backup_vault_events} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_vault_notifications({
    #     backup_vault_name: "BackupVaultName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_name #=> String
    #   resp.backup_vault_arn #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.backup_vault_events #=> Array
    #   resp.backup_vault_events[0] #=> String, one of "BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED", "S3_BACKUP_OBJECT_FAILED", "S3_RESTORE_OBJECT_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultNotifications AWS API Documentation
    #
    # @overload get_backup_vault_notifications(params = {})
    # @param [Hash] params ({})
    def get_backup_vault_notifications(params = {}, options = {})
      req = build_request(:get_backup_vault_notifications, params)
      req.send_request(options)
    end

    # This action returns details for a specified legal hold. The details
    # are the body of a legal hold in JSON format, in addition to metadata.
    #
    # @option params [required, String] :legal_hold_id
    #   This is the ID required to use `GetLegalHold`. This unique ID is
    #   associated with a specific legal hold.
    #
    # @return [Types::GetLegalHoldOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLegalHoldOutput#title #title} => String
    #   * {Types::GetLegalHoldOutput#status #status} => String
    #   * {Types::GetLegalHoldOutput#description #description} => String
    #   * {Types::GetLegalHoldOutput#cancel_description #cancel_description} => String
    #   * {Types::GetLegalHoldOutput#legal_hold_id #legal_hold_id} => String
    #   * {Types::GetLegalHoldOutput#legal_hold_arn #legal_hold_arn} => String
    #   * {Types::GetLegalHoldOutput#creation_date #creation_date} => Time
    #   * {Types::GetLegalHoldOutput#cancellation_date #cancellation_date} => Time
    #   * {Types::GetLegalHoldOutput#retain_record_until #retain_record_until} => Time
    #   * {Types::GetLegalHoldOutput#recovery_point_selection #recovery_point_selection} => Types::RecoveryPointSelection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_legal_hold({
    #     legal_hold_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CANCELING", "CANCELED"
    #   resp.description #=> String
    #   resp.cancel_description #=> String
    #   resp.legal_hold_id #=> String
    #   resp.legal_hold_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.cancellation_date #=> Time
    #   resp.retain_record_until #=> Time
    #   resp.recovery_point_selection.vault_names #=> Array
    #   resp.recovery_point_selection.vault_names[0] #=> String
    #   resp.recovery_point_selection.resource_identifiers #=> Array
    #   resp.recovery_point_selection.resource_identifiers[0] #=> String
    #   resp.recovery_point_selection.date_range.from_date #=> Time
    #   resp.recovery_point_selection.date_range.to_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetLegalHold AWS API Documentation
    #
    # @overload get_legal_hold(params = {})
    # @param [Hash] params ({})
    def get_legal_hold(params = {}, options = {})
      req = build_request(:get_legal_hold, params)
      req.send_request(options)
    end

    # Returns a set of metadata key-value pairs that were used to create the
    # backup.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @return [Types::GetRecoveryPointRestoreMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecoveryPointRestoreMetadataOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::GetRecoveryPointRestoreMetadataOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::GetRecoveryPointRestoreMetadataOutput#restore_metadata #restore_metadata} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_point_restore_metadata({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_arn #=> String
    #   resp.recovery_point_arn #=> String
    #   resp.restore_metadata #=> Hash
    #   resp.restore_metadata["MetadataKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointRestoreMetadata AWS API Documentation
    #
    # @overload get_recovery_point_restore_metadata(params = {})
    # @param [Hash] params ({})
    def get_recovery_point_restore_metadata(params = {}, options = {})
      req = build_request(:get_recovery_point_restore_metadata, params)
      req.send_request(options)
    end

    # Returns the Amazon Web Services resource types supported by Backup.
    #
    # @return [Types::GetSupportedResourceTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSupportedResourceTypesOutput#resource_types #resource_types} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetSupportedResourceTypes AWS API Documentation
    #
    # @overload get_supported_resource_types(params = {})
    # @param [Hash] params ({})
    def get_supported_resource_types(params = {}, options = {})
      req = build_request(:get_supported_resource_types, params)
      req.send_request(options)
    end

    # Returns a list of existing backup jobs for an authenticated account
    # for the last 30 days. For a longer period of time, consider using
    # these [monitoring tools][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @option params [String] :by_resource_arn
    #   Returns only backup jobs that match the specified resource Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :by_state
    #   Returns only backup jobs that are in the specified state.
    #
    # @option params [String] :by_backup_vault_name
    #   Returns only backup jobs that will be stored in the specified backup
    #   vault. Backup vaults are identified by names that are unique to the
    #   account used to create them and the Amazon Web Services Region where
    #   they are created. They consist of lowercase letters, numbers, and
    #   hyphens.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_before
    #   Returns only backup jobs that were created before the specified date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_after
    #   Returns only backup jobs that were created after the specified date.
    #
    # @option params [String] :by_resource_type
    #   Returns only backup jobs for the specified resources:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `VirtualMachine` for virtual machines
    #
    # @option params [String] :by_account_id
    #   The account ID to list the jobs from. Returns only backup jobs
    #   associated with the specified account ID.
    #
    #   If used from an Organizations management account, passing `*` returns
    #   all jobs across the organization.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_after
    #   Returns only backup jobs completed after a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_before
    #   Returns only backup jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #
    # @option params [String] :by_parent_job_id
    #   This is a filter to list child (nested) jobs based on parent job ID.
    #
    # @return [Types::ListBackupJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupJobsOutput#backup_jobs #backup_jobs} => Array&lt;Types::BackupJob&gt;
    #   * {Types::ListBackupJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_jobs({
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_state: "CREATED", # accepts CREATED, PENDING, RUNNING, ABORTING, ABORTED, COMPLETED, FAILED, EXPIRED, PARTIAL
    #     by_backup_vault_name: "BackupVaultName",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_account_id: "AccountId",
    #     by_complete_after: Time.now,
    #     by_complete_before: Time.now,
    #     by_parent_job_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_jobs #=> Array
    #   resp.backup_jobs[0].account_id #=> String
    #   resp.backup_jobs[0].backup_job_id #=> String
    #   resp.backup_jobs[0].backup_vault_name #=> String
    #   resp.backup_jobs[0].backup_vault_arn #=> String
    #   resp.backup_jobs[0].recovery_point_arn #=> String
    #   resp.backup_jobs[0].resource_arn #=> String
    #   resp.backup_jobs[0].creation_date #=> Time
    #   resp.backup_jobs[0].completion_date #=> Time
    #   resp.backup_jobs[0].state #=> String, one of "CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL"
    #   resp.backup_jobs[0].status_message #=> String
    #   resp.backup_jobs[0].percent_done #=> String
    #   resp.backup_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.backup_jobs[0].iam_role_arn #=> String
    #   resp.backup_jobs[0].created_by.backup_plan_id #=> String
    #   resp.backup_jobs[0].created_by.backup_plan_arn #=> String
    #   resp.backup_jobs[0].created_by.backup_plan_version #=> String
    #   resp.backup_jobs[0].created_by.backup_rule_id #=> String
    #   resp.backup_jobs[0].expected_completion_date #=> Time
    #   resp.backup_jobs[0].start_by #=> Time
    #   resp.backup_jobs[0].resource_type #=> String
    #   resp.backup_jobs[0].bytes_transferred #=> Integer
    #   resp.backup_jobs[0].backup_options #=> Hash
    #   resp.backup_jobs[0].backup_options["BackupOptionKey"] #=> String
    #   resp.backup_jobs[0].backup_type #=> String
    #   resp.backup_jobs[0].parent_job_id #=> String
    #   resp.backup_jobs[0].is_parent #=> Boolean
    #   resp.backup_jobs[0].resource_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupJobs AWS API Documentation
    #
    # @overload list_backup_jobs(params = {})
    # @param [Hash] params ({})
    def list_backup_jobs(params = {}, options = {})
      req = build_request(:list_backup_jobs, params)
      req.send_request(options)
    end

    # Returns metadata of your saved backup plan templates, including the
    # template ID, name, and the creation and deletion dates.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListBackupPlanTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupPlanTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListBackupPlanTemplatesOutput#backup_plan_templates_list #backup_plan_templates_list} => Array&lt;Types::BackupPlanTemplatesListMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plan_templates({
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.backup_plan_templates_list #=> Array
    #   resp.backup_plan_templates_list[0].backup_plan_template_id #=> String
    #   resp.backup_plan_templates_list[0].backup_plan_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanTemplates AWS API Documentation
    #
    # @overload list_backup_plan_templates(params = {})
    # @param [Hash] params ({})
    def list_backup_plan_templates(params = {}, options = {})
      req = build_request(:list_backup_plan_templates, params)
      req.send_request(options)
    end

    # Returns version metadata of your backup plans, including Amazon
    # Resource Names (ARNs), backup plan IDs, creation and deletion dates,
    # plan names, and version IDs.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListBackupPlanVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupPlanVersionsOutput#next_token #next_token} => String
    #   * {Types::ListBackupPlanVersionsOutput#backup_plan_versions_list #backup_plan_versions_list} => Array&lt;Types::BackupPlansListMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plan_versions({
    #     backup_plan_id: "string", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.backup_plan_versions_list #=> Array
    #   resp.backup_plan_versions_list[0].backup_plan_arn #=> String
    #   resp.backup_plan_versions_list[0].backup_plan_id #=> String
    #   resp.backup_plan_versions_list[0].creation_date #=> Time
    #   resp.backup_plan_versions_list[0].deletion_date #=> Time
    #   resp.backup_plan_versions_list[0].version_id #=> String
    #   resp.backup_plan_versions_list[0].backup_plan_name #=> String
    #   resp.backup_plan_versions_list[0].creator_request_id #=> String
    #   resp.backup_plan_versions_list[0].last_execution_date #=> Time
    #   resp.backup_plan_versions_list[0].advanced_backup_settings #=> Array
    #   resp.backup_plan_versions_list[0].advanced_backup_settings[0].resource_type #=> String
    #   resp.backup_plan_versions_list[0].advanced_backup_settings[0].backup_options #=> Hash
    #   resp.backup_plan_versions_list[0].advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanVersions AWS API Documentation
    #
    # @overload list_backup_plan_versions(params = {})
    # @param [Hash] params ({})
    def list_backup_plan_versions(params = {}, options = {})
      req = build_request(:list_backup_plan_versions, params)
      req.send_request(options)
    end

    # Returns a list of all active backup plans for an authenticated
    # account. The list contains information such as Amazon Resource Names
    # (ARNs), plan IDs, creation and deletion dates, version IDs, plan
    # names, and creator request IDs.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @option params [Boolean] :include_deleted
    #   A Boolean value with a default value of `FALSE` that returns deleted
    #   backup plans when set to `TRUE`.
    #
    # @return [Types::ListBackupPlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupPlansOutput#next_token #next_token} => String
    #   * {Types::ListBackupPlansOutput#backup_plans_list #backup_plans_list} => Array&lt;Types::BackupPlansListMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plans({
    #     next_token: "string",
    #     max_results: 1,
    #     include_deleted: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.backup_plans_list #=> Array
    #   resp.backup_plans_list[0].backup_plan_arn #=> String
    #   resp.backup_plans_list[0].backup_plan_id #=> String
    #   resp.backup_plans_list[0].creation_date #=> Time
    #   resp.backup_plans_list[0].deletion_date #=> Time
    #   resp.backup_plans_list[0].version_id #=> String
    #   resp.backup_plans_list[0].backup_plan_name #=> String
    #   resp.backup_plans_list[0].creator_request_id #=> String
    #   resp.backup_plans_list[0].last_execution_date #=> Time
    #   resp.backup_plans_list[0].advanced_backup_settings #=> Array
    #   resp.backup_plans_list[0].advanced_backup_settings[0].resource_type #=> String
    #   resp.backup_plans_list[0].advanced_backup_settings[0].backup_options #=> Hash
    #   resp.backup_plans_list[0].advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlans AWS API Documentation
    #
    # @overload list_backup_plans(params = {})
    # @param [Hash] params ({})
    def list_backup_plans(params = {}, options = {})
      req = build_request(:list_backup_plans, params)
      req.send_request(options)
    end

    # Returns an array containing metadata of the resources associated with
    # the target backup plan.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListBackupSelectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupSelectionsOutput#next_token #next_token} => String
    #   * {Types::ListBackupSelectionsOutput#backup_selections_list #backup_selections_list} => Array&lt;Types::BackupSelectionsListMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_selections({
    #     backup_plan_id: "string", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.backup_selections_list #=> Array
    #   resp.backup_selections_list[0].selection_id #=> String
    #   resp.backup_selections_list[0].selection_name #=> String
    #   resp.backup_selections_list[0].backup_plan_id #=> String
    #   resp.backup_selections_list[0].creation_date #=> Time
    #   resp.backup_selections_list[0].creator_request_id #=> String
    #   resp.backup_selections_list[0].iam_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupSelections AWS API Documentation
    #
    # @overload list_backup_selections(params = {})
    # @param [Hash] params ({})
    def list_backup_selections(params = {}, options = {})
      req = build_request(:list_backup_selections, params)
      req.send_request(options)
    end

    # Returns a list of recovery point storage containers along with
    # information about them.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListBackupVaultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupVaultsOutput#backup_vault_list #backup_vault_list} => Array&lt;Types::BackupVaultListMember&gt;
    #   * {Types::ListBackupVaultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_vaults({
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_list #=> Array
    #   resp.backup_vault_list[0].backup_vault_name #=> String
    #   resp.backup_vault_list[0].backup_vault_arn #=> String
    #   resp.backup_vault_list[0].creation_date #=> Time
    #   resp.backup_vault_list[0].encryption_key_arn #=> String
    #   resp.backup_vault_list[0].creator_request_id #=> String
    #   resp.backup_vault_list[0].number_of_recovery_points #=> Integer
    #   resp.backup_vault_list[0].locked #=> Boolean
    #   resp.backup_vault_list[0].min_retention_days #=> Integer
    #   resp.backup_vault_list[0].max_retention_days #=> Integer
    #   resp.backup_vault_list[0].lock_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupVaults AWS API Documentation
    #
    # @overload list_backup_vaults(params = {})
    # @param [Hash] params ({})
    def list_backup_vaults(params = {}, options = {})
      req = build_request(:list_backup_vaults, params)
      req.send_request(options)
    end

    # Returns metadata about your copy jobs.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return maxResults number of items, NextToken
    #   allows you to return more items in your list starting at the location
    #   pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @option params [String] :by_resource_arn
    #   Returns only copy jobs that match the specified resource Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :by_state
    #   Returns only copy jobs that are in the specified state.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_before
    #   Returns only copy jobs that were created before the specified date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_after
    #   Returns only copy jobs that were created after the specified date.
    #
    # @option params [String] :by_resource_type
    #   Returns only backup jobs for the specified resources:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `VirtualMachine` for virtual machines
    #
    # @option params [String] :by_destination_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a source backup
    #   vault to copy from; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #
    # @option params [String] :by_account_id
    #   The account ID to list the jobs from. Returns only copy jobs
    #   associated with the specified account ID.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_before
    #   Returns only copy jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_after
    #   Returns only copy jobs completed after a date expressed in Unix format
    #   and Coordinated Universal Time (UTC).
    #
    # @option params [String] :by_parent_job_id
    #   This is a filter to list child (nested) jobs based on parent job ID.
    #
    # @return [Types::ListCopyJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCopyJobsOutput#copy_jobs #copy_jobs} => Array&lt;Types::CopyJob&gt;
    #   * {Types::ListCopyJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_copy_jobs({
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_state: "CREATED", # accepts CREATED, RUNNING, COMPLETED, FAILED, PARTIAL
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_destination_vault_arn: "string",
    #     by_account_id: "AccountId",
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now,
    #     by_parent_job_id: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_jobs #=> Array
    #   resp.copy_jobs[0].account_id #=> String
    #   resp.copy_jobs[0].copy_job_id #=> String
    #   resp.copy_jobs[0].source_backup_vault_arn #=> String
    #   resp.copy_jobs[0].source_recovery_point_arn #=> String
    #   resp.copy_jobs[0].destination_backup_vault_arn #=> String
    #   resp.copy_jobs[0].destination_recovery_point_arn #=> String
    #   resp.copy_jobs[0].resource_arn #=> String
    #   resp.copy_jobs[0].creation_date #=> Time
    #   resp.copy_jobs[0].completion_date #=> Time
    #   resp.copy_jobs[0].state #=> String, one of "CREATED", "RUNNING", "COMPLETED", "FAILED", "PARTIAL"
    #   resp.copy_jobs[0].status_message #=> String
    #   resp.copy_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.copy_jobs[0].iam_role_arn #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_id #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_arn #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_version #=> String
    #   resp.copy_jobs[0].created_by.backup_rule_id #=> String
    #   resp.copy_jobs[0].resource_type #=> String
    #   resp.copy_jobs[0].parent_job_id #=> String
    #   resp.copy_jobs[0].is_parent #=> Boolean
    #   resp.copy_jobs[0].composite_member_identifier #=> String
    #   resp.copy_jobs[0].number_of_child_jobs #=> Integer
    #   resp.copy_jobs[0].child_jobs_in_state #=> Hash
    #   resp.copy_jobs[0].child_jobs_in_state["CopyJobState"] #=> Integer
    #   resp.copy_jobs[0].resource_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListCopyJobs AWS API Documentation
    #
    # @overload list_copy_jobs(params = {})
    # @param [Hash] params ({})
    def list_copy_jobs(params = {}, options = {})
      req = build_request(:list_copy_jobs, params)
      req.send_request(options)
    end

    # Returns a list of all frameworks for an Amazon Web Services account
    # and Amazon Web Services Region.
    #
    # @option params [Integer] :max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListFrameworksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFrameworksOutput#frameworks #frameworks} => Array&lt;Types::Framework&gt;
    #   * {Types::ListFrameworksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_frameworks({
    #     max_results: 1,
    #     next_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.frameworks #=> Array
    #   resp.frameworks[0].framework_name #=> String
    #   resp.frameworks[0].framework_arn #=> String
    #   resp.frameworks[0].framework_description #=> String
    #   resp.frameworks[0].number_of_controls #=> Integer
    #   resp.frameworks[0].creation_time #=> Time
    #   resp.frameworks[0].deployment_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListFrameworks AWS API Documentation
    #
    # @overload list_frameworks(params = {})
    # @param [Hash] params ({})
    def list_frameworks(params = {}, options = {})
      req = build_request(:list_frameworks, params)
      req.send_request(options)
    end

    # This action returns metadata about active and previous legal holds.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource list items to be returned.
    #
    # @return [Types::ListLegalHoldsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLegalHoldsOutput#next_token #next_token} => String
    #   * {Types::ListLegalHoldsOutput#legal_holds #legal_holds} => Array&lt;Types::LegalHold&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_legal_holds({
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.legal_holds #=> Array
    #   resp.legal_holds[0].title #=> String
    #   resp.legal_holds[0].status #=> String, one of "CREATING", "ACTIVE", "CANCELING", "CANCELED"
    #   resp.legal_holds[0].description #=> String
    #   resp.legal_holds[0].legal_hold_id #=> String
    #   resp.legal_holds[0].legal_hold_arn #=> String
    #   resp.legal_holds[0].creation_date #=> Time
    #   resp.legal_holds[0].cancellation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListLegalHolds AWS API Documentation
    #
    # @overload list_legal_holds(params = {})
    # @param [Hash] params ({})
    def list_legal_holds(params = {}, options = {})
      req = build_request(:list_legal_holds, params)
      req.send_request(options)
    end

    # Returns an array of resources successfully backed up by Backup,
    # including the time the resource was saved, an Amazon Resource Name
    # (ARN) of the resource, and a resource type.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListProtectedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectedResourcesOutput#results #results} => Array&lt;Types::ProtectedResource&gt;
    #   * {Types::ListProtectedResourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protected_resources({
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].resource_arn #=> String
    #   resp.results[0].resource_type #=> String
    #   resp.results[0].last_backup_time #=> Time
    #   resp.results[0].resource_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListProtectedResources AWS API Documentation
    #
    # @overload list_protected_resources(params = {})
    # @param [Hash] params ({})
    def list_protected_resources(params = {}, options = {})
      req = build_request(:list_protected_resources, params)
      req.send_request(options)
    end

    # Returns detailed information about the recovery points stored in a
    # backup vault.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    #   <note markdown="1"> Backup vault name might not be available when a supported service
    #   creates the backup.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @option params [String] :by_resource_arn
    #   Returns only recovery points that match the specified resource Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :by_resource_type
    #   Returns only recovery points that match the specified resource type.
    #
    # @option params [String] :by_backup_plan_id
    #   Returns only recovery points that match the specified backup plan ID.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_before
    #   Returns only recovery points that were created before the specified
    #   timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_after
    #   Returns only recovery points that were created after the specified
    #   timestamp.
    #
    # @option params [String] :by_parent_recovery_point_arn
    #   This returns only recovery points that match the specified parent
    #   (composite) recovery point Amazon Resource Name (ARN).
    #
    # @return [Types::ListRecoveryPointsByBackupVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecoveryPointsByBackupVaultOutput#next_token #next_token} => String
    #   * {Types::ListRecoveryPointsByBackupVaultOutput#recovery_points #recovery_points} => Array&lt;Types::RecoveryPointByBackupVault&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points_by_backup_vault({
    #     backup_vault_name: "BackupVaultName", # required
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_resource_type: "ResourceType",
    #     by_backup_plan_id: "string",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_parent_recovery_point_arn: "ARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recovery_points #=> Array
    #   resp.recovery_points[0].recovery_point_arn #=> String
    #   resp.recovery_points[0].backup_vault_name #=> String
    #   resp.recovery_points[0].backup_vault_arn #=> String
    #   resp.recovery_points[0].source_backup_vault_arn #=> String
    #   resp.recovery_points[0].resource_arn #=> String
    #   resp.recovery_points[0].resource_type #=> String
    #   resp.recovery_points[0].created_by.backup_plan_id #=> String
    #   resp.recovery_points[0].created_by.backup_plan_arn #=> String
    #   resp.recovery_points[0].created_by.backup_plan_version #=> String
    #   resp.recovery_points[0].created_by.backup_rule_id #=> String
    #   resp.recovery_points[0].iam_role_arn #=> String
    #   resp.recovery_points[0].status #=> String, one of "COMPLETED", "PARTIAL", "DELETING", "EXPIRED"
    #   resp.recovery_points[0].status_message #=> String
    #   resp.recovery_points[0].creation_date #=> Time
    #   resp.recovery_points[0].completion_date #=> Time
    #   resp.recovery_points[0].backup_size_in_bytes #=> Integer
    #   resp.recovery_points[0].calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.recovery_points[0].calculated_lifecycle.delete_at #=> Time
    #   resp.recovery_points[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.recovery_points[0].lifecycle.delete_after_days #=> Integer
    #   resp.recovery_points[0].encryption_key_arn #=> String
    #   resp.recovery_points[0].is_encrypted #=> Boolean
    #   resp.recovery_points[0].last_restore_time #=> Time
    #   resp.recovery_points[0].parent_recovery_point_arn #=> String
    #   resp.recovery_points[0].composite_member_identifier #=> String
    #   resp.recovery_points[0].is_parent #=> Boolean
    #   resp.recovery_points[0].resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByBackupVault AWS API Documentation
    #
    # @overload list_recovery_points_by_backup_vault(params = {})
    # @param [Hash] params ({})
    def list_recovery_points_by_backup_vault(params = {}, options = {})
      req = build_request(:list_recovery_points_by_backup_vault, params)
      req.send_request(options)
    end

    # This action returns recovery point ARNs (Amazon Resource Names) of the
    # specified legal hold.
    #
    # @option params [required, String] :legal_hold_id
    #   This is the ID of the legal hold.
    #
    # @option params [String] :next_token
    #   This is the next item following a partial list of returned resources.
    #   For example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   This is the maximum number of resource list items to be returned.
    #
    # @return [Types::ListRecoveryPointsByLegalHoldOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecoveryPointsByLegalHoldOutput#recovery_points #recovery_points} => Array&lt;Types::RecoveryPointMember&gt;
    #   * {Types::ListRecoveryPointsByLegalHoldOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points_by_legal_hold({
    #     legal_hold_id: "string", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recovery_points #=> Array
    #   resp.recovery_points[0].recovery_point_arn #=> String
    #   resp.recovery_points[0].resource_arn #=> String
    #   resp.recovery_points[0].resource_type #=> String
    #   resp.recovery_points[0].backup_vault_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByLegalHold AWS API Documentation
    #
    # @overload list_recovery_points_by_legal_hold(params = {})
    # @param [Hash] params ({})
    def list_recovery_points_by_legal_hold(params = {}, options = {})
      req = build_request(:list_recovery_points_by_legal_hold, params)
      req.send_request(options)
    end

    # Returns detailed information about all the recovery points of the type
    # specified by a resource Amazon Resource Name (ARN).
    #
    # <note markdown="1"> For Amazon EFS and Amazon EC2, this action only lists recovery points
    # created by Backup.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    #   <note markdown="1"> Amazon RDS requires a value of at least 20.
    #
    #    </note>
    #
    # @return [Types::ListRecoveryPointsByResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecoveryPointsByResourceOutput#next_token #next_token} => String
    #   * {Types::ListRecoveryPointsByResourceOutput#recovery_points #recovery_points} => Array&lt;Types::RecoveryPointByResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points_by_resource({
    #     resource_arn: "ARN", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recovery_points #=> Array
    #   resp.recovery_points[0].recovery_point_arn #=> String
    #   resp.recovery_points[0].creation_date #=> Time
    #   resp.recovery_points[0].status #=> String, one of "COMPLETED", "PARTIAL", "DELETING", "EXPIRED"
    #   resp.recovery_points[0].status_message #=> String
    #   resp.recovery_points[0].encryption_key_arn #=> String
    #   resp.recovery_points[0].backup_size_bytes #=> Integer
    #   resp.recovery_points[0].backup_vault_name #=> String
    #   resp.recovery_points[0].is_parent #=> Boolean
    #   resp.recovery_points[0].parent_recovery_point_arn #=> String
    #   resp.recovery_points[0].resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByResource AWS API Documentation
    #
    # @overload list_recovery_points_by_resource(params = {})
    # @param [Hash] params ({})
    def list_recovery_points_by_resource(params = {}, options = {})
      req = build_request(:list_recovery_points_by_resource, params)
      req.send_request(options)
    end

    # Returns details about your report jobs.
    #
    # @option params [String] :by_report_plan_name
    #   Returns only report jobs with the specified report plan name.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_creation_before
    #   Returns only report jobs that were created before the date and time
    #   specified in Unix format and Coordinated Universal Time (UTC). For
    #   example, the value 1516925490 represents Friday, January 26, 2018
    #   12:11:30 AM.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_creation_after
    #   Returns only report jobs that were created after the date and time
    #   specified in Unix format and Coordinated Universal Time (UTC). For
    #   example, the value 1516925490 represents Friday, January 26, 2018
    #   12:11:30 AM.
    #
    # @option params [String] :by_status
    #   Returns only report jobs that are in the specified status. The
    #   statuses are:
    #
    #   `CREATED | RUNNING | COMPLETED | FAILED`
    #
    # @option params [Integer] :max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListReportJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportJobsOutput#report_jobs #report_jobs} => Array&lt;Types::ReportJob&gt;
    #   * {Types::ListReportJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_jobs({
    #     by_report_plan_name: "ReportPlanName",
    #     by_creation_before: Time.now,
    #     by_creation_after: Time.now,
    #     by_status: "string",
    #     max_results: 1,
    #     next_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_jobs #=> Array
    #   resp.report_jobs[0].report_job_id #=> String
    #   resp.report_jobs[0].report_plan_arn #=> String
    #   resp.report_jobs[0].report_template #=> String
    #   resp.report_jobs[0].creation_time #=> Time
    #   resp.report_jobs[0].completion_time #=> Time
    #   resp.report_jobs[0].status #=> String
    #   resp.report_jobs[0].status_message #=> String
    #   resp.report_jobs[0].report_destination.s3_bucket_name #=> String
    #   resp.report_jobs[0].report_destination.s3_keys #=> Array
    #   resp.report_jobs[0].report_destination.s3_keys[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportJobs AWS API Documentation
    #
    # @overload list_report_jobs(params = {})
    # @param [Hash] params ({})
    def list_report_jobs(params = {}, options = {})
      req = build_request(:list_report_jobs, params)
      req.send_request(options)
    end

    # Returns a list of your report plans. For detailed information about a
    # single report plan, use `DescribeReportPlan`.
    #
    # @option params [Integer] :max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListReportPlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportPlansOutput#report_plans #report_plans} => Array&lt;Types::ReportPlan&gt;
    #   * {Types::ListReportPlansOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_plans({
    #     max_results: 1,
    #     next_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_plans #=> Array
    #   resp.report_plans[0].report_plan_arn #=> String
    #   resp.report_plans[0].report_plan_name #=> String
    #   resp.report_plans[0].report_plan_description #=> String
    #   resp.report_plans[0].report_setting.report_template #=> String
    #   resp.report_plans[0].report_setting.framework_arns #=> Array
    #   resp.report_plans[0].report_setting.framework_arns[0] #=> String
    #   resp.report_plans[0].report_setting.number_of_frameworks #=> Integer
    #   resp.report_plans[0].report_setting.accounts #=> Array
    #   resp.report_plans[0].report_setting.accounts[0] #=> String
    #   resp.report_plans[0].report_setting.organization_units #=> Array
    #   resp.report_plans[0].report_setting.organization_units[0] #=> String
    #   resp.report_plans[0].report_setting.regions #=> Array
    #   resp.report_plans[0].report_setting.regions[0] #=> String
    #   resp.report_plans[0].report_delivery_channel.s3_bucket_name #=> String
    #   resp.report_plans[0].report_delivery_channel.s3_key_prefix #=> String
    #   resp.report_plans[0].report_delivery_channel.formats #=> Array
    #   resp.report_plans[0].report_delivery_channel.formats[0] #=> String
    #   resp.report_plans[0].deployment_status #=> String
    #   resp.report_plans[0].creation_time #=> Time
    #   resp.report_plans[0].last_attempted_execution_time #=> Time
    #   resp.report_plans[0].last_successful_execution_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportPlans AWS API Documentation
    #
    # @overload list_report_plans(params = {})
    # @param [Hash] params ({})
    def list_report_plans(params = {}, options = {})
      req = build_request(:list_report_plans, params)
      req.send_request(options)
    end

    # Returns a list of jobs that Backup initiated to restore a saved
    # resource, including details about the recovery process.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @option params [String] :by_account_id
    #   The account ID to list the jobs from. Returns only restore jobs
    #   associated with the specified account ID.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_before
    #   Returns only restore jobs that were created before the specified date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_created_after
    #   Returns only restore jobs that were created after the specified date.
    #
    # @option params [String] :by_status
    #   Returns only restore jobs associated with the specified job status.
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_before
    #   Returns only copy jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #
    # @option params [Time,DateTime,Date,Integer,String] :by_complete_after
    #   Returns only copy jobs completed after a date expressed in Unix format
    #   and Coordinated Universal Time (UTC).
    #
    # @return [Types::ListRestoreJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRestoreJobsOutput#restore_jobs #restore_jobs} => Array&lt;Types::RestoreJobsListMember&gt;
    #   * {Types::ListRestoreJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_restore_jobs({
    #     next_token: "string",
    #     max_results: 1,
    #     by_account_id: "AccountId",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_status: "PENDING", # accepts PENDING, RUNNING, COMPLETED, ABORTED, FAILED
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.restore_jobs #=> Array
    #   resp.restore_jobs[0].account_id #=> String
    #   resp.restore_jobs[0].restore_job_id #=> String
    #   resp.restore_jobs[0].recovery_point_arn #=> String
    #   resp.restore_jobs[0].creation_date #=> Time
    #   resp.restore_jobs[0].completion_date #=> Time
    #   resp.restore_jobs[0].status #=> String, one of "PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"
    #   resp.restore_jobs[0].status_message #=> String
    #   resp.restore_jobs[0].percent_done #=> String
    #   resp.restore_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.restore_jobs[0].iam_role_arn #=> String
    #   resp.restore_jobs[0].expected_completion_time_minutes #=> Integer
    #   resp.restore_jobs[0].created_resource_arn #=> String
    #   resp.restore_jobs[0].resource_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobs AWS API Documentation
    #
    # @overload list_restore_jobs(params = {})
    # @param [Hash] params ({})
    def list_restore_jobs(params = {}, options = {})
      req = build_request(:list_restore_jobs, params)
      req.send_request(options)
    end

    # Returns a list of key-value pairs assigned to a target recovery point,
    # backup plan, or backup vault.
    #
    # `ListTags` only works for resource types that support full Backup
    # management of their backups. Those resource types are listed in the
    # "Full Backup management" section of the [ Feature availability by
    # resource][1] table.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource. The
    #   format of the ARN depends on the type of resource. Valid targets for
    #   `ListTags` are recovery points, backup plans, and backup vaults.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned items. For example,
    #   if a request is made to return `maxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned.
    #
    # @return [Types::ListTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsOutput#next_token #next_token} => String
    #   * {Types::ListTagsOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "ARN", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Sets a resource-based policy that is used to manage access permissions
    # on the target backup vault. Requires a backup vault name and an access
    # policy document in JSON format.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [String] :policy
    #   The backup vault access policy document in JSON format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_access_policy({
    #     backup_vault_name: "BackupVaultName", # required
    #     policy: "IAMPolicy",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultAccessPolicy AWS API Documentation
    #
    # @overload put_backup_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def put_backup_vault_access_policy(params = {}, options = {})
      req = build_request(:put_backup_vault_access_policy, params)
      req.send_request(options)
    end

    # Applies Backup Vault Lock to a backup vault, preventing attempts to
    # delete any recovery point stored in or created in a backup vault.
    # Vault Lock also prevents attempts to update the lifecycle policy that
    # controls the retention period of any recovery point currently stored
    # in a backup vault. If specified, Vault Lock enforces a minimum and
    # maximum retention period for future backup and copy jobs that target a
    # backup vault.
    #
    # <note markdown="1"> Backup Vault Lock has been assessed by Cohasset Associates for use in
    # environments that are subject to SEC 17a-4, CFTC, and FINRA
    # regulations. For more information about how Backup Vault Lock relates
    # to these regulations, see the [Cohasset Associates Compliance
    # Assessment.](samples/cohassetreport.zip)
    #
    #  </note>
    #
    # @option params [required, String] :backup_vault_name
    #   The Backup Vault Lock configuration that specifies the name of the
    #   backup vault it protects.
    #
    # @option params [Integer] :min_retention_days
    #   The Backup Vault Lock configuration that specifies the minimum
    #   retention period that the vault retains its recovery points. This
    #   setting can be useful if, for example, your organization's policies
    #   require you to retain certain data for at least seven years (2555
    #   days).
    #
    #   If this parameter is not specified, Vault Lock will not enforce a
    #   minimum retention period.
    #
    #   If this parameter is specified, any backup or copy job to the vault
    #   must have a lifecycle policy with a retention period equal to or
    #   longer than the minimum retention period. If the job's retention
    #   period is shorter than that minimum retention period, then the vault
    #   fails that backup or copy job, and you should either modify your
    #   lifecycle settings or use a different vault. The shortest minimum
    #   retention period you can specify is 1 day. Recovery points already
    #   saved in the vault prior to Vault Lock are not affected.
    #
    # @option params [Integer] :max_retention_days
    #   The Backup Vault Lock configuration that specifies the maximum
    #   retention period that the vault retains its recovery points. This
    #   setting can be useful if, for example, your organization's policies
    #   require you to destroy certain data after retaining it for four years
    #   (1460 days).
    #
    #   If this parameter is not included, Vault Lock does not enforce a
    #   maximum retention period on the recovery points in the vault. If this
    #   parameter is included without a value, Vault Lock will not enforce a
    #   maximum retention period.
    #
    #   If this parameter is specified, any backup or copy job to the vault
    #   must have a lifecycle policy with a retention period equal to or
    #   shorter than the maximum retention period. If the job's retention
    #   period is longer than that maximum retention period, then the vault
    #   fails the backup or copy job, and you should either modify your
    #   lifecycle settings or use a different vault. The longest maximum
    #   retention period you can specify is 36500 days (approximately 100
    #   years). Recovery points already saved in the vault prior to Vault Lock
    #   are not affected.
    #
    # @option params [Integer] :changeable_for_days
    #   The Backup Vault Lock configuration that specifies the number of days
    #   before the lock date. For example, setting `ChangeableForDays` to 30
    #   on Jan. 1, 2022 at 8pm UTC will set the lock date to Jan. 31, 2022 at
    #   8pm UTC.
    #
    #   Backup enforces a 72-hour cooling-off period before Vault Lock takes
    #   effect and becomes immutable. Therefore, you must set
    #   `ChangeableForDays` to 3 or greater.
    #
    #   Before the lock date, you can delete Vault Lock from the vault using
    #   `DeleteBackupVaultLockConfiguration` or change the Vault Lock
    #   configuration using `PutBackupVaultLockConfiguration`. On and after
    #   the lock date, the Vault Lock becomes immutable and cannot be changed
    #   or deleted.
    #
    #   If this parameter is not specified, you can delete Vault Lock from the
    #   vault using `DeleteBackupVaultLockConfiguration` or change the Vault
    #   Lock configuration using `PutBackupVaultLockConfiguration` at any
    #   time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_lock_configuration({
    #     backup_vault_name: "BackupVaultName", # required
    #     min_retention_days: 1,
    #     max_retention_days: 1,
    #     changeable_for_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultLockConfiguration AWS API Documentation
    #
    # @overload put_backup_vault_lock_configuration(params = {})
    # @param [Hash] params ({})
    def put_backup_vault_lock_configuration(params = {}, options = {})
      req = build_request(:put_backup_vault_lock_configuration, params)
      req.send_request(options)
    end

    # Turns on notifications on a backup vault for the specified topic and
    # events.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) that specifies the topic for a backup
    #   vault’s events; for example,
    #   `arn:aws:sns:us-west-2:111122223333:MyVaultTopic`.
    #
    # @option params [required, Array<String>] :backup_vault_events
    #   An array of events that indicate the status of jobs to back up
    #   resources to the backup vault.
    #
    #   For common use cases and code samples, see [Using Amazon SNS to track
    #   Backup events][1].
    #
    #   The following events are supported:
    #
    #   * `BACKUP_JOB_STARTED` \| `BACKUP_JOB_COMPLETED`
    #
    #   * `COPY_JOB_STARTED` \| `COPY_JOB_SUCCESSFUL` \| `COPY_JOB_FAILED`
    #
    #   * `RESTORE_JOB_STARTED` \| `RESTORE_JOB_COMPLETED` \|
    #     `RECOVERY_POINT_MODIFIED`
    #
    #   * `S3_BACKUP_OBJECT_FAILED` \| `S3_RESTORE_OBJECT_FAILED`
    #
    #   <note markdown="1"> The list below shows items that are deprecated events (for reference)
    #   and are no longer in use. They are no longer supported and will not
    #   return statuses or notifications. Refer to the list above for current
    #   supported events.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/sns-notifications.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_notifications({
    #     backup_vault_name: "BackupVaultName", # required
    #     sns_topic_arn: "ARN", # required
    #     backup_vault_events: ["BACKUP_JOB_STARTED"], # required, accepts BACKUP_JOB_STARTED, BACKUP_JOB_COMPLETED, BACKUP_JOB_SUCCESSFUL, BACKUP_JOB_FAILED, BACKUP_JOB_EXPIRED, RESTORE_JOB_STARTED, RESTORE_JOB_COMPLETED, RESTORE_JOB_SUCCESSFUL, RESTORE_JOB_FAILED, COPY_JOB_STARTED, COPY_JOB_SUCCESSFUL, COPY_JOB_FAILED, RECOVERY_POINT_MODIFIED, BACKUP_PLAN_CREATED, BACKUP_PLAN_MODIFIED, S3_BACKUP_OBJECT_FAILED, S3_RESTORE_OBJECT_FAILED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultNotifications AWS API Documentation
    #
    # @overload put_backup_vault_notifications(params = {})
    # @param [Hash] params ({})
    def put_backup_vault_notifications(params = {}, options = {})
      req = build_request(:put_backup_vault_notifications, params)
      req.send_request(options)
    end

    # Starts an on-demand backup job for the specified resource.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource. The
    #   format of the ARN depends on the resource type.
    #
    # @option params [required, String] :iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartBackupJob`. Retrying a successful
    #   request with the same idempotency token results in a success message
    #   with no action taken.
    #
    # @option params [Integer] :start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional,
    #   and the default is 8 hours. If this value is included, it must be at
    #   least 60 minutes to avoid errors.
    #
    #   During the start window, the backup job status remains in `CREATED`
    #   status until it has successfully begun or until the start window time
    #   has run out. If within the start window time Backup receives an error
    #   that allows the job to be retried, Backup will automatically retry to
    #   begin the job at least every 10 minutes until the backup successfully
    #   begins (the job status changes to `RUNNING`) or until the job status
    #   changes to `EXPIRED` (which is expected to occur when the start window
    #   time is over).
    #
    # @option params [Integer] :complete_window_minutes
    #   A value in minutes during which a successfully started backup must
    #   complete, or else Backup will cancel the job. This value is optional.
    #   This value begins counting down from when the backup was scheduled. It
    #   does not add additional time for `StartWindowMinutes`, or if the
    #   backup started later than scheduled.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup will transition and expire
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting. The
    #   “transition to cold after days” setting cannot be changed after a
    #   backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression for
    #   other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #
    # @option params [Hash<String,String>] :recovery_point_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair.
    #
    # @option params [Hash<String,String>] :backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows Volume Shadow Copy Service (VSS) backup
    #   jobs.
    #
    #   Valid values: Set to `"WindowsVSS":"enabled"` to enable the
    #   `WindowsVSS` backup option and create a Windows VSS backup. Set to
    #   `"WindowsVSS""disabled"` to create a regular backup. The `WindowsVSS`
    #   option is not enabled by default.
    #
    # @return [Types::StartBackupJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBackupJobOutput#backup_job_id #backup_job_id} => String
    #   * {Types::StartBackupJobOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::StartBackupJobOutput#creation_date #creation_date} => Time
    #   * {Types::StartBackupJobOutput#is_parent #is_parent} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_backup_job({
    #     backup_vault_name: "BackupVaultName", # required
    #     resource_arn: "ARN", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #     idempotency_token: "string",
    #     start_window_minutes: 1,
    #     complete_window_minutes: 1,
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #     },
    #     recovery_point_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     backup_options: {
    #       "BackupOptionKey" => "BackupOptionValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_job_id #=> String
    #   resp.recovery_point_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.is_parent #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartBackupJob AWS API Documentation
    #
    # @overload start_backup_job(params = {})
    # @param [Hash] params ({})
    def start_backup_job(params = {}, options = {})
      req = build_request(:start_backup_job, params)
      req.send_request(options)
    end

    # Starts a job to create a one-time copy of the specified resource.
    #
    # Does not support continuous backups.
    #
    # @option params [required, String] :recovery_point_arn
    #   An ARN that uniquely identifies a recovery point to use for the copy
    #   job; for example,
    #   arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #
    # @option params [required, String] :source_backup_vault_name
    #   The name of a logical source container where backups are stored.
    #   Backup vaults are identified by names that are unique to the account
    #   used to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a destination
    #   backup vault to copy to; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #
    # @option params [required, String] :iam_role_arn
    #   Specifies the IAM role ARN used to copy the target recovery point; for
    #   example, `arn:aws:iam::123456789012:role/S3Access`.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartCopyJob`. Retrying a successful
    #   request with the same idempotency token results in a success message
    #   with no action taken.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   Contains an array of `Transition` objects specifying how long in days
    #   before a recovery point transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “retention”
    #   setting must be 90 days greater than the “transition to cold after
    #   days” setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression for
    #   other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #
    # @return [Types::StartCopyJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCopyJobOutput#copy_job_id #copy_job_id} => String
    #   * {Types::StartCopyJobOutput#creation_date #creation_date} => Time
    #   * {Types::StartCopyJobOutput#is_parent #is_parent} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_copy_job({
    #     recovery_point_arn: "ARN", # required
    #     source_backup_vault_name: "BackupVaultName", # required
    #     destination_backup_vault_arn: "ARN", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #     idempotency_token: "string",
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_job_id #=> String
    #   resp.creation_date #=> Time
    #   resp.is_parent #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartCopyJob AWS API Documentation
    #
    # @overload start_copy_job(params = {})
    # @param [Hash] params ({})
    def start_copy_job(params = {}, options = {})
      req = build_request(:start_copy_job, params)
      req.send_request(options)
    end

    # Starts an on-demand report job for the specified report plan.
    #
    # @option params [required, String] :report_plan_name
    #   The unique name of a report plan.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartReportJobInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartReportJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReportJobOutput#report_job_id #report_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_report_job({
    #     report_plan_name: "ReportPlanName", # required
    #     idempotency_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartReportJob AWS API Documentation
    #
    # @overload start_report_job(params = {})
    # @param [Hash] params ({})
    def start_report_job(params = {}, options = {})
      req = build_request(:start_report_job, params)
      req.send_request(options)
    end

    # Recovers the saved resource identified by an Amazon Resource Name
    # (ARN).
    #
    # @option params [required, String] :recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @option params [required, Hash<String,String>] :metadata
    #   A set of metadata key-value pairs. Contains information, such as a
    #   resource name, required to restore a recovery point.
    #
    #   You can get configuration metadata about a resource at the time it was
    #   backed up by calling `GetRecoveryPointRestoreMetadata`. However,
    #   values in addition to those provided by
    #   `GetRecoveryPointRestoreMetadata` might be required to restore a
    #   resource. For example, you might need to provide a new resource name
    #   if the original already exists.
    #
    #   You need to specify specific metadata to restore an Amazon Elastic
    #   File System (Amazon EFS) instance:
    #
    #   * `file-system-id`: The ID of the Amazon EFS file system that is
    #     backed up by Backup. Returned in `GetRecoveryPointRestoreMetadata`.
    #
    #   * `Encrypted`: A Boolean value that, if true, specifies that the file
    #     system is encrypted. If `KmsKeyId` is specified, `Encrypted` must be
    #     set to `true`.
    #
    #   * `KmsKeyId`: Specifies the Amazon Web Services KMS key that is used
    #     to encrypt the restored file system. You can specify a key from
    #     another Amazon Web Services account provided that key it is properly
    #     shared with your account via Amazon Web Services KMS.
    #
    #   * `PerformanceMode`: Specifies the throughput mode of the file system.
    #
    #   * `CreationToken`: A user-supplied value that ensures the uniqueness
    #     (idempotency) of the request.
    #
    #   * `newFileSystem`: A Boolean value that, if true, specifies that the
    #     recovery point is restored to a new Amazon EFS file system.
    #
    #   * `ItemsToRestore`: An array of one to five strings where each string
    #     is a file path. Use `ItemsToRestore` to restore specific files or
    #     directories rather than the entire file system. This parameter is
    #     optional. For example, `"itemsToRestore":"["/my.test"]"`.
    #
    # @option params [String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for example:
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartRestoreJob`. Retrying a successful
    #   request with the same idempotency token results in a success message
    #   with no action taken.
    #
    # @option params [String] :resource_type
    #   Starts a job to restore a recovery point for one of the following
    #   resources:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `CloudFormation` for CloudFormation
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Redshift` for Amazon Redshift
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for virtual machines
    #
    # @option params [Boolean] :copy_source_tags_to_restored_resource
    #   This is an optional parameter. If this equals `True`, tags included in
    #   the backup will be copied to the restored resource.
    #
    #   This can only be applied to backups created through Backup.
    #
    # @return [Types::StartRestoreJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRestoreJobOutput#restore_job_id #restore_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_restore_job({
    #     recovery_point_arn: "ARN", # required
    #     metadata: { # required
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     iam_role_arn: "IAMRoleArn",
    #     idempotency_token: "string",
    #     resource_type: "ResourceType",
    #     copy_source_tags_to_restored_resource: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.restore_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartRestoreJob AWS API Documentation
    #
    # @overload start_restore_job(params = {})
    # @param [Hash] params ({})
    def start_restore_job(params = {}, options = {})
      req = build_request(:start_restore_job, params)
      req.send_request(options)
    end

    # Attempts to cancel a job to create a one-time backup of a resource.
    #
    # This action is not supported for the following services: Amazon FSx
    # for Windows File Server, Amazon FSx for Lustre, FSx for ONTAP , Amazon
    # FSx for OpenZFS, Amazon DocumentDB (with MongoDB compatibility),
    # Amazon RDS, Amazon Aurora, and Amazon Neptune.
    #
    # @option params [required, String] :backup_job_id
    #   Uniquely identifies a request to Backup to back up a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_backup_job({
    #     backup_job_id: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StopBackupJob AWS API Documentation
    #
    # @overload stop_backup_job(params = {})
    # @param [Hash] params ({})
    def stop_backup_job(params = {}, options = {})
      req = build_request(:stop_backup_job, params)
      req.send_request(options)
    end

    # Assigns a set of key-value pairs to a recovery point, backup plan, or
    # backup vault identified by an Amazon Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the type of the tagged resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Key-value pairs that are used to help organize your resources. You can
    #   assign your own metadata to the resources you create. For clarity,
    #   this is the structure to assign tags:
    #   `[\{"Key":"string","Value":"string"\}]`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a set of key-value pairs from a recovery point, backup plan,
    # or backup vault identified by an Amazon Resource Name (ARN)
    #
    # @option params [required, String] :resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the type of the tagged resource.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of keys to identify which key-value tags to remove from a
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_key_list: ["string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing backup plan identified by its `backupPlanId` with
    # the input document in JSON format. The new version is uniquely
    # identified by a `VersionId`.
    #
    # @option params [required, String] :backup_plan_id
    #   Uniquely identifies a backup plan.
    #
    # @option params [required, Types::BackupPlanInput] :backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #
    # @return [Types::UpdateBackupPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackupPlanOutput#backup_plan_id #backup_plan_id} => String
    #   * {Types::UpdateBackupPlanOutput#backup_plan_arn #backup_plan_arn} => String
    #   * {Types::UpdateBackupPlanOutput#creation_date #creation_date} => Time
    #   * {Types::UpdateBackupPlanOutput#version_id #version_id} => String
    #   * {Types::UpdateBackupPlanOutput#advanced_backup_settings #advanced_backup_settings} => Array&lt;Types::AdvancedBackupSetting&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backup_plan({
    #     backup_plan_id: "string", # required
    #     backup_plan: { # required
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             },
    #           ],
    #           enable_continuous_backup: false,
    #         },
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_plan_id #=> String
    #   resp.backup_plan_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.version_id #=> String
    #   resp.advanced_backup_settings #=> Array
    #   resp.advanced_backup_settings[0].resource_type #=> String
    #   resp.advanced_backup_settings[0].backup_options #=> Hash
    #   resp.advanced_backup_settings[0].backup_options["BackupOptionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateBackupPlan AWS API Documentation
    #
    # @overload update_backup_plan(params = {})
    # @param [Hash] params ({})
    def update_backup_plan(params = {}, options = {})
      req = build_request(:update_backup_plan, params)
      req.send_request(options)
    end

    # Updates an existing framework identified by its `FrameworkName` with
    # the input document in JSON format.
    #
    # @option params [required, String] :framework_name
    #   The unique name of a framework. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #
    # @option params [String] :framework_description
    #   An optional description of the framework with a maximum 1,024
    #   characters.
    #
    # @option params [Array<Types::FrameworkControl>] :framework_controls
    #   A list of the controls that make up the framework. Each control in the
    #   list has a name, input parameters, and scope.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `UpdateFrameworkInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateFrameworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFrameworkOutput#framework_name #framework_name} => String
    #   * {Types::UpdateFrameworkOutput#framework_arn #framework_arn} => String
    #   * {Types::UpdateFrameworkOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_framework({
    #     framework_name: "FrameworkName", # required
    #     framework_description: "FrameworkDescription",
    #     framework_controls: [
    #       {
    #         control_name: "ControlName", # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: "ParameterName",
    #             parameter_value: "ParameterValue",
    #           },
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: ["string"],
    #           compliance_resource_types: ["ARN"],
    #           tags: {
    #             "string" => "string",
    #           },
    #         },
    #       },
    #     ],
    #     idempotency_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.framework_name #=> String
    #   resp.framework_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateFramework AWS API Documentation
    #
    # @overload update_framework(params = {})
    # @param [Hash] params ({})
    def update_framework(params = {}, options = {})
      req = build_request(:update_framework, params)
      req.send_request(options)
    end

    # Updates whether the Amazon Web Services account is opted in to
    # cross-account backup. Returns an error if the account is not an
    # Organizations management account. Use the `DescribeGlobalSettings` API
    # to determine the current settings.
    #
    # @option params [Hash<String,String>] :global_settings
    #   A value for `isCrossAccountBackupEnabled` and a Region. Example:
    #   `update-global-settings --global-settings
    #   isCrossAccountBackupEnabled=false --region us-west-2`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings({
    #     global_settings: {
    #       "GlobalSettingsName" => "GlobalSettingsValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateGlobalSettings AWS API Documentation
    #
    # @overload update_global_settings(params = {})
    # @param [Hash] params ({})
    def update_global_settings(params = {}, options = {})
      req = build_request(:update_global_settings, params)
      req.send_request(options)
    end

    # Sets the transition lifecycle of a recovery point.
    #
    # The lifecycle defines when a protected resource is transitioned to
    # cold storage and when it expires. Backup transitions and expires
    # backups automatically according to the lifecycle that you define.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, the “retention” setting must be
    # 90 days greater than the “transition to cold after days” setting. The
    # “transition to cold after days” setting cannot be changed after a
    # backup has been transitioned to cold.
    #
    # Resource types that are able to be transitioned to cold storage are
    # listed in the "Lifecycle to cold storage" section of the [ Feature
    # availability by resource][1] table. Backup ignores this expression for
    # other resource types.
    #
    # This operation does not support continuous backups.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the Amazon Web Services Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting. The
    #   “transition to cold after days” setting cannot be changed after a
    #   backup has been transitioned to cold.
    #
    # @return [Types::UpdateRecoveryPointLifecycleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecoveryPointLifecycleOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::UpdateRecoveryPointLifecycleOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::UpdateRecoveryPointLifecycleOutput#lifecycle #lifecycle} => Types::Lifecycle
    #   * {Types::UpdateRecoveryPointLifecycleOutput#calculated_lifecycle #calculated_lifecycle} => Types::CalculatedLifecycle
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recovery_point_lifecycle({
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_vault_arn #=> String
    #   resp.recovery_point_arn #=> String
    #   resp.lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.lifecycle.delete_after_days #=> Integer
    #   resp.calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.calculated_lifecycle.delete_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRecoveryPointLifecycle AWS API Documentation
    #
    # @overload update_recovery_point_lifecycle(params = {})
    # @param [Hash] params ({})
    def update_recovery_point_lifecycle(params = {}, options = {})
      req = build_request(:update_recovery_point_lifecycle, params)
      req.send_request(options)
    end

    # Updates the current service opt-in settings for the Region. If
    # service-opt-in is enabled for a service, Backup tries to protect that
    # service's resources in this Region, when the resource is included in
    # an on-demand backup or scheduled backup plan. Otherwise, Backup does
    # not try to protect that service's resources in this Region. Use the
    # `DescribeRegionSettings` API to determine the resource types that are
    # supported.
    #
    # @option params [Hash<String,Boolean>] :resource_type_opt_in_preference
    #   Updates the list of services along with the opt-in preferences for the
    #   Region.
    #
    # @option params [Hash<String,Boolean>] :resource_type_management_preference
    #   Enables or disables full Backup management of backups for a resource
    #   type. To enable full Backup management for DynamoDB along with [
    #   Backup's advanced DynamoDB backup features][1], follow the procedure
    #   to [ enable advanced DynamoDB backup programmatically][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_region_settings({
    #     resource_type_opt_in_preference: {
    #       "ResourceType" => false,
    #     },
    #     resource_type_management_preference: {
    #       "ResourceType" => false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRegionSettings AWS API Documentation
    #
    # @overload update_region_settings(params = {})
    # @param [Hash] params ({})
    def update_region_settings(params = {}, options = {})
      req = build_request(:update_region_settings, params)
      req.send_request(options)
    end

    # Updates an existing report plan identified by its `ReportPlanName`
    # with the input document in JSON format.
    #
    # @option params [required, String] :report_plan_name
    #   The unique name of the report plan. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #
    # @option params [String] :report_plan_description
    #   An optional description of the report plan with a maximum 1,024
    #   characters.
    #
    # @option params [Types::ReportDeliveryChannel] :report_delivery_channel
    #   A structure that contains information about where to deliver your
    #   reports, specifically your Amazon S3 bucket name, S3 key prefix, and
    #   the formats of your reports.
    #
    # @option params [Types::ReportSetting] :report_setting
    #   Identifies the report template for the report. Reports are built using
    #   a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #
    #   If the report template is `RESOURCE_COMPLIANCE_REPORT` or
    #   `CONTROL_COMPLIANCE_REPORT`, this API resource also describes the
    #   report coverage by Amazon Web Services Regions and frameworks.
    #
    # @option params [String] :idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `UpdateReportPlanInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateReportPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateReportPlanOutput#report_plan_name #report_plan_name} => String
    #   * {Types::UpdateReportPlanOutput#report_plan_arn #report_plan_arn} => String
    #   * {Types::UpdateReportPlanOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_plan({
    #     report_plan_name: "ReportPlanName", # required
    #     report_plan_description: "ReportPlanDescription",
    #     report_delivery_channel: {
    #       s3_bucket_name: "string", # required
    #       s3_key_prefix: "string",
    #       formats: ["string"],
    #     },
    #     report_setting: {
    #       report_template: "string", # required
    #       framework_arns: ["string"],
    #       number_of_frameworks: 1,
    #       accounts: ["string"],
    #       organization_units: ["string"],
    #       regions: ["string"],
    #     },
    #     idempotency_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_plan_name #=> String
    #   resp.report_plan_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateReportPlan AWS API Documentation
    #
    # @overload update_report_plan(params = {})
    # @param [Hash] params ({})
    def update_report_plan(params = {}, options = {})
      req = build_request(:update_report_plan, params)
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
      context[:gem_name] = 'aws-sdk-backup'
      context[:gem_version] = '1.56.0'
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
