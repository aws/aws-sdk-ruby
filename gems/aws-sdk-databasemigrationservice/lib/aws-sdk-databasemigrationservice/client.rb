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

Aws::Plugins::GlobalConfiguration.add_identifier(:databasemigrationservice)

module Aws::DatabaseMigrationService
  # An API client for DatabaseMigrationService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DatabaseMigrationService::Client.new(
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

    @identifier = :databasemigrationservice

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

    # Adds metadata tags to an AWS DMS resource, including replication
    # instance, endpoint, security group, and migration task. These tags can
    # also be used with cost allocation reporting to track cost associated
    # with DMS resources, or used in a Condition statement in an IAM policy
    # for DMS. For more information, see [ `Tag` ][1] data type description.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html
    #
    # @option params [required, String] :resource_arn
    #   Identifies the AWS DMS resource to which tags should be added. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    #   For AWS DMS, you can tag a replication instance, an endpoint, or a
    #   replication task.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Add tags to resource
    #
    #   # Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task.
    #   # These tags can also be used with cost allocation reporting to track cost associated with AWS DMS resources, or used in a
    #   # Condition statement in an IAM policy for AWS DMS.
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", # Required. Use the ARN of the resource you want to tag.
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "1633456", 
    #       }, 
    #     ], # Required. Use the Key/Value pair format.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Applies a pending maintenance action to a resource (for example, to a
    # replication instance).
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the AWS DMS resource that the
    #   pending maintenance action applies to.
    #
    # @option params [required, String] :apply_action
    #   The pending maintenance action to apply to this resource.
    #
    # @option params [required, String] :opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an opt-in
    #   request. You can't undo an opt-in request of type `immediate`.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #
    # @return [Types::ApplyPendingMaintenanceActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplyPendingMaintenanceActionResponse#resource_pending_maintenance_actions #resource_pending_maintenance_actions} => Types::ResourcePendingMaintenanceActions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_pending_maintenance_action({
    #     replication_instance_arn: "String", # required
    #     apply_action: "String", # required
    #     opt_in_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_pending_maintenance_actions.resource_identifier #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details #=> Array
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].action #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ApplyPendingMaintenanceAction AWS API Documentation
    #
    # @overload apply_pending_maintenance_action(params = {})
    # @param [Hash] params ({})
    def apply_pending_maintenance_action(params = {}, options = {})
      req = build_request(:apply_pending_maintenance_action, params)
      req.send_request(options)
    end

    # Cancels a single premigration assessment run.
    #
    # This operation prevents any individual assessments from running if
    # they haven't started running. It also attempts to cancel any
    # individual assessments that are currently running.
    #
    # @option params [required, String] :replication_task_assessment_run_arn
    #   Amazon Resource Name (ARN) of the premigration assessment run to be
    #   canceled.
    #
    # @return [Types::CancelReplicationTaskAssessmentRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelReplicationTaskAssessmentRunResponse#replication_task_assessment_run #replication_task_assessment_run} => Types::ReplicationTaskAssessmentRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_replication_task_assessment_run({
    #     replication_task_assessment_run_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.replication_task_assessment_run.status #=> String
    #   resp.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.replication_task_assessment_run.last_failure_message #=> String
    #   resp.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.replication_task_assessment_run.result_location_folder #=> String
    #   resp.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.replication_task_assessment_run.assessment_run_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelReplicationTaskAssessmentRun AWS API Documentation
    #
    # @overload cancel_replication_task_assessment_run(params = {})
    # @param [Hash] params ({})
    def cancel_replication_task_assessment_run(params = {}, options = {})
      req = build_request(:cancel_replication_task_assessment_run, params)
      req.send_request(options)
    end

    # Creates an endpoint using the provided settings.
    #
    # @option params [required, String] :endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a letter
    #   and must contain only ASCII letters, digits, and hyphens. They can't
    #   end with a hyphen, or contain two consecutive hyphens.
    #
    # @option params [required, String] :endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #
    # @option params [required, String] :engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   `EndpointType` value, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`, `"s3"`,
    #   `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"docdb"`, `"sqlserver"`,
    #   and `"neptune"`.
    #
    # @option params [String] :username
    #   The user name to be used to log in to the endpoint database.
    #
    # @option params [String] :password
    #   The password to be used to log in to the endpoint database.
    #
    # @option params [String] :server_name
    #   The name of the server where the endpoint database resides.
    #
    # @option params [Integer] :port
    #   The port used by the endpoint database.
    #
    # @option params [String] :database_name
    #   The name of the endpoint database.
    #
    # @option params [String] :extra_connection_attributes
    #   Additional attributes associated with the connection. Each attribute
    #   is specified as a name-value pair associated by an equal sign (=).
    #   Multiple attributes are separated by a semicolon (;) with no
    #   additional white space. For information on the attributes available
    #   for connecting your source or target endpoint, see [Working with AWS
    #   DMS Endpoints][1] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html
    #
    # @option params [String] :kms_key_id
    #   An AWS KMS key identifier that is used to encrypt the connection
    #   parameters for the endpoint.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   Region.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the endpoint.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #
    # @option params [String] :ssl_mode
    #   The Secure Sockets Layer (SSL) mode to use for the SSL connection. The
    #   default is `none`
    #
    # @option params [String] :service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role that you
    #   want to use to create the endpoint.
    #
    # @option params [String] :external_table_definition
    #   The external table definition.
    #
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   information about other available settings, see [Using Object Mapping
    #   to Migrate Data to DynamoDB][1] in the *AWS Database Migration Service
    #   User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #
    # @option params [Types::S3Settings] :s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring
    #
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   The settings in JSON format for the DMS transfer type of source
    #   endpoint.
    #
    #   Possible settings include the following:
    #
    #   * `ServiceAccessRoleArn` - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * `BucketName` - The name of the S3 bucket to use.
    #
    #   * `CompressionType` - An optional parameter to use GZIP to compress
    #     the target files. To use GZIP, set this value to `NONE` (the
    #     default). To keep the files uncompressed, don't use this value.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string,BucketName=string,CompressionType=string`
    #
    #   JSON syntax for these settings is as follows: `\{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"|"gzip" \} `
    #
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see [Using MongoDB as a
    #   Target for AWS Database Migration Service][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration
    #
    # @option params [Types::KinesisSettings] :kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using Amazon Kinesis Data Streams as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html
    #
    # @option params [Types::KafkaSettings] :kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For more
    #   information about the available settings, see [Using Apache Kafka as a
    #   Target for AWS Database Migration Service][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html
    #
    # @option params [Types::ElasticsearchSettings] :elasticsearch_settings
    #   Settings in JSON format for the target Elasticsearch endpoint. For
    #   more information about the available settings, see [Extra Connection
    #   Attributes When Using Elasticsearch as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #
    # @option params [Types::NeptuneSettings] :neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   Endpoint Settings for Amazon Neptune as a Target][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings
    #
    # @option params [Types::RedshiftSettings] :redshift_settings
    #   Provides information that defines an Amazon Redshift endpoint.
    #
    # @option params [Types::PostgreSQLSettings] :postgre_sql_settings
    #   Settings in JSON format for the source and target PostgreSQL endpoint.
    #   For information about other available settings, see [Extra connection
    #   attributes when using PostgreSQL as a source for AWS DMS][1] and [
    #   Extra connection attributes when using PostgreSQL as a target for AWS
    #   DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html
    #
    # @option params [Types::MySQLSettings] :my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using MySQL as a source for AWS DMS][1] and [Extra
    #   connection attributes when using a MySQL-compatible database as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html
    #
    # @option params [Types::OracleSettings] :oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Oracle as a source for AWS DMS][1] and [ Extra
    #   connection attributes when using Oracle as a target for AWS DMS][2] in
    #   the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html
    #
    # @option params [Types::SybaseSettings] :sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra connection
    #   attributes when using SAP ASE as a source for AWS DMS][1] and [Extra
    #   connection attributes when using SAP ASE as a target for AWS DMS][2]
    #   in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html
    #
    # @option params [Types::MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL Server
    #   endpoint. For information about other available settings, see [Extra
    #   connection attributes when using SQL Server as a source for AWS
    #   DMS][1] and [ Extra connection attributes when using SQL Server as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html
    #
    # @option params [Types::IBMDb2Settings] :ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for AWS DMS][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html
    #
    # @option params [String] :resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two consecutive
    #   hyphens, and can only begin with a letter, such as `Example-App-ARN1`.
    #   For example, this value might result in the `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
    #
    # @return [Types::CreateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Create endpoint
    #
    #   # Creates an endpoint using the provided settings.
    #
    #   resp = client.create_endpoint({
    #     certificate_arn: "", 
    #     database_name: "testdb", 
    #     endpoint_identifier: "test-endpoint-1", 
    #     endpoint_type: "source", 
    #     engine_name: "mysql", 
    #     extra_connection_attributes: "", 
    #     kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #     password: "pasword", 
    #     port: 3306, 
    #     server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #     ssl_mode: "require", 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "143327655", 
    #       }, 
    #     ], 
    #     username: "username", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #       endpoint_identifier: "test-endpoint-1", 
    #       endpoint_type: "source", 
    #       engine_name: "mysql", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       port: 3306, 
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #       status: "active", 
    #       username: "username", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     endpoint_identifier: "String", # required
    #     endpoint_type: "source", # required, accepts source, target
    #     engine_name: "String", # required
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     certificate_arn: "String",
    #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none", # accepts none, gzip
    #       encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #       server_side_encryption_kms_key_id: "String",
    #       data_format: "csv", # accepts csv, parquet
    #       encoding_type: "plain", # accepts plain, plain-dictionary, rle-dictionary
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: "parquet-1-0", # accepts parquet-1-0, parquet-2-0
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: "String",
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: "YYYYMMDD", # accepts YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, DDMMYYYY
    #       date_partition_delimiter: "SLASH", # accepts SLASH, UNDERSCORE, DASH, NONE
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String",
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no", # accepts no, password
    #       auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #       nesting_level: "none", # accepts none, one
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #     },
    #     kinesis_settings: {
    #       stream_arn: "String",
    #       message_format: "json", # accepts json, json-unformatted
    #       service_access_role_arn: "String",
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #     },
    #     kafka_settings: {
    #       broker: "String",
    #       topic: "String",
    #       message_format: "json", # accepts json, json-unformatted
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: "String", # required
    #       endpoint_uri: "String", # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1,
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: "String",
    #       s3_bucket_name: "String", # required
    #       s3_bucket_folder: "String", # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false,
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: "String",
    #       date_format: "String",
    #       empty_as_null: false,
    #       encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: "SecretString",
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: "String",
    #       replace_chars: "String",
    #       server_name: "String",
    #       service_access_role_arn: "String",
    #       server_side_encryption_kms_key_id: "String",
    #       time_format: "String",
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: "String",
    #       write_buffer_size: 1,
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: "String",
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: "String",
    #       ddl_artifacts_schema: "String",
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       slot_name: "String",
    #     },
    #     my_sql_settings: {
    #       after_connect_script: "String",
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database", # accepts specific-database, multiple-databases
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: "String",
    #       use_path_prefix: "String",
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: "SecretString",
    #       asm_server: "String",
    #       asm_user: "String",
    #       char_length_semantics: "default", # accepts default, char, byte
    #       database_name: "String",
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: "SecretString",
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: "SecretString",
    #       security_db_encryption_name: "String",
    #       server_name: "String",
    #       username: "String",
    #     },
    #     sybase_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: "String",
    #       control_tables_file_group: "String",
    #       password: "SecretString",
    #       read_backup_only: false,
    #       safeguard_policy: "rely-on-sql-server-replication-agent", # accepts rely-on-sql-server-replication-agent, exclusive-automatic-truncation, shared-automatic-truncation
    #       server_name: "String",
    #       username: "String",
    #       use_bcp_full_load: false,
    #     },
    #     ibm_db_2_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       set_data_capture_changes: false,
    #       current_lsn: "String",
    #       max_k_bytes_per_read: 1,
    #       username: "String",
    #     },
    #     resource_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.s3_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.s3_settings.data_format #=> String, one of "csv", "parquet"
    #   resp.endpoint.s3_settings.encoding_type #=> String, one of "plain", "plain-dictionary", "rle-dictionary"
    #   resp.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.endpoint.s3_settings.parquet_version #=> String, one of "parquet-1-0", "parquet-2-0"
    #   resp.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_sequence #=> String, one of "YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"
    #   resp.endpoint.s3_settings.date_partition_delimiter #=> String, one of "SLASH", "UNDERSCORE", "DASH", "NONE"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.endpoint.kinesis_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.kafka_settings.broker #=> String
    #   resp.endpoint.kafka_settings.topic #=> String
    #   resp.endpoint.kafka_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.endpoint.redshift_settings.bucket_name #=> String
    #   resp.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.endpoint.redshift_settings.database_name #=> String
    #   resp.endpoint.redshift_settings.date_format #=> String
    #   resp.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.endpoint.redshift_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.endpoint.redshift_settings.password #=> String
    #   resp.endpoint.redshift_settings.port #=> Integer
    #   resp.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.endpoint.redshift_settings.replace_chars #=> String
    #   resp.endpoint.redshift_settings.server_name #=> String
    #   resp.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.redshift_settings.time_format #=> String
    #   resp.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.endpoint.redshift_settings.username #=> String
    #   resp.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.postgre_sql_settings.password #=> String
    #   resp.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.endpoint.postgre_sql_settings.username #=> String
    #   resp.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.endpoint.my_sql_settings.database_name #=> String
    #   resp.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.endpoint.my_sql_settings.target_db_type #=> String, one of "specific-database", "multiple-databases"
    #   resp.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.endpoint.my_sql_settings.password #=> String
    #   resp.endpoint.my_sql_settings.port #=> Integer
    #   resp.endpoint.my_sql_settings.server_name #=> String
    #   resp.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.endpoint.my_sql_settings.username #=> String
    #   resp.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.endpoint.oracle_settings.asm_password #=> String
    #   resp.endpoint.oracle_settings.asm_server #=> String
    #   resp.endpoint.oracle_settings.asm_user #=> String
    #   resp.endpoint.oracle_settings.char_length_semantics #=> String, one of "default", "char", "byte"
    #   resp.endpoint.oracle_settings.database_name #=> String
    #   resp.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.endpoint.oracle_settings.password #=> String
    #   resp.endpoint.oracle_settings.port #=> Integer
    #   resp.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.endpoint.oracle_settings.server_name #=> String
    #   resp.endpoint.oracle_settings.username #=> String
    #   resp.endpoint.sybase_settings.database_name #=> String
    #   resp.endpoint.sybase_settings.password #=> String
    #   resp.endpoint.sybase_settings.port #=> Integer
    #   resp.endpoint.sybase_settings.server_name #=> String
    #   resp.endpoint.sybase_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of "rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"
    #   resp.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.database_name #=> String
    #   resp.endpoint.ibm_db_2_settings.password #=> String
    #   resp.endpoint.ibm_db_2_settings.port #=> Integer
    #   resp.endpoint.ibm_db_2_settings.server_name #=> String
    #   resp.endpoint.ibm_db_2_settings.set_data_capture_changes #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.current_lsn #=> String
    #   resp.endpoint.ibm_db_2_settings.max_k_bytes_per_read #=> Integer
    #   resp.endpoint.ibm_db_2_settings.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Creates an AWS DMS event notification subscription.
    #
    # You can specify the type of source (`SourceType`) you want to be
    # notified of, provide a list of AWS DMS source IDs (`SourceIds`) that
    # triggers the events, and provide a list of event categories
    # (`EventCategories`) for events you want to be notified of. If you
    # specify both the `SourceType` and `SourceIds`, such as `SourceType =
    # replication-instance` and `SourceIdentifier = my-replinstance`, you
    # will be notified of all the replication instance events for the
    # specified source. If you specify a `SourceType` but don't specify a
    # `SourceIdentifier`, you receive notice of the events for that source
    # type for all your AWS DMS sources. If you don't specify either
    # `SourceType` nor `SourceIdentifier`, you will be notified of events
    # generated from all AWS DMS sources belonging to your customer account.
    #
    # For more information about AWS DMS events, see [Working with Events
    # and Notifications][1] in the *AWS Database Migration Service User
    # Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [required, String] :subscription_name
    #   The name of the AWS DMS event notification subscription. This name
    #   must be less than 255 characters.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates the events. For example,
    #   if you want to be notified of events generated by a replication
    #   instance, you set this parameter to `replication-instance`. If this
    #   value isn't specified, all events are returned.
    #
    #   Valid values: `replication-instance` \| `replication-task`
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. For more information, see [Working with Events and
    #   Notifications][1] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [Array<String>] :source_ids
    #   A list of identifiers for which AWS DMS provides notification events.
    #
    #   If you don't specify a value, notifications are provided for all
    #   sources.
    #
    #   If you specify multiple values, they must be of the same type. For
    #   example, if you specify a database instance ID, then all of the other
    #   values must be database instance IDs.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to `true` to activate the subscription, or set to
    #   `false` to create the subscription but not activate it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the event subscription.
    #
    # @return [Types::CreateEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # Creates the replication instance using the specified parameters.
    #
    # AWS DMS requires that your account have certain roles with appropriate
    # permissions before you can create a replication instance. For
    # information on the required roles, see [Creating the IAM Roles to Use
    # With the AWS CLI and AWS DMS API][1]. For information on the required
    # permissions, see [IAM Permissions Needed to Use AWS DMS][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole
    # [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions
    #
    # @option params [required, String] :replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain 1-63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `myrepinstance`
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage (in gigabytes) to be initially allocated for the
    #   replication instance.
    #
    # @option params [required, String] :replication_instance_class
    #   The compute and memory capacity of the replication instance as defined
    #   for the specified replication instance class. For example to specify
    #   the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the available
    #   replication instance classes, see [ Selecting the right AWS DMS
    #   replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing the
    #   replication instance.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone where the replication instance will be created.
    #   The default value is a random, system-chosen Availability Zone in the
    #   endpoint's AWS Region, for example: `us-east-1d`
    #
    # @option params [String] :replication_subnet_group_identifier
    #   A subnet group to associate with the replication instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per AWS Region, occurring on a random day of the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Boolean] :multi_az
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #
    # @option params [String] :engine_version
    #   The engine version number of the replication instance.
    #
    #   If an engine version number is not specified when a replication
    #   instance is created, the default is the latest engine version
    #   available.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the replication instance during the maintenance
    #   window. This parameter defaults to `true`.
    #
    #   Default: `true`
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the replication instance.
    #
    # @option params [String] :kms_key_id
    #   An AWS KMS key identifier that is used to encrypt the data on the
    #   replication instance.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   Region.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the replication instance. A
    #   value of `true` represents an instance with a public IP address. A
    #   value of `false` represents an instance with a private IP address. The
    #   default value is `true`.
    #
    # @option params [String] :dns_name_servers
    #   A list of custom DNS name servers supported for the replication
    #   instance to access your on-premise source or target database. This
    #   list overrides the default name servers supported by the replication
    #   instance. You can specify a comma-separated list of internet addresses
    #   for up to four on-premise DNS name servers. For example:
    #   `"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"`
    #
    # @option params [String] :resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two consecutive
    #   hyphens, and can only begin with a letter, such as `Example-App-ARN1`.
    #   For example, this value might result in the `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
    #
    # @return [Types::CreateReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Create replication instance
    #
    #   # Creates the replication instance using the specified parameters.
    #
    #   resp = client.create_replication_instance({
    #     allocated_storage: 123, 
    #     auto_minor_version_upgrade: true, 
    #     availability_zone: "", 
    #     engine_version: "", 
    #     kms_key_id: "", 
    #     multi_az: true, 
    #     preferred_maintenance_window: "", 
    #     publicly_accessible: true, 
    #     replication_instance_class: "", 
    #     replication_instance_identifier: "", 
    #     replication_subnet_group_identifier: "", 
    #     tags: [
    #       {
    #         key: "string", 
    #         value: "string", 
    #       }, 
    #     ], 
    #     vpc_security_group_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "creating", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_instance({
    #     replication_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     replication_instance_class: "String", # required
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     replication_subnet_group_identifier: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     publicly_accessible: false,
    #     dns_name_servers: "String",
    #     resource_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #   resp.replication_instance.dns_name_servers #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationInstance AWS API Documentation
    #
    # @overload create_replication_instance(params = {})
    # @param [Hash] params ({})
    def create_replication_instance(params = {}, options = {})
      req = build_request(:create_replication_instance, params)
      req.send_request(options)
    end

    # Creates a replication subnet group given a list of the subnet IDs in a
    # VPC.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The name for the replication subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, spaces, underscores, or hyphens. Must not be "default".
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :replication_subnet_group_description
    #   The description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   One or more subnet IDs to be assigned to the subnet group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the subnet group.
    #
    # @return [Types::CreateReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationSubnetGroupResponse#replication_subnet_group #replication_subnet_group} => Types::ReplicationSubnetGroup
    #
    #
    # @example Example: Create replication subnet group
    #
    #   # Creates a replication subnet group given a list of the subnet IDs in a VPC.
    #
    #   resp = client.create_replication_subnet_group({
    #     replication_subnet_group_description: "US West subnet group", 
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366", 
    #     subnet_ids: [
    #       "subnet-e145356n", 
    #       "subnet-58f79200", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "145235", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_subnet_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_subnet_group.vpc_id #=> String
    #   resp.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_subnet_group.subnets #=> Array
    #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroup AWS API Documentation
    #
    # @overload create_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_replication_subnet_group(params = {}, options = {})
      req = build_request(:create_replication_subnet_group, params)
      req.send_request(options)
    end

    # Creates a replication task using the specified parameters.
    #
    # @option params [required, String] :replication_task_identifier
    #   An identifier for the replication task.
    #
    #   Constraints:
    #
    #   * Must contain 1-255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :source_endpoint_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the source
    #   endpoint.
    #
    # @option params [required, String] :target_endpoint_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the target
    #   endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of a replication instance.
    #
    # @option params [required, String] :migration_type
    #   The migration type. Valid values: `full-load` \| `cdc` \|
    #   `full-load-and-cdc`
    #
    # @option params [required, String] :table_mappings
    #   The table mappings for the task, in JSON format. For more information,
    #   see [Using Table Mapping to Specify Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html
    #
    # @option params [String] :replication_task_settings
    #   Overall settings for the task, in JSON format. For more information,
    #   see [Specifying Task Settings for AWS Database Migration Service
    #   Tasks][1] in the *AWS Database Migration User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated with
    #   the source endpoint. You can verify this by setting the `slotName`
    #   extra connection attribute to the name of this logical replication
    #   slot. For more information, see [Extra Connection Attributes When
    #   Using PostgreSQL as a Source for AWS DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to be assigned to the replication task.
    #
    # @option params [String] :task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
    #
    # @option params [String] :resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two consecutive
    #   hyphens, and can only begin with a letter, such as `Example-App-ARN1`.
    #   For example, this value might result in the `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
    #
    # @return [Types::CreateReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Create replication task
    #
    #   # Creates a replication task using the specified parameters.
    #
    #   resp = client.create_replication_task({
    #     cdc_start_time: Time.parse("2016-12-14T18:25:43Z"), 
    #     migration_type: "full-load", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     replication_task_identifier: "task1", 
    #     replication_task_settings: "", 
    #     source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #     table_mappings: "file://mappingfile.json", 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "24352226", 
    #       }, 
    #     ], 
    #     target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_task({
    #     replication_task_identifier: "String", # required
    #     source_endpoint_arn: "String", # required
    #     target_endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #     migration_type: "full-load", # required, accepts full-load, cdc, full-load-and-cdc
    #     table_mappings: "String", # required
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     task_data: "String",
    #     resource_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationTask AWS API Documentation
    #
    # @overload create_replication_task(params = {})
    # @param [Hash] params ({})
    def create_replication_task(params = {}, options = {})
      req = build_request(:create_replication_task, params)
      req.send_request(options)
    end

    # Deletes the specified certificate.
    #
    # @option params [required, String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the deleted certificate.
    #
    # @return [Types::DeleteCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCertificateResponse#certificate #certificate} => Types::Certificate
    #
    #
    # @example Example: Delete Certificate
    #
    #   # Deletes the specified certificate.
    #
    #   resp = client.delete_certificate({
    #     certificate_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_identifier #=> String
    #   resp.certificate.certificate_creation_date #=> Time
    #   resp.certificate.certificate_pem #=> String
    #   resp.certificate.certificate_wallet #=> String
    #   resp.certificate.certificate_arn #=> String
    #   resp.certificate.certificate_owner #=> String
    #   resp.certificate.valid_from_date #=> Time
    #   resp.certificate.valid_to_date #=> Time
    #   resp.certificate.signing_algorithm #=> String
    #   resp.certificate.key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificate AWS API Documentation
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Deletes the connection between a replication instance and an endpoint.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @return [Types::DeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Delete Connection
    #
    #   # Deletes the connection between the replication instance and the endpoint.
    #
    #   resp = client.delete_connection({
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.replication_instance_arn #=> String
    #   resp.connection.endpoint_arn #=> String
    #   resp.connection.status #=> String
    #   resp.connection.last_failure_message #=> String
    #   resp.connection.endpoint_identifier #=> String
    #   resp.connection.replication_instance_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Deletes the specified endpoint.
    #
    # <note markdown="1"> All tasks associated with the endpoint must be deleted before you can
    # delete the endpoint.
    #
    #  </note>
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::DeleteEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Delete Endpoint
    #
    #   # Deletes the specified endpoint. All tasks associated with the endpoint must be deleted before you can delete the
    #   # endpoint.
    #
    #   resp = client.delete_endpoint({
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #       endpoint_identifier: "test-endpoint-1", 
    #       endpoint_type: "source", 
    #       engine_name: "mysql", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       port: 3306, 
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #       status: "active", 
    #       username: "username", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.s3_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.s3_settings.data_format #=> String, one of "csv", "parquet"
    #   resp.endpoint.s3_settings.encoding_type #=> String, one of "plain", "plain-dictionary", "rle-dictionary"
    #   resp.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.endpoint.s3_settings.parquet_version #=> String, one of "parquet-1-0", "parquet-2-0"
    #   resp.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_sequence #=> String, one of "YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"
    #   resp.endpoint.s3_settings.date_partition_delimiter #=> String, one of "SLASH", "UNDERSCORE", "DASH", "NONE"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.endpoint.kinesis_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.kafka_settings.broker #=> String
    #   resp.endpoint.kafka_settings.topic #=> String
    #   resp.endpoint.kafka_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.endpoint.redshift_settings.bucket_name #=> String
    #   resp.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.endpoint.redshift_settings.database_name #=> String
    #   resp.endpoint.redshift_settings.date_format #=> String
    #   resp.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.endpoint.redshift_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.endpoint.redshift_settings.password #=> String
    #   resp.endpoint.redshift_settings.port #=> Integer
    #   resp.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.endpoint.redshift_settings.replace_chars #=> String
    #   resp.endpoint.redshift_settings.server_name #=> String
    #   resp.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.redshift_settings.time_format #=> String
    #   resp.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.endpoint.redshift_settings.username #=> String
    #   resp.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.postgre_sql_settings.password #=> String
    #   resp.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.endpoint.postgre_sql_settings.username #=> String
    #   resp.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.endpoint.my_sql_settings.database_name #=> String
    #   resp.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.endpoint.my_sql_settings.target_db_type #=> String, one of "specific-database", "multiple-databases"
    #   resp.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.endpoint.my_sql_settings.password #=> String
    #   resp.endpoint.my_sql_settings.port #=> Integer
    #   resp.endpoint.my_sql_settings.server_name #=> String
    #   resp.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.endpoint.my_sql_settings.username #=> String
    #   resp.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.endpoint.oracle_settings.asm_password #=> String
    #   resp.endpoint.oracle_settings.asm_server #=> String
    #   resp.endpoint.oracle_settings.asm_user #=> String
    #   resp.endpoint.oracle_settings.char_length_semantics #=> String, one of "default", "char", "byte"
    #   resp.endpoint.oracle_settings.database_name #=> String
    #   resp.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.endpoint.oracle_settings.password #=> String
    #   resp.endpoint.oracle_settings.port #=> Integer
    #   resp.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.endpoint.oracle_settings.server_name #=> String
    #   resp.endpoint.oracle_settings.username #=> String
    #   resp.endpoint.sybase_settings.database_name #=> String
    #   resp.endpoint.sybase_settings.password #=> String
    #   resp.endpoint.sybase_settings.port #=> Integer
    #   resp.endpoint.sybase_settings.server_name #=> String
    #   resp.endpoint.sybase_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of "rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"
    #   resp.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.database_name #=> String
    #   resp.endpoint.ibm_db_2_settings.password #=> String
    #   resp.endpoint.ibm_db_2_settings.port #=> Integer
    #   resp.endpoint.ibm_db_2_settings.server_name #=> String
    #   resp.endpoint.ibm_db_2_settings.set_data_capture_changes #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.current_lsn #=> String
    #   resp.endpoint.ibm_db_2_settings.max_k_bytes_per_read #=> Integer
    #   resp.endpoint.ibm_db_2_settings.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes an AWS DMS event subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the DMS event notification subscription to be deleted.
    #
    # @return [Types::DeleteEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified replication instance.
    #
    # <note markdown="1"> You must delete any migration tasks that are associated with the
    # replication instance before you can delete it.
    #
    #  </note>
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance to be
    #   deleted.
    #
    # @return [Types::DeleteReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Delete Replication Instance
    #
    #   # Deletes the specified replication instance. You must delete any migration tasks that are associated with the replication
    #   # instance before you can delete it.
    #
    #   resp = client.delete_replication_instance({
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "creating", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_instance({
    #     replication_instance_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #   resp.replication_instance.dns_name_servers #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstance AWS API Documentation
    #
    # @overload delete_replication_instance(params = {})
    # @param [Hash] params ({})
    def delete_replication_instance(params = {}, options = {})
      req = build_request(:delete_replication_instance, params)
      req.send_request(options)
    end

    # Deletes a subnet group.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The subnet group name of the replication instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete Replication Subnet Group
    #
    #   # Deletes a replication subnet group.
    #
    #   resp = client.delete_replication_subnet_group({
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroup AWS API Documentation
    #
    # @overload delete_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_replication_subnet_group(params = {}, options = {})
      req = build_request(:delete_replication_subnet_group, params)
      req.send_request(options)
    end

    # Deletes the specified replication task.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be deleted.
    #
    # @return [Types::DeleteReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Delete Replication Task
    #
    #   # Deletes the specified replication task.
    #
    #   resp = client.delete_replication_task({
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_task({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTask AWS API Documentation
    #
    # @overload delete_replication_task(params = {})
    # @param [Hash] params ({})
    def delete_replication_task(params = {}, options = {})
      req = build_request(:delete_replication_task, params)
      req.send_request(options)
    end

    # Deletes the record of a single premigration assessment run.
    #
    # This operation removes all metadata that AWS DMS maintains about this
    # assessment run. However, the operation leaves untouched all
    # information about this assessment run that is stored in your Amazon S3
    # bucket.
    #
    # @option params [required, String] :replication_task_assessment_run_arn
    #   Amazon Resource Name (ARN) of the premigration assessment run to be
    #   deleted.
    #
    # @return [Types::DeleteReplicationTaskAssessmentRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationTaskAssessmentRunResponse#replication_task_assessment_run #replication_task_assessment_run} => Types::ReplicationTaskAssessmentRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_task_assessment_run({
    #     replication_task_assessment_run_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.replication_task_assessment_run.status #=> String
    #   resp.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.replication_task_assessment_run.last_failure_message #=> String
    #   resp.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.replication_task_assessment_run.result_location_folder #=> String
    #   resp.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.replication_task_assessment_run.assessment_run_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskAssessmentRun AWS API Documentation
    #
    # @overload delete_replication_task_assessment_run(params = {})
    # @param [Hash] params ({})
    def delete_replication_task_assessment_run(params = {}, options = {})
      req = build_request(:delete_replication_task_assessment_run, params)
      req.send_request(options)
    end

    # Lists all of the AWS DMS attributes for a customer account. These
    # attributes include AWS DMS quotas for the account and a unique account
    # identifier in a particular DMS region. DMS quotas include a list of
    # resource quotas supported by the account, such as the number of
    # replication instances allowed. The description for each resource
    # quota, includes the quota name, current usage toward that quota, and
    # the quota's maximum value. DMS uses the unique account identifier to
    # name each artifact used by DMS in the given region.
    #
    # This command does not take any parameters.
    #
    # @return [Types::DescribeAccountAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResponse#account_quotas #account_quotas} => Array&lt;Types::AccountQuota&gt;
    #   * {Types::DescribeAccountAttributesResponse#unique_account_identifier #unique_account_identifier} => String
    #
    #
    # @example Example: Describe acount attributes
    #
    #   # Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such
    #   # as the number of replication instances allowed. The description for a quota includes the quota name, current usage
    #   # toward that quota, and the quota's maximum value. This operation does not take any parameters.
    #
    #   resp = client.describe_account_attributes({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_quotas: [
    #       {
    #         account_quota_name: "ReplicationInstances", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #       {
    #         account_quota_name: "AllocatedStorage", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #       {
    #         account_quota_name: "Endpoints", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_quotas #=> Array
    #   resp.account_quotas[0].account_quota_name #=> String
    #   resp.account_quotas[0].used #=> Integer
    #   resp.account_quotas[0].max #=> Integer
    #   resp.unique_account_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Provides a list of individual assessments that you can specify for a
    # new premigration assessment run, given one or more parameters.
    #
    # If you specify an existing migration task, this operation provides the
    # default individual assessments you can specify for that task.
    # Otherwise, the specified parameters model elements of a possible
    # migration task on which to base a premigration assessment run.
    #
    # To use these migration task modeling parameters, you must specify an
    # existing replication instance, a source database engine, a target
    # database engine, and a migration type. This combination of parameters
    # potentially limits the default individual assessments available for an
    # assessment run created for a corresponding migration task.
    #
    # If you specify no parameters, this operation provides a list of all
    # possible individual assessments that you can specify for an assessment
    # run. If you specify any one of the task modeling parameters, you must
    # specify all of them or the operation cannot provide a list of
    # individual assessments. The only parameter that you can specify alone
    # is for an existing migration task. The specified task definition then
    # determines the default list of individual assessments that you can
    # specify in an assessment run for the task.
    #
    # @option params [String] :replication_task_arn
    #   Amazon Resource Name (ARN) of a migration task on which you want to
    #   base the default list of individual assessments.
    #
    # @option params [String] :replication_instance_arn
    #   ARN of a replication instance on which you want to base the default
    #   list of individual assessments.
    #
    # @option params [String] :source_engine_name
    #   Name of a database engine that the specified replication instance
    #   supports as a source.
    #
    # @option params [String] :target_engine_name
    #   Name of a database engine that the specified replication instance
    #   supports as a target.
    #
    # @option params [String] :migration_type
    #   Name of the migration type that each provided individual assessment
    #   must support.
    #
    # @option params [Integer] :max_records
    #   Maximum number of records to include in the response. If more records
    #   exist than the specified `MaxRecords` value, a pagination token called
    #   a marker is included in the response so that the remaining results can
    #   be retrieved.
    #
    # @option params [String] :marker
    #   Optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeApplicableIndividualAssessmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicableIndividualAssessmentsResponse#individual_assessment_names #individual_assessment_names} => Array&lt;String&gt;
    #   * {Types::DescribeApplicableIndividualAssessmentsResponse#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applicable_individual_assessments({
    #     replication_task_arn: "String",
    #     replication_instance_arn: "String",
    #     source_engine_name: "String",
    #     target_engine_name: "String",
    #     migration_type: "full-load", # accepts full-load, cdc, full-load-and-cdc
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.individual_assessment_names #=> Array
    #   resp.individual_assessment_names[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeApplicableIndividualAssessments AWS API Documentation
    #
    # @overload describe_applicable_individual_assessments(params = {})
    # @param [Hash] params ({})
    def describe_applicable_individual_assessments(params = {}, options = {})
      req = build_request(:describe_applicable_individual_assessments, params)
      req.send_request(options)
    end

    # Provides a description of the certificate.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the certificates described in the form of key-value
    #   pairs.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 10
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificatesResponse#marker #marker} => String
    #   * {Types::DescribeCertificatesResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe certificates
    #
    #   # Provides a description of the certificate.
    #
    #   resp = client.describe_certificates({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificates: [
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_identifier #=> String
    #   resp.certificates[0].certificate_creation_date #=> Time
    #   resp.certificates[0].certificate_pem #=> String
    #   resp.certificates[0].certificate_wallet #=> String
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_owner #=> String
    #   resp.certificates[0].valid_from_date #=> Time
    #   resp.certificates[0].valid_to_date #=> Time
    #   resp.certificates[0].signing_algorithm #=> String
    #   resp.certificates[0].key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeCertificates AWS API Documentation
    #
    # @overload describe_certificates(params = {})
    # @param [Hash] params ({})
    def describe_certificates(params = {}, options = {})
      req = build_request(:describe_certificates, params)
      req.send_request(options)
    end

    # Describes the status of the connections that have been made between
    # the replication instance and an endpoint. Connections are created when
    # you test an endpoint.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters applied to the connection.
    #
    #   Valid filter names: endpoint-arn \| replication-instance-arn
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionsResponse#marker #marker} => String
    #   * {Types::DescribeConnectionsResponse#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe connections
    #
    #   # Describes the status of the connections that have been made between the replication instance and an endpoint.
    #   # Connections are created when you test an endpoint.
    #
    #   resp = client.describe_connections({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connections: [
    #       {
    #         endpoint_arn: "arn:aws:dms:us-east-arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #         endpoint_identifier: "testsrc1", 
    #         replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #         replication_instance_identifier: "test", 
    #         status: "successful", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].replication_instance_arn #=> String
    #   resp.connections[0].endpoint_arn #=> String
    #   resp.connections[0].status #=> String
    #   resp.connections[0].last_failure_message #=> String
    #   resp.connections[0].endpoint_identifier #=> String
    #   resp.connections[0].replication_instance_identifier #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * test_connection_succeeds
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConnections AWS API Documentation
    #
    # @overload describe_connections(params = {})
    # @param [Hash] params ({})
    def describe_connections(params = {}, options = {})
      req = build_request(:describe_connections, params)
      req.send_request(options)
    end

    # Returns information about the type of endpoints available.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the endpoint types.
    #
    #   Valid filter names: engine-name \| endpoint-type
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEndpointTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointTypesResponse#marker #marker} => String
    #   * {Types::DescribeEndpointTypesResponse#supported_endpoint_types #supported_endpoint_types} => Array&lt;Types::SupportedEndpointType&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe endpoint types
    #
    #   # Returns information about the type of endpoints available.
    #
    #   resp = client.describe_endpoint_types({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     supported_endpoint_types: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_types({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.supported_endpoint_types #=> Array
    #   resp.supported_endpoint_types[0].engine_name #=> String
    #   resp.supported_endpoint_types[0].supports_cdc #=> Boolean
    #   resp.supported_endpoint_types[0].endpoint_type #=> String, one of "source", "target"
    #   resp.supported_endpoint_types[0].replication_instance_engine_minimum_version #=> String
    #   resp.supported_endpoint_types[0].engine_display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypes AWS API Documentation
    #
    # @overload describe_endpoint_types(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_types(params = {}, options = {})
      req = build_request(:describe_endpoint_types, params)
      req.send_request(options)
    end

    # Returns information about the endpoints for your account in the
    # current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the endpoints.
    #
    #   Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \|
    #   engine-name
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#marker #marker} => String
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe endpoints
    #
    #   # Returns information about the endpoints for your account in the current region.
    #
    #   resp = client.describe_endpoints({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoints: [
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_identifier #=> String
    #   resp.endpoints[0].endpoint_type #=> String, one of "source", "target"
    #   resp.endpoints[0].engine_name #=> String
    #   resp.endpoints[0].engine_display_name #=> String
    #   resp.endpoints[0].username #=> String
    #   resp.endpoints[0].server_name #=> String
    #   resp.endpoints[0].port #=> Integer
    #   resp.endpoints[0].database_name #=> String
    #   resp.endpoints[0].extra_connection_attributes #=> String
    #   resp.endpoints[0].status #=> String
    #   resp.endpoints[0].kms_key_id #=> String
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].certificate_arn #=> String
    #   resp.endpoints[0].ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoints[0].service_access_role_arn #=> String
    #   resp.endpoints[0].external_table_definition #=> String
    #   resp.endpoints[0].external_id #=> String
    #   resp.endpoints[0].dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].s3_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].s3_settings.external_table_definition #=> String
    #   resp.endpoints[0].s3_settings.csv_row_delimiter #=> String
    #   resp.endpoints[0].s3_settings.csv_delimiter #=> String
    #   resp.endpoints[0].s3_settings.bucket_folder #=> String
    #   resp.endpoints[0].s3_settings.bucket_name #=> String
    #   resp.endpoints[0].s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoints[0].s3_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoints[0].s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoints[0].s3_settings.data_format #=> String, one of "csv", "parquet"
    #   resp.endpoints[0].s3_settings.encoding_type #=> String, one of "plain", "plain-dictionary", "rle-dictionary"
    #   resp.endpoints[0].s3_settings.dict_page_size_limit #=> Integer
    #   resp.endpoints[0].s3_settings.row_group_length #=> Integer
    #   resp.endpoints[0].s3_settings.data_page_size #=> Integer
    #   resp.endpoints[0].s3_settings.parquet_version #=> String, one of "parquet-1-0", "parquet-2-0"
    #   resp.endpoints[0].s3_settings.enable_statistics #=> Boolean
    #   resp.endpoints[0].s3_settings.include_op_for_full_load #=> Boolean
    #   resp.endpoints[0].s3_settings.cdc_inserts_only #=> Boolean
    #   resp.endpoints[0].s3_settings.timestamp_column_name #=> String
    #   resp.endpoints[0].s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.endpoints[0].s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.endpoints[0].s3_settings.date_partition_enabled #=> Boolean
    #   resp.endpoints[0].s3_settings.date_partition_sequence #=> String, one of "YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"
    #   resp.endpoints[0].s3_settings.date_partition_delimiter #=> String, one of "SLASH", "UNDERSCORE", "DASH", "NONE"
    #   resp.endpoints[0].dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].dms_transfer_settings.bucket_name #=> String
    #   resp.endpoints[0].mongo_db_settings.username #=> String
    #   resp.endpoints[0].mongo_db_settings.password #=> String
    #   resp.endpoints[0].mongo_db_settings.server_name #=> String
    #   resp.endpoints[0].mongo_db_settings.port #=> Integer
    #   resp.endpoints[0].mongo_db_settings.database_name #=> String
    #   resp.endpoints[0].mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoints[0].mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoints[0].mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoints[0].mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoints[0].mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoints[0].mongo_db_settings.auth_source #=> String
    #   resp.endpoints[0].mongo_db_settings.kms_key_id #=> String
    #   resp.endpoints[0].kinesis_settings.stream_arn #=> String
    #   resp.endpoints[0].kinesis_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoints[0].kinesis_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].kinesis_settings.include_transaction_details #=> Boolean
    #   resp.endpoints[0].kinesis_settings.include_partition_value #=> Boolean
    #   resp.endpoints[0].kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoints[0].kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoints[0].kinesis_settings.include_control_details #=> Boolean
    #   resp.endpoints[0].kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.endpoints[0].kafka_settings.broker #=> String
    #   resp.endpoints[0].kafka_settings.topic #=> String
    #   resp.endpoints[0].kafka_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoints[0].kafka_settings.include_transaction_details #=> Boolean
    #   resp.endpoints[0].kafka_settings.include_partition_value #=> Boolean
    #   resp.endpoints[0].kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoints[0].kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoints[0].kafka_settings.include_control_details #=> Boolean
    #   resp.endpoints[0].kafka_settings.message_max_bytes #=> Integer
    #   resp.endpoints[0].kafka_settings.include_null_and_empty #=> Boolean
    #   resp.endpoints[0].elasticsearch_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].elasticsearch_settings.endpoint_uri #=> String
    #   resp.endpoints[0].elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.endpoints[0].elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.endpoints[0].neptune_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].neptune_settings.s3_bucket_name #=> String
    #   resp.endpoints[0].neptune_settings.s3_bucket_folder #=> String
    #   resp.endpoints[0].neptune_settings.error_retry_duration #=> Integer
    #   resp.endpoints[0].neptune_settings.max_file_size #=> Integer
    #   resp.endpoints[0].neptune_settings.max_retry_count #=> Integer
    #   resp.endpoints[0].neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.endpoints[0].redshift_settings.accept_any_date #=> Boolean
    #   resp.endpoints[0].redshift_settings.after_connect_script #=> String
    #   resp.endpoints[0].redshift_settings.bucket_folder #=> String
    #   resp.endpoints[0].redshift_settings.bucket_name #=> String
    #   resp.endpoints[0].redshift_settings.case_sensitive_names #=> Boolean
    #   resp.endpoints[0].redshift_settings.comp_update #=> Boolean
    #   resp.endpoints[0].redshift_settings.connection_timeout #=> Integer
    #   resp.endpoints[0].redshift_settings.database_name #=> String
    #   resp.endpoints[0].redshift_settings.date_format #=> String
    #   resp.endpoints[0].redshift_settings.empty_as_null #=> Boolean
    #   resp.endpoints[0].redshift_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoints[0].redshift_settings.explicit_ids #=> Boolean
    #   resp.endpoints[0].redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.endpoints[0].redshift_settings.load_timeout #=> Integer
    #   resp.endpoints[0].redshift_settings.max_file_size #=> Integer
    #   resp.endpoints[0].redshift_settings.password #=> String
    #   resp.endpoints[0].redshift_settings.port #=> Integer
    #   resp.endpoints[0].redshift_settings.remove_quotes #=> Boolean
    #   resp.endpoints[0].redshift_settings.replace_invalid_chars #=> String
    #   resp.endpoints[0].redshift_settings.replace_chars #=> String
    #   resp.endpoints[0].redshift_settings.server_name #=> String
    #   resp.endpoints[0].redshift_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoints[0].redshift_settings.time_format #=> String
    #   resp.endpoints[0].redshift_settings.trim_blanks #=> Boolean
    #   resp.endpoints[0].redshift_settings.truncate_columns #=> Boolean
    #   resp.endpoints[0].redshift_settings.username #=> String
    #   resp.endpoints[0].redshift_settings.write_buffer_size #=> Integer
    #   resp.endpoints[0].postgre_sql_settings.after_connect_script #=> String
    #   resp.endpoints[0].postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.endpoints[0].postgre_sql_settings.max_file_size #=> Integer
    #   resp.endpoints[0].postgre_sql_settings.database_name #=> String
    #   resp.endpoints[0].postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.endpoints[0].postgre_sql_settings.execute_timeout #=> Integer
    #   resp.endpoints[0].postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoints[0].postgre_sql_settings.password #=> String
    #   resp.endpoints[0].postgre_sql_settings.port #=> Integer
    #   resp.endpoints[0].postgre_sql_settings.server_name #=> String
    #   resp.endpoints[0].postgre_sql_settings.username #=> String
    #   resp.endpoints[0].postgre_sql_settings.slot_name #=> String
    #   resp.endpoints[0].my_sql_settings.after_connect_script #=> String
    #   resp.endpoints[0].my_sql_settings.database_name #=> String
    #   resp.endpoints[0].my_sql_settings.events_poll_interval #=> Integer
    #   resp.endpoints[0].my_sql_settings.target_db_type #=> String, one of "specific-database", "multiple-databases"
    #   resp.endpoints[0].my_sql_settings.max_file_size #=> Integer
    #   resp.endpoints[0].my_sql_settings.parallel_load_threads #=> Integer
    #   resp.endpoints[0].my_sql_settings.password #=> String
    #   resp.endpoints[0].my_sql_settings.port #=> Integer
    #   resp.endpoints[0].my_sql_settings.server_name #=> String
    #   resp.endpoints[0].my_sql_settings.server_timezone #=> String
    #   resp.endpoints[0].my_sql_settings.username #=> String
    #   resp.endpoints[0].oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.endpoints[0].oracle_settings.archived_log_dest_id #=> Integer
    #   resp.endpoints[0].oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.endpoints[0].oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.endpoints[0].oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.endpoints[0].oracle_settings.read_ahead_blocks #=> Integer
    #   resp.endpoints[0].oracle_settings.access_alternate_directly #=> Boolean
    #   resp.endpoints[0].oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.endpoints[0].oracle_settings.oracle_path_prefix #=> String
    #   resp.endpoints[0].oracle_settings.use_path_prefix #=> String
    #   resp.endpoints[0].oracle_settings.replace_path_prefix #=> Boolean
    #   resp.endpoints[0].oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.endpoints[0].oracle_settings.direct_path_no_log #=> Boolean
    #   resp.endpoints[0].oracle_settings.archived_logs_only #=> Boolean
    #   resp.endpoints[0].oracle_settings.asm_password #=> String
    #   resp.endpoints[0].oracle_settings.asm_server #=> String
    #   resp.endpoints[0].oracle_settings.asm_user #=> String
    #   resp.endpoints[0].oracle_settings.char_length_semantics #=> String, one of "default", "char", "byte"
    #   resp.endpoints[0].oracle_settings.database_name #=> String
    #   resp.endpoints[0].oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.endpoints[0].oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoints[0].oracle_settings.number_datatype_scale #=> Integer
    #   resp.endpoints[0].oracle_settings.password #=> String
    #   resp.endpoints[0].oracle_settings.port #=> Integer
    #   resp.endpoints[0].oracle_settings.read_table_space_name #=> Boolean
    #   resp.endpoints[0].oracle_settings.retry_interval #=> Integer
    #   resp.endpoints[0].oracle_settings.security_db_encryption #=> String
    #   resp.endpoints[0].oracle_settings.security_db_encryption_name #=> String
    #   resp.endpoints[0].oracle_settings.server_name #=> String
    #   resp.endpoints[0].oracle_settings.username #=> String
    #   resp.endpoints[0].sybase_settings.database_name #=> String
    #   resp.endpoints[0].sybase_settings.password #=> String
    #   resp.endpoints[0].sybase_settings.port #=> Integer
    #   resp.endpoints[0].sybase_settings.server_name #=> String
    #   resp.endpoints[0].sybase_settings.username #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.port #=> Integer
    #   resp.endpoints[0].microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.endpoints[0].microsoft_sql_server_settings.database_name #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.password #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.endpoints[0].microsoft_sql_server_settings.safeguard_policy #=> String, one of "rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"
    #   resp.endpoints[0].microsoft_sql_server_settings.server_name #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.username #=> String
    #   resp.endpoints[0].microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.endpoints[0].ibm_db_2_settings.database_name #=> String
    #   resp.endpoints[0].ibm_db_2_settings.password #=> String
    #   resp.endpoints[0].ibm_db_2_settings.port #=> Integer
    #   resp.endpoints[0].ibm_db_2_settings.server_name #=> String
    #   resp.endpoints[0].ibm_db_2_settings.set_data_capture_changes #=> Boolean
    #   resp.endpoints[0].ibm_db_2_settings.current_lsn #=> String
    #   resp.endpoints[0].ibm_db_2_settings.max_k_bytes_per_read #=> Integer
    #   resp.endpoints[0].ibm_db_2_settings.username #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * endpoint_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Lists categories for all event source types, or, if specified, for a
    # specified source type. You can see a list of the event categories and
    # source types in [Working with Events and Notifications][1] in the *AWS
    # Database Migration Service User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-task
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the event categories.
    #
    # @return [Types::DescribeEventCategoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventCategoriesResponse#event_category_group_list #event_category_group_list} => Array&lt;Types::EventCategoryGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories({
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_category_group_list #=> Array
    #   resp.event_category_group_list[0].source_type #=> String
    #   resp.event_category_group_list[0].event_categories #=> Array
    #   resp.event_category_group_list[0].event_categories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategories AWS API Documentation
    #
    # @overload describe_event_categories(params = {})
    # @param [Hash] params ({})
    def describe_event_categories(params = {}, options = {})
      req = build_request(:describe_event_categories, params)
      req.send_request(options)
    end

    # Lists all the event subscriptions for a customer account. The
    # description of a subscription includes `SubscriptionName`,
    # `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`,
    # and `Status`.
    #
    # If you specify `SubscriptionName`, this action lists the description
    # for that subscription.
    #
    # @option params [String] :subscription_name
    #   The name of the AWS DMS event subscription to be described.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to event subscriptions.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEventSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventSubscriptionsResponse#marker #marker} => String
    #   * {Types::DescribeEventSubscriptionsResponse#event_subscriptions_list #event_subscriptions_list} => Array&lt;Types::EventSubscription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.event_subscriptions_list #=> Array
    #   resp.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.event_subscriptions_list[0].status #=> String
    #   resp.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.event_subscriptions_list[0].source_type #=> String
    #   resp.event_subscriptions_list[0].source_ids_list #=> Array
    #   resp.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.event_subscriptions_list[0].event_categories_list #=> Array
    #   resp.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.event_subscriptions_list[0].enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventSubscriptions AWS API Documentation
    #
    # @overload describe_event_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_event_subscriptions(params = {}, options = {})
      req = build_request(:describe_event_subscriptions, params)
      req.send_request(options)
    end

    # Lists events for a given source identifier and source type. You can
    # also specify a start and end time. For more information on AWS DMS
    # events, see [Working with Events and Notifications][1] in the *AWS
    # Database Migration User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [String] :source_identifier
    #   The identifier of an event source.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-task
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time for the events to be listed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time for the events to be listed.
    #
    # @option params [Integer] :duration
    #   The duration of the events to be listed.
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for the source type that you've chosen.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to events.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#marker #marker} => String
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "replication-instance", # accepts replication-instance
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "replication-instance"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_categories #=> Array
    #   resp.events[0].event_categories[0] #=> String
    #   resp.events[0].date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about the replication instance types that can be
    # created in the specified region.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeOrderableReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrderableReplicationInstancesResponse#orderable_replication_instances #orderable_replication_instances} => Array&lt;Types::OrderableReplicationInstance&gt;
    #   * {Types::DescribeOrderableReplicationInstancesResponse#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe orderable replication instances
    #
    #   # Returns information about the replication instance types that can be created in the specified region.
    #
    #   resp = client.describe_orderable_replication_instances({
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     orderable_replication_instances: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_replication_instances({
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.orderable_replication_instances #=> Array
    #   resp.orderable_replication_instances[0].engine_version #=> String
    #   resp.orderable_replication_instances[0].replication_instance_class #=> String
    #   resp.orderable_replication_instances[0].storage_type #=> String
    #   resp.orderable_replication_instances[0].min_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].max_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].default_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].included_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].availability_zones #=> Array
    #   resp.orderable_replication_instances[0].availability_zones[0] #=> String
    #   resp.orderable_replication_instances[0].release_status #=> String, one of "beta"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeOrderableReplicationInstances AWS API Documentation
    #
    # @overload describe_orderable_replication_instances(params = {})
    # @param [Hash] params ({})
    def describe_orderable_replication_instances(params = {}, options = {})
      req = build_request(:describe_orderable_replication_instances, params)
      req.send_request(options)
    end

    # For internal use only
    #
    # @option params [String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Array<Types::Filter>] :filters
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @return [Types::DescribePendingMaintenanceActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePendingMaintenanceActionsResponse#pending_maintenance_actions #pending_maintenance_actions} => Array&lt;Types::ResourcePendingMaintenanceActions&gt;
    #   * {Types::DescribePendingMaintenanceActionsResponse#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_maintenance_actions({
    #     replication_instance_arn: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pending_maintenance_actions #=> Array
    #   resp.pending_maintenance_actions[0].resource_identifier #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details #=> Array
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].action #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].description #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribePendingMaintenanceActions AWS API Documentation
    #
    # @overload describe_pending_maintenance_actions(params = {})
    # @param [Hash] params ({})
    def describe_pending_maintenance_actions(params = {}, options = {})
      req = build_request(:describe_pending_maintenance_actions, params)
      req.send_request(options)
    end

    # Returns the status of the RefreshSchemas operation.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::DescribeRefreshSchemasStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRefreshSchemasStatusResponse#refresh_schemas_status #refresh_schemas_status} => Types::RefreshSchemasStatus
    #
    #
    # @example Example: Describe refresh schema status
    #
    #   # Returns the status of the refresh-schemas operation.
    #
    #   resp = client.describe_refresh_schemas_status({
    #     endpoint_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     refresh_schemas_status: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_refresh_schemas_status({
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schemas_status.endpoint_arn #=> String
    #   resp.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
    #   resp.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.refresh_schemas_status.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatus AWS API Documentation
    #
    # @overload describe_refresh_schemas_status(params = {})
    # @param [Hash] params ({})
    def describe_refresh_schemas_status(params = {}, options = {})
      req = build_request(:describe_refresh_schemas_status, params)
      req.send_request(options)
    end

    # Returns information about the task logs for the specified task.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationInstanceTaskLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#replication_instance_arn #replication_instance_arn} => String
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#replication_instance_task_logs #replication_instance_task_logs} => Array&lt;Types::ReplicationInstanceTaskLog&gt;
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instance_task_logs({
    #     replication_instance_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance_arn #=> String
    #   resp.replication_instance_task_logs #=> Array
    #   resp.replication_instance_task_logs[0].replication_task_name #=> String
    #   resp.replication_instance_task_logs[0].replication_task_arn #=> String
    #   resp.replication_instance_task_logs[0].replication_instance_task_log_size #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstanceTaskLogs AWS API Documentation
    #
    # @overload describe_replication_instance_task_logs(params = {})
    # @param [Hash] params ({})
    def describe_replication_instance_task_logs(params = {}, options = {})
      req = build_request(:describe_replication_instance_task_logs, params)
      req.send_request(options)
    end

    # Returns information about replication instances for your account in
    # the current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to replication instances.
    #
    #   Valid filter names: replication-instance-arn \|
    #   replication-instance-id \| replication-instance-class \|
    #   engine-version
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationInstancesResponse#marker #marker} => String
    #   * {Types::DescribeReplicationInstancesResponse#replication_instances #replication_instances} => Array&lt;Types::ReplicationInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe replication instances
    #
    #   # Returns the status of the refresh-schemas operation.
    #
    #   resp = client.describe_replication_instances({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_instances: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instances({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_instances #=> Array
    #   resp.replication_instances[0].replication_instance_identifier #=> String
    #   resp.replication_instances[0].replication_instance_class #=> String
    #   resp.replication_instances[0].replication_instance_status #=> String
    #   resp.replication_instances[0].allocated_storage #=> Integer
    #   resp.replication_instances[0].instance_create_time #=> Time
    #   resp.replication_instances[0].vpc_security_groups #=> Array
    #   resp.replication_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instances[0].vpc_security_groups[0].status #=> String
    #   resp.replication_instances[0].availability_zone #=> String
    #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instances[0].replication_subnet_group.vpc_id #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets #=> Array
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instances[0].preferred_maintenance_window #=> String
    #   resp.replication_instances[0].pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instances[0].pending_modified_values.engine_version #=> String
    #   resp.replication_instances[0].multi_az #=> Boolean
    #   resp.replication_instances[0].engine_version #=> String
    #   resp.replication_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instances[0].kms_key_id #=> String
    #   resp.replication_instances[0].replication_instance_arn #=> String
    #   resp.replication_instances[0].replication_instance_public_ip_address #=> String
    #   resp.replication_instances[0].replication_instance_private_ip_address #=> String
    #   resp.replication_instances[0].replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instances[0].replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instances[0].replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instances[0].replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instances[0].publicly_accessible #=> Boolean
    #   resp.replication_instances[0].secondary_availability_zone #=> String
    #   resp.replication_instances[0].free_until #=> Time
    #   resp.replication_instances[0].dns_name_servers #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * replication_instance_available
    #   * replication_instance_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstances AWS API Documentation
    #
    # @overload describe_replication_instances(params = {})
    # @param [Hash] params ({})
    def describe_replication_instances(params = {}, options = {})
      req = build_request(:describe_replication_instances, params)
      req.send_request(options)
    end

    # Returns information about the replication subnet groups.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to replication subnet groups.
    #
    #   Valid filter names: replication-subnet-group-id
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationSubnetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationSubnetGroupsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationSubnetGroupsResponse#replication_subnet_groups #replication_subnet_groups} => Array&lt;Types::ReplicationSubnetGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe replication subnet groups
    #
    #   # Returns information about the replication subnet groups.
    #
    #   resp = client.describe_replication_subnet_groups({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_subnet_groups: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_subnet_groups({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_subnet_groups #=> Array
    #   resp.replication_subnet_groups[0].replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_groups[0].replication_subnet_group_description #=> String
    #   resp.replication_subnet_groups[0].vpc_id #=> String
    #   resp.replication_subnet_groups[0].subnet_group_status #=> String
    #   resp.replication_subnet_groups[0].subnets #=> Array
    #   resp.replication_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_groups[0].subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationSubnetGroups AWS API Documentation
    #
    # @overload describe_replication_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_replication_subnet_groups(params = {}, options = {})
      req = build_request(:describe_replication_subnet_groups, params)
      req.send_request(options)
    end

    # Returns the task assessment results from Amazon S3. This action always
    # returns the latest results.
    #
    # @option params [String] :replication_task_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   task. When this input parameter is specified, the API returns only one
    #   result and ignore the values of the `MaxRecords` and `Marker`
    #   parameters.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationTaskAssessmentResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#bucket_name #bucket_name} => String
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#replication_task_assessment_results #replication_task_assessment_results} => Array&lt;Types::ReplicationTaskAssessmentResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_assessment_results({
    #     replication_task_arn: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.bucket_name #=> String
    #   resp.replication_task_assessment_results #=> Array
    #   resp.replication_task_assessment_results[0].replication_task_identifier #=> String
    #   resp.replication_task_assessment_results[0].replication_task_arn #=> String
    #   resp.replication_task_assessment_results[0].replication_task_last_assessment_date #=> Time
    #   resp.replication_task_assessment_results[0].assessment_status #=> String
    #   resp.replication_task_assessment_results[0].assessment_results_file #=> String
    #   resp.replication_task_assessment_results[0].assessment_results #=> String
    #   resp.replication_task_assessment_results[0].s3_object_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentResults AWS API Documentation
    #
    # @overload describe_replication_task_assessment_results(params = {})
    # @param [Hash] params ({})
    def describe_replication_task_assessment_results(params = {}, options = {})
      req = build_request(:describe_replication_task_assessment_results, params)
      req.send_request(options)
    end

    # Returns a paginated list of premigration assessment runs based on
    # filter settings.
    #
    # These filter settings can specify a combination of premigration
    # assessment runs, migration tasks, replication instances, and
    # assessment run status values.
    #
    # <note markdown="1"> This operation doesn't return information about individual
    # assessments. For this information, see the
    # `DescribeReplicationTaskIndividualAssessments` operation.
    #
    #  </note>
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the premigration assessment runs described in the
    #   form of key-value pairs.
    #
    #   Valid filter names: `replication-task-assessment-run-arn`,
    #   `replication-task-arn`, `replication-instance-arn`, `status`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationTaskAssessmentRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTaskAssessmentRunsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTaskAssessmentRunsResponse#replication_task_assessment_runs #replication_task_assessment_runs} => Array&lt;Types::ReplicationTaskAssessmentRun&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_assessment_runs({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_task_assessment_runs #=> Array
    #   resp.replication_task_assessment_runs[0].replication_task_assessment_run_arn #=> String
    #   resp.replication_task_assessment_runs[0].replication_task_arn #=> String
    #   resp.replication_task_assessment_runs[0].status #=> String
    #   resp.replication_task_assessment_runs[0].replication_task_assessment_run_creation_date #=> Time
    #   resp.replication_task_assessment_runs[0].assessment_progress.individual_assessment_count #=> Integer
    #   resp.replication_task_assessment_runs[0].assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.replication_task_assessment_runs[0].last_failure_message #=> String
    #   resp.replication_task_assessment_runs[0].service_access_role_arn #=> String
    #   resp.replication_task_assessment_runs[0].result_location_bucket #=> String
    #   resp.replication_task_assessment_runs[0].result_location_folder #=> String
    #   resp.replication_task_assessment_runs[0].result_encryption_mode #=> String
    #   resp.replication_task_assessment_runs[0].result_kms_key_arn #=> String
    #   resp.replication_task_assessment_runs[0].assessment_run_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentRuns AWS API Documentation
    #
    # @overload describe_replication_task_assessment_runs(params = {})
    # @param [Hash] params ({})
    def describe_replication_task_assessment_runs(params = {}, options = {})
      req = build_request(:describe_replication_task_assessment_runs, params)
      req.send_request(options)
    end

    # Returns a paginated list of individual assessments based on filter
    # settings.
    #
    # These filter settings can specify a combination of premigration
    # assessment runs, migration tasks, and assessment status values.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the individual assessments described in the form of
    #   key-value pairs.
    #
    #   Valid filter names: `replication-task-assessment-run-arn`,
    #   `replication-task-arn`, `status`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationTaskIndividualAssessmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTaskIndividualAssessmentsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTaskIndividualAssessmentsResponse#replication_task_individual_assessments #replication_task_individual_assessments} => Array&lt;Types::ReplicationTaskIndividualAssessment&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_individual_assessments({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_task_individual_assessments #=> Array
    #   resp.replication_task_individual_assessments[0].replication_task_individual_assessment_arn #=> String
    #   resp.replication_task_individual_assessments[0].replication_task_assessment_run_arn #=> String
    #   resp.replication_task_individual_assessments[0].individual_assessment_name #=> String
    #   resp.replication_task_individual_assessments[0].status #=> String
    #   resp.replication_task_individual_assessments[0].replication_task_individual_assessment_start_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskIndividualAssessments AWS API Documentation
    #
    # @overload describe_replication_task_individual_assessments(params = {})
    # @param [Hash] params ({})
    def describe_replication_task_individual_assessments(params = {}, options = {})
      req = build_request(:describe_replication_task_individual_assessments, params)
      req.send_request(options)
    end

    # Returns information about replication tasks for your account in the
    # current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to replication tasks.
    #
    #   Valid filter names: replication-task-arn \| replication-task-id \|
    #   migration-type \| endpoint-arn \| replication-instance-arn
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :without_settings
    #   An option to set to avoid returning information about settings. Use
    #   this to reduce overhead when setting information is too large. To use
    #   this option, choose `true`; otherwise, choose `false` (the default).
    #
    # @return [Types::DescribeReplicationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTasksResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTasksResponse#replication_tasks #replication_tasks} => Array&lt;Types::ReplicationTask&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe replication tasks
    #
    #   # Returns information about replication tasks for your account in the current region.
    #
    #   resp = client.describe_replication_tasks({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_tasks: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_tasks({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     without_settings: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_tasks #=> Array
    #   resp.replication_tasks[0].replication_task_identifier #=> String
    #   resp.replication_tasks[0].source_endpoint_arn #=> String
    #   resp.replication_tasks[0].target_endpoint_arn #=> String
    #   resp.replication_tasks[0].replication_instance_arn #=> String
    #   resp.replication_tasks[0].migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_tasks[0].table_mappings #=> String
    #   resp.replication_tasks[0].replication_task_settings #=> String
    #   resp.replication_tasks[0].status #=> String
    #   resp.replication_tasks[0].last_failure_message #=> String
    #   resp.replication_tasks[0].stop_reason #=> String
    #   resp.replication_tasks[0].replication_task_creation_date #=> Time
    #   resp.replication_tasks[0].replication_task_start_date #=> Time
    #   resp.replication_tasks[0].cdc_start_position #=> String
    #   resp.replication_tasks[0].cdc_stop_position #=> String
    #   resp.replication_tasks[0].recovery_checkpoint #=> String
    #   resp.replication_tasks[0].replication_task_arn #=> String
    #   resp.replication_tasks[0].replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_loading #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_queued #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_errored #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_tasks[0].replication_task_stats.start_date #=> Time
    #   resp.replication_tasks[0].replication_task_stats.stop_date #=> Time
    #   resp.replication_tasks[0].replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_tasks[0].replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_tasks[0].task_data #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * replication_task_deleted
    #   * replication_task_ready
    #   * replication_task_running
    #   * replication_task_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasks AWS API Documentation
    #
    # @overload describe_replication_tasks(params = {})
    # @param [Hash] params ({})
    def describe_replication_tasks(params = {}, options = {})
      req = build_request(:describe_replication_tasks, params)
      req.send_request(options)
    end

    # Returns information about the schema for the specified endpoint.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSchemasResponse#marker #marker} => String
    #   * {Types::DescribeSchemasResponse#schemas #schemas} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe schemas
    #
    #   # Returns information about the schema for the specified endpoint.
    #
    #   resp = client.describe_schemas({
    #     endpoint_arn: "", 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     schemas: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schemas({
    #     endpoint_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeSchemas AWS API Documentation
    #
    # @overload describe_schemas(params = {})
    # @param [Hash] params ({})
    def describe_schemas(params = {}, options = {})
      req = build_request(:describe_schemas, params)
      req.send_request(options)
    end

    # Returns table statistics on the database migration task, including
    # table name, rows inserted, rows updated, and rows deleted.
    #
    # Note that the "last updated" column the DMS console only indicates
    # the time that AWS DMS last updated the table statistics record for a
    # table. It does not indicate the time of the last update to the table.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 500.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to table statistics.
    #
    #   Valid filter names: schema-name \| table-name \| table-state
    #
    #   A combination of filters creates an AND condition where each record
    #   matches all specified filters.
    #
    # @return [Types::DescribeTableStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableStatisticsResponse#replication_task_arn #replication_task_arn} => String
    #   * {Types::DescribeTableStatisticsResponse#table_statistics #table_statistics} => Array&lt;Types::TableStatistics&gt;
    #   * {Types::DescribeTableStatisticsResponse#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe table statistics
    #
    #   # Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows
    #   # deleted.
    #
    #   resp = client.describe_table_statistics({
    #     marker: "", 
    #     max_records: 123, 
    #     replication_task_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_task_arn: "", 
    #     table_statistics: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_statistics({
    #     replication_task_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_arn #=> String
    #   resp.table_statistics #=> Array
    #   resp.table_statistics[0].schema_name #=> String
    #   resp.table_statistics[0].table_name #=> String
    #   resp.table_statistics[0].inserts #=> Integer
    #   resp.table_statistics[0].deletes #=> Integer
    #   resp.table_statistics[0].updates #=> Integer
    #   resp.table_statistics[0].ddls #=> Integer
    #   resp.table_statistics[0].full_load_rows #=> Integer
    #   resp.table_statistics[0].full_load_condtnl_chk_failed_rows #=> Integer
    #   resp.table_statistics[0].full_load_error_rows #=> Integer
    #   resp.table_statistics[0].full_load_start_time #=> Time
    #   resp.table_statistics[0].full_load_end_time #=> Time
    #   resp.table_statistics[0].full_load_reloaded #=> Boolean
    #   resp.table_statistics[0].last_update_time #=> Time
    #   resp.table_statistics[0].table_state #=> String
    #   resp.table_statistics[0].validation_pending_records #=> Integer
    #   resp.table_statistics[0].validation_failed_records #=> Integer
    #   resp.table_statistics[0].validation_suspended_records #=> Integer
    #   resp.table_statistics[0].validation_state #=> String
    #   resp.table_statistics[0].validation_state_details #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeTableStatistics AWS API Documentation
    #
    # @overload describe_table_statistics(params = {})
    # @param [Hash] params ({})
    def describe_table_statistics(params = {}, options = {})
      req = build_request(:describe_table_statistics, params)
      req.send_request(options)
    end

    # Uploads the specified certificate.
    #
    # @option params [required, String] :certificate_identifier
    #   A customer-assigned name for the certificate. Identifiers must begin
    #   with a letter and must contain only ASCII letters, digits, and
    #   hyphens. They can't end with a hyphen or contain two consecutive
    #   hyphens.
    #
    # @option params [String] :certificate_pem
    #   The contents of a `.pem` file, which contains an X.509 certificate.
    #
    # @option params [String, StringIO, File] :certificate_wallet
    #   The location of an imported Oracle Wallet certificate for use with
    #   SSL.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the certificate.
    #
    # @return [Types::ImportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportCertificateResponse#certificate #certificate} => Types::Certificate
    #
    #
    # @example Example: Import certificate
    #
    #   # Uploads the specified certificate.
    #
    #   resp = client.import_certificate({
    #     certificate_identifier: "", 
    #     certificate_pem: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate({
    #     certificate_identifier: "String", # required
    #     certificate_pem: "String",
    #     certificate_wallet: "data",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_identifier #=> String
    #   resp.certificate.certificate_creation_date #=> Time
    #   resp.certificate.certificate_pem #=> String
    #   resp.certificate.certificate_wallet #=> String
    #   resp.certificate.certificate_arn #=> String
    #   resp.certificate.certificate_owner #=> String
    #   resp.certificate.valid_from_date #=> Time
    #   resp.certificate.valid_to_date #=> Time
    #   resp.certificate.signing_algorithm #=> String
    #   resp.certificate.key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificate AWS API Documentation
    #
    # @overload import_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate(params = {}, options = {})
      req = build_request(:import_certificate, params)
      req.send_request(options)
    end

    # Lists all metadata tags attached to an AWS DMS resource, including
    # replication instance, endpoint, security group, and migration task.
    # For more information, see [ `Tag` ][1] data type description.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the AWS
    #   DMS resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: List tags for resource
    #
    #   # Lists all tags for an AWS DMS resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_list: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies the specified endpoint.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [String] :endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a letter
    #   and must contain only ASCII letters, digits, and hyphens. They can't
    #   end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #
    # @option params [String] :engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndpointType, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`, `"s3"`,
    #   `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"documentdb"`,
    #   `"sqlserver"`, and `"neptune"`.
    #
    # @option params [String] :username
    #   The user name to be used to login to the endpoint database.
    #
    # @option params [String] :password
    #   The password to be used to login to the endpoint database.
    #
    # @option params [String] :server_name
    #   The name of the server where the endpoint database resides.
    #
    # @option params [Integer] :port
    #   The port used by the endpoint database.
    #
    # @option params [String] :database_name
    #   The name of the endpoint database.
    #
    # @option params [String] :extra_connection_attributes
    #   Additional attributes associated with the connection. To reset this
    #   parameter, pass the empty string ("") as an argument.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #
    # @option params [String] :ssl_mode
    #   The SSL mode used to connect to the endpoint. The default value is
    #   `none`.
    #
    # @option params [String] :service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role you want to
    #   use to modify the endpoint.
    #
    # @option params [String] :external_table_definition
    #   The external table definition.
    #
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   information about other available settings, see [Using Object Mapping
    #   to Migrate Data to DynamoDB][1] in the *AWS Database Migration Service
    #   User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #
    # @option params [Types::S3Settings] :s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring
    #
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   The settings in JSON format for the DMS transfer type of source
    #   endpoint.
    #
    #   Attributes include the following:
    #
    #   * serviceAccessRoleArn - The AWS Identity and Access Management (IAM)
    #     role that has permission to access the Amazon S3 bucket.
    #
    #   * BucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress the
    #     target files. Either set this parameter to NONE (the default) or
    #     don't use it to leave the files uncompressed.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string`
    #
    #   JSON syntax for these settings is as follows: `\{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"|"gzip" \} `
    #
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the configuration
    #   properties section in [ Using MongoDB as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #
    # @option params [Types::KinesisSettings] :kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using Amazon Kinesis Data Streams as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html
    #
    # @option params [Types::KafkaSettings] :kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For more
    #   information about the available settings, see [Using Apache Kafka as a
    #   Target for AWS Database Migration Service][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html
    #
    # @option params [Types::ElasticsearchSettings] :elasticsearch_settings
    #   Settings in JSON format for the target Elasticsearch endpoint. For
    #   more information about the available settings, see [Extra Connection
    #   Attributes When Using Elasticsearch as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #
    # @option params [Types::NeptuneSettings] :neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   Endpoint Settings for Amazon Neptune as a Target][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings
    #
    # @option params [Types::RedshiftSettings] :redshift_settings
    #   Provides information that defines an Amazon Redshift endpoint.
    #
    # @option params [Types::PostgreSQLSettings] :postgre_sql_settings
    #   Settings in JSON format for the source and target PostgreSQL endpoint.
    #   For information about other available settings, see [Extra connection
    #   attributes when using PostgreSQL as a source for AWS DMS][1] and [
    #   Extra connection attributes when using PostgreSQL as a target for AWS
    #   DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.ConnectionAttrib
    #
    # @option params [Types::MySQLSettings] :my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using MySQL as a source for AWS DMS][1] and [Extra
    #   connection attributes when using a MySQL-compatible database as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.ConnectionAttrib
    #
    # @option params [Types::OracleSettings] :oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Oracle as a source for AWS DMS][1] and [ Extra
    #   connection attributes when using Oracle as a target for AWS DMS][2] in
    #   the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.ConnectionAttrib
    #
    # @option params [Types::SybaseSettings] :sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra connection
    #   attributes when using SAP ASE as a source for AWS DMS][1] and [Extra
    #   connection attributes when using SAP ASE as a target for AWS DMS][2]
    #   in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.ConnectionAttrib
    #
    # @option params [Types::MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL Server
    #   endpoint. For information about other available settings, see [Extra
    #   connection attributes when using SQL Server as a source for AWS
    #   DMS][1] and [ Extra connection attributes when using SQL Server as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.ConnectionAttrib
    #
    # @option params [Types::IBMDb2Settings] :ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for AWS DMS][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.ConnectionAttrib
    #
    # @return [Types::ModifyEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Modify endpoint
    #
    #   # Modifies the specified endpoint.
    #
    #   resp = client.modify_endpoint({
    #     certificate_arn: "", 
    #     database_name: "", 
    #     endpoint_arn: "", 
    #     endpoint_identifier: "", 
    #     endpoint_type: "source", 
    #     engine_name: "", 
    #     extra_connection_attributes: "", 
    #     password: "", 
    #     port: 123, 
    #     server_name: "", 
    #     ssl_mode: "require", 
    #     username: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_endpoint({
    #     endpoint_arn: "String", # required
    #     endpoint_identifier: "String",
    #     endpoint_type: "source", # accepts source, target
    #     engine_name: "String",
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     certificate_arn: "String",
    #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none", # accepts none, gzip
    #       encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #       server_side_encryption_kms_key_id: "String",
    #       data_format: "csv", # accepts csv, parquet
    #       encoding_type: "plain", # accepts plain, plain-dictionary, rle-dictionary
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: "parquet-1-0", # accepts parquet-1-0, parquet-2-0
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: "String",
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: "YYYYMMDD", # accepts YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, DDMMYYYY
    #       date_partition_delimiter: "SLASH", # accepts SLASH, UNDERSCORE, DASH, NONE
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String",
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no", # accepts no, password
    #       auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #       nesting_level: "none", # accepts none, one
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #     },
    #     kinesis_settings: {
    #       stream_arn: "String",
    #       message_format: "json", # accepts json, json-unformatted
    #       service_access_role_arn: "String",
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #     },
    #     kafka_settings: {
    #       broker: "String",
    #       topic: "String",
    #       message_format: "json", # accepts json, json-unformatted
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: "String", # required
    #       endpoint_uri: "String", # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1,
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: "String",
    #       s3_bucket_name: "String", # required
    #       s3_bucket_folder: "String", # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false,
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: "String",
    #       date_format: "String",
    #       empty_as_null: false,
    #       encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: "SecretString",
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: "String",
    #       replace_chars: "String",
    #       server_name: "String",
    #       service_access_role_arn: "String",
    #       server_side_encryption_kms_key_id: "String",
    #       time_format: "String",
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: "String",
    #       write_buffer_size: 1,
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: "String",
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: "String",
    #       ddl_artifacts_schema: "String",
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       slot_name: "String",
    #     },
    #     my_sql_settings: {
    #       after_connect_script: "String",
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database", # accepts specific-database, multiple-databases
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: "String",
    #       use_path_prefix: "String",
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: "SecretString",
    #       asm_server: "String",
    #       asm_user: "String",
    #       char_length_semantics: "default", # accepts default, char, byte
    #       database_name: "String",
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: "SecretString",
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: "SecretString",
    #       security_db_encryption_name: "String",
    #       server_name: "String",
    #       username: "String",
    #     },
    #     sybase_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: "String",
    #       control_tables_file_group: "String",
    #       password: "SecretString",
    #       read_backup_only: false,
    #       safeguard_policy: "rely-on-sql-server-replication-agent", # accepts rely-on-sql-server-replication-agent, exclusive-automatic-truncation, shared-automatic-truncation
    #       server_name: "String",
    #       username: "String",
    #       use_bcp_full_load: false,
    #     },
    #     ibm_db_2_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       set_data_capture_changes: false,
    #       current_lsn: "String",
    #       max_k_bytes_per_read: 1,
    #       username: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.s3_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.s3_settings.data_format #=> String, one of "csv", "parquet"
    #   resp.endpoint.s3_settings.encoding_type #=> String, one of "plain", "plain-dictionary", "rle-dictionary"
    #   resp.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.endpoint.s3_settings.parquet_version #=> String, one of "parquet-1-0", "parquet-2-0"
    #   resp.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.endpoint.s3_settings.date_partition_sequence #=> String, one of "YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"
    #   resp.endpoint.s3_settings.date_partition_delimiter #=> String, one of "SLASH", "UNDERSCORE", "DASH", "NONE"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.endpoint.kinesis_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.kafka_settings.broker #=> String
    #   resp.endpoint.kafka_settings.topic #=> String
    #   resp.endpoint.kafka_settings.message_format #=> String, one of "json", "json-unformatted"
    #   resp.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.endpoint.redshift_settings.bucket_name #=> String
    #   resp.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.endpoint.redshift_settings.database_name #=> String
    #   resp.endpoint.redshift_settings.date_format #=> String
    #   resp.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.endpoint.redshift_settings.encryption_mode #=> String, one of "sse-s3", "sse-kms"
    #   resp.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.endpoint.redshift_settings.password #=> String
    #   resp.endpoint.redshift_settings.port #=> Integer
    #   resp.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.endpoint.redshift_settings.replace_chars #=> String
    #   resp.endpoint.redshift_settings.server_name #=> String
    #   resp.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.endpoint.redshift_settings.time_format #=> String
    #   resp.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.endpoint.redshift_settings.username #=> String
    #   resp.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.postgre_sql_settings.password #=> String
    #   resp.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.endpoint.postgre_sql_settings.username #=> String
    #   resp.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.endpoint.my_sql_settings.database_name #=> String
    #   resp.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.endpoint.my_sql_settings.target_db_type #=> String, one of "specific-database", "multiple-databases"
    #   resp.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.endpoint.my_sql_settings.password #=> String
    #   resp.endpoint.my_sql_settings.port #=> Integer
    #   resp.endpoint.my_sql_settings.server_name #=> String
    #   resp.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.endpoint.my_sql_settings.username #=> String
    #   resp.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.endpoint.oracle_settings.asm_password #=> String
    #   resp.endpoint.oracle_settings.asm_server #=> String
    #   resp.endpoint.oracle_settings.asm_user #=> String
    #   resp.endpoint.oracle_settings.char_length_semantics #=> String, one of "default", "char", "byte"
    #   resp.endpoint.oracle_settings.database_name #=> String
    #   resp.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.endpoint.oracle_settings.password #=> String
    #   resp.endpoint.oracle_settings.port #=> Integer
    #   resp.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.endpoint.oracle_settings.server_name #=> String
    #   resp.endpoint.oracle_settings.username #=> String
    #   resp.endpoint.sybase_settings.database_name #=> String
    #   resp.endpoint.sybase_settings.password #=> String
    #   resp.endpoint.sybase_settings.port #=> Integer
    #   resp.endpoint.sybase_settings.server_name #=> String
    #   resp.endpoint.sybase_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of "rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"
    #   resp.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.database_name #=> String
    #   resp.endpoint.ibm_db_2_settings.password #=> String
    #   resp.endpoint.ibm_db_2_settings.port #=> Integer
    #   resp.endpoint.ibm_db_2_settings.server_name #=> String
    #   resp.endpoint.ibm_db_2_settings.set_data_capture_changes #=> Boolean
    #   resp.endpoint.ibm_db_2_settings.current_lsn #=> String
    #   resp.endpoint.ibm_db_2_settings.max_k_bytes_per_read #=> Integer
    #   resp.endpoint.ibm_db_2_settings.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEndpoint AWS API Documentation
    #
    # @overload modify_endpoint(params = {})
    # @param [Hash] params ({})
    def modify_endpoint(params = {}, options = {})
      req = build_request(:modify_endpoint, params)
      req.send_request(options)
    end

    # Modifies an existing AWS DMS event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the AWS DMS event notification subscription to be
    #   modified.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates the events you want to
    #   subscribe to.
    #
    #   Valid values: replication-instance \| replication-task
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. Use the `DescribeEventCategories` action to see a list
    #   of event categories.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #
    # @return [Types::ModifyEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Modifies the replication instance to apply new settings. You can
    # change one or more parameters by specifying these parameters and the
    # new values in the request.
    #
    # Some settings are applied during the maintenance window.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage (in gigabytes) to be allocated for the
    #   replication instance.
    #
    # @option params [Boolean] :apply_immediately
    #   Indicates whether the changes should be applied immediately or during
    #   the next maintenance window.
    #
    # @option params [String] :replication_instance_class
    #   The compute and memory capacity of the replication instance as defined
    #   for the specified replication instance class. For example to specify
    #   the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the available
    #   replication instance classes, see [ Selecting the right AWS DMS
    #   replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing the
    #   replication instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter does
    #   not result in an outage, except in the following situation, and the
    #   change is asynchronously applied as soon as possible. If moving this
    #   window to the current time, there must be at least 30 minutes between
    #   the current time and end of the window to ensure pending changes are
    #   applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #
    # @option params [Boolean] :multi_az
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #
    # @option params [String] :engine_version
    #   The engine version number of the replication instance.
    #
    #   When modifying a major engine version of an instance, also set
    #   `AllowMajorVersionUpgrade` to `true`.
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter does not result in an outage, and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This parameter must be set to `true` when specifying a value for the
    #   `EngineVersion` parameter that is a different major version than the
    #   replication instance's current version.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   A value that indicates that minor version upgrades are applied
    #   automatically to the replication instance during the maintenance
    #   window. Changing this parameter doesn't result in an outage, except
    #   in the case dsecribed following. The change is asynchronously applied
    #   as soon as possible.
    #
    #   An outage does result if these factors apply:
    #
    #   * This parameter is set to `true` during the maintenance window.
    #
    #   * A newer minor version is available.
    #
    #   * AWS DMS has enabled automatic patching for the given engine version.
    #
    # @option params [String] :replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    # @return [Types::ModifyReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Modify replication instance
    #
    #   # Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these
    #   # parameters and the new values in the request. Some settings are applied during the maintenance window.
    #
    #   resp = client.modify_replication_instance({
    #     allocated_storage: 123, 
    #     allow_major_version_upgrade: true, 
    #     apply_immediately: true, 
    #     auto_minor_version_upgrade: true, 
    #     engine_version: "1.5.0", 
    #     multi_az: true, 
    #     preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     replication_instance_class: "dms.t2.micro", 
    #     replication_instance_identifier: "test-rep-1", 
    #     vpc_security_group_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "available", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_instance({
    #     replication_instance_arn: "String", # required
    #     allocated_storage: 1,
    #     apply_immediately: false,
    #     replication_instance_class: "String",
    #     vpc_security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     replication_instance_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #   resp.replication_instance.dns_name_servers #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationInstance AWS API Documentation
    #
    # @overload modify_replication_instance(params = {})
    # @param [Hash] params ({})
    def modify_replication_instance(params = {}, options = {})
      req = build_request(:modify_replication_instance, params)
      req.send_request(options)
    end

    # Modifies the settings for the specified replication subnet group.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The name of the replication instance subnet group.
    #
    # @option params [String] :replication_subnet_group_description
    #   A description for the replication instance subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs.
    #
    # @return [Types::ModifyReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationSubnetGroupResponse#replication_subnet_group #replication_subnet_group} => Types::ReplicationSubnetGroup
    #
    #
    # @example Example: Modify replication subnet group
    #
    #   # Modifies the settings for the specified replication subnet group.
    #
    #   resp = client.modify_replication_subnet_group({
    #     replication_subnet_group_description: "", 
    #     replication_subnet_group_identifier: "", 
    #     subnet_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_subnet_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_subnet_group.vpc_id #=> String
    #   resp.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_subnet_group.subnets #=> Array
    #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationSubnetGroup AWS API Documentation
    #
    # @overload modify_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_replication_subnet_group(params = {}, options = {})
      req = build_request(:modify_replication_subnet_group, params)
      req.send_request(options)
    end

    # Modifies the specified replication task.
    #
    # You can't modify the task endpoints. The task must be stopped before
    # you can modify it.
    #
    # For more information about AWS DMS tasks, see [Working with Migration
    # Tasks][1] in the *AWS Database Migration Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [String] :replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain 1-255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :migration_type
    #   The migration type. Valid values: `full-load` \| `cdc` \|
    #   `full-load-and-cdc`
    #
    # @option params [String] :table_mappings
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with `file://`.
    #   When working with the DMS API, provide the JSON as the parameter
    #   value, for example: `--table-mappings file://mappingfile.json`
    #
    # @option params [String] :replication_task_settings
    #   JSON file that contains settings for the task, such as task metadata
    #   settings.
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated with
    #   the source endpoint. You can verify this by setting the `slotName`
    #   extra connection attribute to the name of this logical replication
    #   slot. For more information, see [Extra Connection Attributes When
    #   Using PostgreSQL as a Source for AWS DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
    #
    # @option params [String] :task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
    #
    # @return [Types::ModifyReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_task({
    #     replication_task_arn: "String", # required
    #     replication_task_identifier: "String",
    #     migration_type: "full-load", # accepts full-load, cdc, full-load-and-cdc
    #     table_mappings: "String",
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #     task_data: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationTask AWS API Documentation
    #
    # @overload modify_replication_task(params = {})
    # @param [Hash] params ({})
    def modify_replication_task(params = {}, options = {})
      req = build_request(:modify_replication_task, params)
      req.send_request(options)
    end

    # Reboots a replication instance. Rebooting results in a momentary
    # outage, until the replication instance becomes available again.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Boolean] :force_failover
    #   If this parameter is `true`, the reboot is conducted through a
    #   Multi-AZ failover. (If the instance isn't configured for Multi-AZ,
    #   then you can't specify `true`.)
    #
    # @return [Types::RebootReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_replication_instance({
    #     replication_instance_arn: "String", # required
    #     force_failover: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #   resp.replication_instance.dns_name_servers #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstance AWS API Documentation
    #
    # @overload reboot_replication_instance(params = {})
    # @param [Hash] params ({})
    def reboot_replication_instance(params = {}, options = {})
      req = build_request(:reboot_replication_instance, params)
      req.send_request(options)
    end

    # Populates the schema for the specified endpoint. This is an
    # asynchronous operation and can take several minutes. You can check the
    # status of this operation by calling the DescribeRefreshSchemasStatus
    # operation.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @return [Types::RefreshSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RefreshSchemasResponse#refresh_schemas_status #refresh_schemas_status} => Types::RefreshSchemasStatus
    #
    #
    # @example Example: Refresh schema
    #
    #   # Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can
    #   # check the status of this operation by calling the describe-refresh-schemas-status operation.
    #
    #   resp = client.refresh_schemas({
    #     endpoint_arn: "", 
    #     replication_instance_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     refresh_schemas_status: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_schemas({
    #     endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schemas_status.endpoint_arn #=> String
    #   resp.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
    #   resp.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.refresh_schemas_status.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemas AWS API Documentation
    #
    # @overload refresh_schemas(params = {})
    # @param [Hash] params ({})
    def refresh_schemas(params = {}, options = {})
      req = build_request(:refresh_schemas, params)
      req.send_request(options)
    end

    # Reloads the target database table with the source data.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [required, Array<Types::TableToReload>] :tables_to_reload
    #   The name and schema of the table to be reloaded.
    #
    # @option params [String] :reload_option
    #   Options for reload. Specify `data-reload` to reload the data and
    #   re-validate it if validation is enabled. Specify `validate-only` to
    #   re-validate the table. This option applies only when validation is
    #   enabled for the task.
    #
    #   Valid values: data-reload, validate-only
    #
    #   Default value is data-reload.
    #
    # @return [Types::ReloadTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReloadTablesResponse#replication_task_arn #replication_task_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reload_tables({
    #     replication_task_arn: "String", # required
    #     tables_to_reload: [ # required
    #       {
    #         schema_name: "String", # required
    #         table_name: "String", # required
    #       },
    #     ],
    #     reload_option: "data-reload", # accepts data-reload, validate-only
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadTables AWS API Documentation
    #
    # @overload reload_tables(params = {})
    # @param [Hash] params ({})
    def reload_tables(params = {}, options = {})
      req = build_request(:reload_tables, params)
      req.send_request(options)
    end

    # Removes metadata tags from an AWS DMS resource, including replication
    # instance, endpoint, security group, and migration task. For more
    # information, see [ `Tag` ][1] data type description.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html
    #
    # @option params [required, String] :resource_arn
    #   An AWS DMS resource from which you want to remove tag(s). The value
    #   for this parameter is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from resource
    #
    #   # Removes metadata tags from an AWS DMS resource.
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     tag_keys: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Starts the replication task.
    #
    # For more information about AWS DMS tasks, see [Working with Migration
    # Tasks ][1] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be started.
    #
    # @option params [required, String] :start_replication_task_type
    #   A type of replication task.
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated with
    #   the source endpoint. You can verify this by setting the `slotName`
    #   extra connection attribute to the name of this logical replication
    #   slot. For more information, see [Extra Connection Attributes When
    #   Using PostgreSQL as a Source for AWS DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
    #
    # @return [Types::StartReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Start replication task
    #
    #   # Starts the replication task.
    #
    #   resp = client.start_replication_task({
    #     cdc_start_time: Time.parse("2016-12-14T13:33:20Z"), 
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     start_replication_task_type: "start-replication", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task({
    #     replication_task_arn: "String", # required
    #     start_replication_task_type: "start-replication", # required, accepts start-replication, resume-processing, reload-target
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTask AWS API Documentation
    #
    # @overload start_replication_task(params = {})
    # @param [Hash] params ({})
    def start_replication_task(params = {}, options = {})
      req = build_request(:start_replication_task, params)
      req.send_request(options)
    end

    # Starts the replication task assessment for unsupported data types in
    # the source database.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @return [Types::StartReplicationTaskAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationTaskAssessmentResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task_assessment({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessment AWS API Documentation
    #
    # @overload start_replication_task_assessment(params = {})
    # @param [Hash] params ({})
    def start_replication_task_assessment(params = {}, options = {})
      req = build_request(:start_replication_task_assessment, params)
      req.send_request(options)
    end

    # Starts a new premigration assessment run for one or more individual
    # assessments of a migration task.
    #
    # The assessments that you can specify depend on the source and target
    # database engine and the migration type defined for the given task. To
    # run this operation, your migration task must already be created. After
    # you run this operation, you can review the status of each individual
    # assessment. You can also run the migration task manually after the
    # assessment run and its individual assessments complete.
    #
    # @option params [required, String] :replication_task_arn
    #   Amazon Resource Name (ARN) of the migration task associated with the
    #   premigration assessment run that you want to start.
    #
    # @option params [required, String] :service_access_role_arn
    #   ARN of a service role needed to start the assessment run.
    #
    # @option params [required, String] :result_location_bucket
    #   Amazon S3 bucket where you want AWS DMS to store the results of this
    #   assessment run.
    #
    # @option params [String] :result_location_folder
    #   Folder within an Amazon S3 bucket where you want AWS DMS to store the
    #   results of this assessment run.
    #
    # @option params [String] :result_encryption_mode
    #   Encryption mode that you can specify to encrypt the results of this
    #   assessment run. If you don't specify this request parameter, AWS DMS
    #   stores the assessment run results without encryption. You can specify
    #   one of the options following:
    #
    #   * `"SSE_S3"` – The server-side encryption provided as a default by
    #     Amazon S3.
    #
    #   * `"SSE_KMS"` – AWS Key Management Service (AWS KMS) encryption. This
    #     encryption can use either a custom KMS encryption key that you
    #     specify or the default KMS encryption key that DMS provides.
    #
    # @option params [String] :result_kms_key_arn
    #   ARN of a custom KMS encryption key that you specify when you set
    #   `ResultEncryptionMode` to `"SSE_KMS`".
    #
    # @option params [required, String] :assessment_run_name
    #   Unique name to identify the assessment run.
    #
    # @option params [Array<String>] :include_only
    #   Space-separated list of names for specific individual assessments that
    #   you want to include. These names come from the default list of
    #   individual assessments that AWS DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `IncludeOnly` if you also set a value for
    #   `Exclude` in the API operation.
    #
    #    To identify the names of the default individual assessments that AWS
    #   DMS supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #
    # @option params [Array<String>] :exclude
    #   Space-separated list of names for specific individual assessments that
    #   you want to exclude. These names come from the default list of
    #   individual assessments that AWS DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `Exclude` if you also set a value for
    #   `IncludeOnly` in the API operation.
    #
    #    To identify the names of the default individual assessments that AWS
    #   DMS supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #
    # @return [Types::StartReplicationTaskAssessmentRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationTaskAssessmentRunResponse#replication_task_assessment_run #replication_task_assessment_run} => Types::ReplicationTaskAssessmentRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task_assessment_run({
    #     replication_task_arn: "String", # required
    #     service_access_role_arn: "String", # required
    #     result_location_bucket: "String", # required
    #     result_location_folder: "String",
    #     result_encryption_mode: "String",
    #     result_kms_key_arn: "String",
    #     assessment_run_name: "String", # required
    #     include_only: ["String"],
    #     exclude: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.replication_task_assessment_run.status #=> String
    #   resp.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.replication_task_assessment_run.last_failure_message #=> String
    #   resp.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.replication_task_assessment_run.result_location_folder #=> String
    #   resp.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.replication_task_assessment_run.assessment_run_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentRun AWS API Documentation
    #
    # @overload start_replication_task_assessment_run(params = {})
    # @param [Hash] params ({})
    def start_replication_task_assessment_run(params = {}, options = {})
      req = build_request(:start_replication_task_assessment_run, params)
      req.send_request(options)
    end

    # Stops the replication task.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name(ARN) of the replication task to be stopped.
    #
    # @return [Types::StopReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Stop replication task
    #
    #   # Stops the replication task.
    #
    #   resp = client.stop_replication_task({
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication_task({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.replication_task.replication_task_stats.start_date #=> Time
    #   resp.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.replication_task.task_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTask AWS API Documentation
    #
    # @overload stop_replication_task(params = {})
    # @param [Hash] params ({})
    def stop_replication_task(params = {}, options = {})
      req = build_request(:stop_replication_task, params)
      req.send_request(options)
    end

    # Tests the connection between the replication instance and the
    # endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::TestConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Test conection
    #
    #   # Tests the connection between the replication instance and the endpoint.
    #
    #   resp = client.test_connection({
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_connection({
    #     replication_instance_arn: "String", # required
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.replication_instance_arn #=> String
    #   resp.connection.endpoint_arn #=> String
    #   resp.connection.status #=> String
    #   resp.connection.last_failure_message #=> String
    #   resp.connection.endpoint_identifier #=> String
    #   resp.connection.replication_instance_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnection AWS API Documentation
    #
    # @overload test_connection(params = {})
    # @param [Hash] params ({})
    def test_connection(params = {}, options = {})
      req = build_request(:test_connection, params)
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
      context[:gem_name] = 'aws-sdk-databasemigrationservice'
      context[:gem_version] = '1.45.0'
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
    # | waiter_name                    | params                                  | :delay   | :max_attempts |
    # | ------------------------------ | --------------------------------------- | -------- | ------------- |
    # | endpoint_deleted               | {Client#describe_endpoints}             | 5        | 60            |
    # | replication_instance_available | {Client#describe_replication_instances} | 60       | 60            |
    # | replication_instance_deleted   | {Client#describe_replication_instances} | 15       | 60            |
    # | replication_task_deleted       | {Client#describe_replication_tasks}     | 15       | 60            |
    # | replication_task_ready         | {Client#describe_replication_tasks}     | 15       | 60            |
    # | replication_task_running       | {Client#describe_replication_tasks}     | 15       | 60            |
    # | replication_task_stopped       | {Client#describe_replication_tasks}     | 15       | 60            |
    # | test_connection_succeeds       | {Client#describe_connections}           | 5        | 60            |
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
        endpoint_deleted: Waiters::EndpointDeleted,
        replication_instance_available: Waiters::ReplicationInstanceAvailable,
        replication_instance_deleted: Waiters::ReplicationInstanceDeleted,
        replication_task_deleted: Waiters::ReplicationTaskDeleted,
        replication_task_ready: Waiters::ReplicationTaskReady,
        replication_task_running: Waiters::ReplicationTaskRunning,
        replication_task_stopped: Waiters::ReplicationTaskStopped,
        test_connection_succeeds: Waiters::TestConnectionSucceeds
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
