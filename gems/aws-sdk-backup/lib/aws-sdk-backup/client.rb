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

    # Creates a backup plan using a backup plan name and backup rules. A
    # backup plan is a document that contains information that AWS Backup
    # uses to schedule tasks that create recovery points for resources.
    #
    # If you call `CreateBackupPlan` with a plan that already exists, an
    # `AlreadyExistsException` is returned.
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
    # a backup plan. Resources can be included by specifying patterns for a
    # `ListOfTags` and selected `Resources`.
    #
    # For example, consider the following patterns:
    #
    # * `Resources: "arn:aws:ec2:region:account-id:volume/volume-id"`
    #
    # * `ConditionKey:"department"`
    #
    #   `ConditionValue:"finance"`
    #
    #   `ConditionType:"StringEquals"`
    #
    # * `ConditionKey:"importance"`
    #
    #   `ConditionValue:"critical"`
    #
    #   `ConditionType:"StringEquals"`
    #
    # Using these patterns would back up all Amazon Elastic Block Store
    # (Amazon EBS) volumes that are tagged as `"department=finance"`,
    # `"importance=critical"`, in addition to an EBS volume with the
    # specified volume ID.
    #
    # Resources and conditions are additive in that all resources that match
    # the pattern are selected. This shouldn't be confused with a logical
    # AND, where all conditions must match. The matching patterns are
    # logically put together using the OR operator. In other words, all
    # patterns that match are selected for backup.
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
    #   to be retried without the risk of running the operation twice.
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
    # <note markdown="1"> Sensitive data, such as passport numbers, should not be included the
    # name of a backup vault.
    #
    #  </note>
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   to be retried without the risk of running the operation twice.
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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

    # Deletes the recovery point specified by a recovery point ID.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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

    # Returns backup job details for the specified `BackupJobId`.
    #
    # @option params [required, String] :backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
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
    #   resp.state #=> String, one of "CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
    #
    # @return [Types::DescribeBackupVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupVaultOutput#backup_vault_name #backup_vault_name} => String
    #   * {Types::DescribeBackupVaultOutput#backup_vault_arn #backup_vault_arn} => String
    #   * {Types::DescribeBackupVaultOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DescribeBackupVaultOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeBackupVaultOutput#creator_request_id #creator_request_id} => String
    #   * {Types::DescribeBackupVaultOutput#number_of_recovery_points #number_of_recovery_points} => Integer
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
    #   resp.copy_job.state #=> String, one of "CREATED", "RUNNING", "COMPLETED", "FAILED"
    #   resp.copy_job.status_message #=> String
    #   resp.copy_job.backup_size_in_bytes #=> Integer
    #   resp.copy_job.iam_role_arn #=> String
    #   resp.copy_job.created_by.backup_plan_id #=> String
    #   resp.copy_job.created_by.backup_plan_arn #=> String
    #   resp.copy_job.created_by.backup_plan_version #=> String
    #   resp.copy_job.created_by.backup_rule_id #=> String
    #   resp.copy_job.resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeCopyJob AWS API Documentation
    #
    # @overload describe_copy_job(params = {})
    # @param [Hash] params ({})
    def describe_copy_job(params = {}, options = {})
      req = build_request(:describe_copy_job, params)
      req.send_request(options)
    end

    # Returns information about a saved resource, including the last time it
    # was backed up, its Amazon Resource Name (ARN), and the AWS service
    # type of the saved resource.
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   * {Types::DescribeRecoveryPointOutput#resource_arn #resource_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#resource_type #resource_type} => String
    #   * {Types::DescribeRecoveryPointOutput#created_by #created_by} => Types::RecoveryPointCreator
    #   * {Types::DescribeRecoveryPointOutput#iam_role_arn #iam_role_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#status #status} => String
    #   * {Types::DescribeRecoveryPointOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeRecoveryPointOutput#completion_date #completion_date} => Time
    #   * {Types::DescribeRecoveryPointOutput#backup_size_in_bytes #backup_size_in_bytes} => Integer
    #   * {Types::DescribeRecoveryPointOutput#calculated_lifecycle #calculated_lifecycle} => Types::CalculatedLifecycle
    #   * {Types::DescribeRecoveryPointOutput#lifecycle #lifecycle} => Types::Lifecycle
    #   * {Types::DescribeRecoveryPointOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DescribeRecoveryPointOutput#is_encrypted #is_encrypted} => Boolean
    #   * {Types::DescribeRecoveryPointOutput#storage_class #storage_class} => String
    #   * {Types::DescribeRecoveryPointOutput#last_restore_time #last_restore_time} => Time
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
    #   resp.resource_arn #=> String
    #   resp.resource_type #=> String
    #   resp.created_by.backup_plan_id #=> String
    #   resp.created_by.backup_plan_arn #=> String
    #   resp.created_by.backup_plan_version #=> String
    #   resp.created_by.backup_rule_id #=> String
    #   resp.iam_role_arn #=> String
    #   resp.status #=> String, one of "COMPLETED", "PARTIAL", "DELETING", "EXPIRED"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPoint AWS API Documentation
    #
    # @overload describe_recovery_point(params = {})
    # @param [Hash] params ({})
    def describe_recovery_point(params = {}, options = {})
      req = build_request(:describe_recovery_point, params)
      req.send_request(options)
    end

    # Returns the current service opt-in settings for the Region. If the
    # service has a value set to `true`, AWS Backup tries to protect that
    # service's resources in this Region, when included in an on-demand
    # backup or scheduled backup plan. If the value is set to `false` for a
    # service, AWS Backup does not try to protect that service's resources
    # in this Region.
    #
    # @return [Types::DescribeRegionSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegionSettingsOutput#resource_type_opt_in_preference #resource_type_opt_in_preference} => Hash&lt;String,Boolean&gt;
    #
    # @example Response structure
    #
    #   resp.resource_type_opt_in_preference #=> Hash
    #   resp.resource_type_opt_in_preference["ResourceType"] #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettings AWS API Documentation
    #
    # @overload describe_region_settings(params = {})
    # @param [Hash] params ({})
    def describe_region_settings(params = {}, options = {})
      req = build_request(:describe_region_settings, params)
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

    # Returns `BackupPlan` details for the specified `BackupPlanId`. Returns
    # the body of a backup plan in JSON format, in addition to plan
    # metadata.
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   resp.backup_vault_events[0] #=> String, one of "BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultNotifications AWS API Documentation
    #
    # @overload get_backup_vault_notifications(params = {})
    # @param [Hash] params ({})
    def get_backup_vault_notifications(params = {}, options = {})
      req = build_request(:get_backup_vault_notifications, params)
      req.send_request(options)
    end

    # Returns a set of metadata key-value pairs that were used to create the
    # backup.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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

    # Returns the AWS resource types supported by AWS Backup.
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

    # Returns a list of existing backup jobs for an authenticated account.
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
    #   account used to create them and the AWS Region where they are created.
    #   They consist of lowercase letters, numbers, and hyphens.
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
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
    #
    # @option params [String] :by_account_id
    #   The account ID to list the jobs from. Returns only backup jobs
    #   associated with the specified account ID.
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
    #     by_state: "CREATED", # accepts CREATED, PENDING, RUNNING, ABORTING, ABORTED, COMPLETED, FAILED, EXPIRED
    #     by_backup_vault_name: "BackupVaultName",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_account_id: "AccountId",
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
    #   resp.backup_jobs[0].state #=> String, one of "CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"
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

    # Returns a list of existing backup plans for an authenticated account.
    # The list is populated only if the advanced option is set for the
    # backup plan. The list contains information such as Amazon Resource
    # Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan
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
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
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
    #     by_state: "CREATED", # accepts CREATED, RUNNING, COMPLETED, FAILED
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_destination_vault_arn: "string",
    #     by_account_id: "AccountId",
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
    #   resp.copy_jobs[0].state #=> String, one of "CREATED", "RUNNING", "COMPLETED", "FAILED"
    #   resp.copy_jobs[0].status_message #=> String
    #   resp.copy_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.copy_jobs[0].iam_role_arn #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_id #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_arn #=> String
    #   resp.copy_jobs[0].created_by.backup_plan_version #=> String
    #   resp.copy_jobs[0].created_by.backup_rule_id #=> String
    #   resp.copy_jobs[0].resource_type #=> String
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

    # Returns an array of resources successfully backed up by AWS Backup,
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recovery_points #=> Array
    #   resp.recovery_points[0].recovery_point_arn #=> String
    #   resp.recovery_points[0].backup_vault_name #=> String
    #   resp.recovery_points[0].backup_vault_arn #=> String
    #   resp.recovery_points[0].resource_arn #=> String
    #   resp.recovery_points[0].resource_type #=> String
    #   resp.recovery_points[0].created_by.backup_plan_id #=> String
    #   resp.recovery_points[0].created_by.backup_plan_arn #=> String
    #   resp.recovery_points[0].created_by.backup_plan_version #=> String
    #   resp.recovery_points[0].created_by.backup_rule_id #=> String
    #   resp.recovery_points[0].iam_role_arn #=> String
    #   resp.recovery_points[0].status #=> String, one of "COMPLETED", "PARTIAL", "DELETING", "EXPIRED"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByBackupVault AWS API Documentation
    #
    # @overload list_recovery_points_by_backup_vault(params = {})
    # @param [Hash] params ({})
    def list_recovery_points_by_backup_vault(params = {}, options = {})
      req = build_request(:list_recovery_points_by_backup_vault, params)
      req.send_request(options)
    end

    # Returns detailed information about recovery points of the type
    # specified by a resource Amazon Resource Name (ARN).
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
    #   resp.recovery_points[0].encryption_key_arn #=> String
    #   resp.recovery_points[0].backup_size_bytes #=> Integer
    #   resp.recovery_points[0].backup_vault_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByResource AWS API Documentation
    #
    # @overload list_recovery_points_by_resource(params = {})
    # @param [Hash] params ({})
    def list_recovery_points_by_resource(params = {}, options = {})
      req = build_request(:list_recovery_points_by_resource, params)
      req.send_request(options)
    end

    # Returns a list of jobs that AWS Backup initiated to restore a saved
    # resource, including metadata about the recovery process.
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
    # <note markdown="1"> `ListTags` are currently only supported with Amazon EFS backups.
    #
    #  </note>
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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

    # Turns on notifications on a backup vault for the specified topic and
    # events.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_notifications({
    #     backup_vault_name: "BackupVaultName", # required
    #     sns_topic_arn: "ARN", # required
    #     backup_vault_events: ["BACKUP_JOB_STARTED"], # required, accepts BACKUP_JOB_STARTED, BACKUP_JOB_COMPLETED, BACKUP_JOB_SUCCESSFUL, BACKUP_JOB_FAILED, BACKUP_JOB_EXPIRED, RESTORE_JOB_STARTED, RESTORE_JOB_COMPLETED, RESTORE_JOB_SUCCESSFUL, RESTORE_JOB_FAILED, COPY_JOB_STARTED, COPY_JOB_SUCCESSFUL, COPY_JOB_FAILED, RECOVERY_POINT_MODIFIED, BACKUP_PLAN_CREATED, BACKUP_PLAN_MODIFIED
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
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
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
    #   A customer chosen string that can be used to distinguish between calls
    #   to `StartBackupJob`.
    #
    # @option params [Integer] :start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #
    # @option params [Integer] :complete_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by AWS Backup. This value
    #   is optional.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup will transition and
    #   expire backups automatically according to the lifecycle that you
    #   define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be changed
    #   after a backup has been transitioned to cold.
    #
    # @option params [Hash<String,String>] :recovery_point_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair.
    #
    # @option params [Hash<String,String>] :backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows VSS backup jobs.
    #
    #   Valid values: Set to `"WindowsVSS”:“enabled"` to enable WindowsVSS
    #   backup option and create a VSS Windows backup. Set to
    #   “WindowsVSS”:”disabled” to create a regular backup. The WindowsVSS
    #   option is not enabled by default.
    #
    # @return [Types::StartBackupJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBackupJobOutput#backup_job_id #backup_job_id} => String
    #   * {Types::StartBackupJobOutput#recovery_point_arn #recovery_point_arn} => String
    #   * {Types::StartBackupJobOutput#creation_date #creation_date} => Time
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
    # @option params [required, String] :recovery_point_arn
    #   An ARN that uniquely identifies a recovery point to use for the copy
    #   job; for example,
    #   arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #
    # @option params [required, String] :source_backup_vault_name
    #   The name of a logical source container where backups are stored.
    #   Backup vaults are identified by names that are unique to the account
    #   used to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
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
    #   A customer chosen string that can be used to distinguish between calls
    #   to `StartCopyJob`.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   Contains an array of `Transition` objects specifying how long in days
    #   before a recovery point transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “expire after
    #   days” setting must be 90 days greater than the “transition to cold
    #   after days” setting. The “transition to cold after days” setting
    #   cannot be changed after a backup has been transitioned to cold.
    #
    # @return [Types::StartCopyJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCopyJobOutput#copy_job_id #copy_job_id} => String
    #   * {Types::StartCopyJobOutput#creation_date #creation_date} => Time
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartCopyJob AWS API Documentation
    #
    # @overload start_copy_job(params = {})
    # @param [Hash] params ({})
    def start_copy_job(params = {}, options = {})
      req = build_request(:start_copy_job, params)
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
    #   * `file-system-id`\: The ID of the Amazon EFS file system that is
    #     backed up by AWS Backup. Returned in
    #     `GetRecoveryPointRestoreMetadata`.
    #
    #   * `Encrypted`\: A Boolean value that, if true, specifies that the file
    #     system is encrypted. If `KmsKeyId` is specified, `Encrypted` must be
    #     set to `true`.
    #
    #   * `KmsKeyId`\: Specifies the AWS KMS key that is used to encrypt the
    #     restored file system. You can specify a key from another AWS account
    #     provided that key it is properly shared with your account via AWS
    #     KMS.
    #
    #   * `PerformanceMode`\: Specifies the throughput mode of the file
    #     system.
    #
    #   * `CreationToken`\: A user-supplied value that ensures the uniqueness
    #     (idempotency) of the request.
    #
    #   * `newFileSystem`\: A Boolean value that, if true, specifies that the
    #     recovery point is restored to a new Amazon EFS file system.
    #
    #   * `ItemsToRestore `\: A serialized list of up to five strings where
    #     each string is a file path. Use `ItemsToRestore` to restore specific
    #     files or directories rather than the entire file system. This
    #     parameter is optional.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses to
    #   create the target recovery point; for example,
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #
    # @option params [String] :idempotency_token
    #   A customer chosen string that can be used to distinguish between calls
    #   to `StartRestoreJob`.
    #
    # @option params [String] :resource_type
    #   Starts a job to restore a recovery point for one of the following
    #   resources:
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
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
    #     iam_role_arn: "IAMRoleArn", # required
    #     idempotency_token: "string",
    #     resource_type: "ResourceType",
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
    # @option params [required, String] :backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
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
    #   assign your own metadata to the resources you create.
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

    # Sets the transition lifecycle of a recovery point.
    #
    # The lifecycle defines when a protected resource is transitioned to
    # cold storage and when it expires. AWS Backup transitions and expires
    # backups automatically according to the lifecycle that you define.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, the “expire after days” setting
    # must be 90 days greater than the “transition to cold after days”
    # setting. The “transition to cold after days” setting cannot be changed
    # after a backup has been transitioned to cold.
    #
    # @option params [required, String] :backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used to
    #   create them and the AWS Region where they are created. They consist of
    #   lowercase letters, numbers, and hyphens.
    #
    # @option params [required, String] :recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #
    # @option params [Types::Lifecycle] :lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be changed
    #   after a backup has been transitioned to cold.
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

    # Updates the current service opt-in settings for the Region. If the
    # service has a value set to `true`, AWS Backup tries to protect that
    # service's resources in this Region, when included in an on-demand
    # backup or scheduled backup plan. If the value is set to `false` for a
    # service, AWS Backup does not try to protect that service's resources
    # in this Region.
    #
    # @option params [Hash<String,Boolean>] :resource_type_opt_in_preference
    #   Updates the list of services along with the opt-in preferences for the
    #   Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_region_settings({
    #     resource_type_opt_in_preference: {
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
      context[:gem_version] = '1.24.0'
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
