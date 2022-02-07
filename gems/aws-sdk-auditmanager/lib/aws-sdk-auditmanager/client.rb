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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:auditmanager)

module Aws::AuditManager
  # An API client for AuditManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AuditManager::Client.new(
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

    @identifier = :auditmanager

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
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

    # Associates an evidence folder to an assessment report in a Audit
    # Manager assessment.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :evidence_folder_id
    #   The identifier for the folder that the evidence is stored in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_assessment_report_evidence_folder({
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssociateAssessmentReportEvidenceFolder AWS API Documentation
    #
    # @overload associate_assessment_report_evidence_folder(params = {})
    # @param [Hash] params ({})
    def associate_assessment_report_evidence_folder(params = {}, options = {})
      req = build_request(:associate_assessment_report_evidence_folder, params)
      req.send_request(options)
    end

    # Associates a list of evidence to an assessment report in an Audit
    # Manager assessment.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :evidence_folder_id
    #   The identifier for the folder that the evidence is stored in.
    #
    # @option params [required, Array<String>] :evidence_ids
    #   The list of evidence identifiers.
    #
    # @return [Types::BatchAssociateAssessmentReportEvidenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateAssessmentReportEvidenceResponse#evidence_ids #evidence_ids} => Array&lt;String&gt;
    #   * {Types::BatchAssociateAssessmentReportEvidenceResponse#errors #errors} => Array&lt;Types::AssessmentReportEvidenceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_assessment_report_evidence({
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_ids: ["UUID"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence_ids #=> Array
    #   resp.evidence_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].evidence_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchAssociateAssessmentReportEvidence AWS API Documentation
    #
    # @overload batch_associate_assessment_report_evidence(params = {})
    # @param [Hash] params ({})
    def batch_associate_assessment_report_evidence(params = {}, options = {})
      req = build_request(:batch_associate_assessment_report_evidence, params)
      req.send_request(options)
    end

    # Creates a batch of delegations for an assessment in Audit Manager.
    #
    # @option params [required, Array<Types::CreateDelegationRequest>] :create_delegation_requests
    #   The API request to batch create delegations in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @return [Types::BatchCreateDelegationByAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateDelegationByAssessmentResponse#delegations #delegations} => Array&lt;Types::Delegation&gt;
    #   * {Types::BatchCreateDelegationByAssessmentResponse#errors #errors} => Array&lt;Types::BatchCreateDelegationByAssessmentError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_delegation_by_assessment({
    #     create_delegation_requests: [ # required
    #       {
    #         comment: "DelegationComment",
    #         control_set_id: "ControlSetId",
    #         role_arn: "IamArn",
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #       },
    #     ],
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delegations #=> Array
    #   resp.delegations[0].id #=> String
    #   resp.delegations[0].assessment_name #=> String
    #   resp.delegations[0].assessment_id #=> String
    #   resp.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.delegations[0].role_arn #=> String
    #   resp.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.delegations[0].creation_time #=> Time
    #   resp.delegations[0].last_updated #=> Time
    #   resp.delegations[0].control_set_id #=> String
    #   resp.delegations[0].comment #=> String
    #   resp.delegations[0].created_by #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].create_delegation_request.comment #=> String
    #   resp.errors[0].create_delegation_request.control_set_id #=> String
    #   resp.errors[0].create_delegation_request.role_arn #=> String
    #   resp.errors[0].create_delegation_request.role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchCreateDelegationByAssessment AWS API Documentation
    #
    # @overload batch_create_delegation_by_assessment(params = {})
    # @param [Hash] params ({})
    def batch_create_delegation_by_assessment(params = {}, options = {})
      req = build_request(:batch_create_delegation_by_assessment, params)
      req.send_request(options)
    end

    # Deletes a batch of delegations for an assessment in Audit Manager.
    #
    # @option params [required, Array<String>] :delegation_ids
    #   The identifiers for the delegations.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @return [Types::BatchDeleteDelegationByAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDelegationByAssessmentResponse#errors #errors} => Array&lt;Types::BatchDeleteDelegationByAssessmentError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_delegation_by_assessment({
    #     delegation_ids: ["UUID"], # required
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].delegation_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDeleteDelegationByAssessment AWS API Documentation
    #
    # @overload batch_delete_delegation_by_assessment(params = {})
    # @param [Hash] params ({})
    def batch_delete_delegation_by_assessment(params = {}, options = {})
      req = build_request(:batch_delete_delegation_by_assessment, params)
      req.send_request(options)
    end

    # Disassociates a list of evidence from an assessment report in Audit
    # Manager.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :evidence_folder_id
    #   The identifier for the folder that the evidence is stored in.
    #
    # @option params [required, Array<String>] :evidence_ids
    #   The list of evidence identifiers.
    #
    # @return [Types::BatchDisassociateAssessmentReportEvidenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateAssessmentReportEvidenceResponse#evidence_ids #evidence_ids} => Array&lt;String&gt;
    #   * {Types::BatchDisassociateAssessmentReportEvidenceResponse#errors #errors} => Array&lt;Types::AssessmentReportEvidenceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_assessment_report_evidence({
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_ids: ["UUID"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence_ids #=> Array
    #   resp.evidence_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].evidence_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDisassociateAssessmentReportEvidence AWS API Documentation
    #
    # @overload batch_disassociate_assessment_report_evidence(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_assessment_report_evidence(params = {}, options = {})
      req = build_request(:batch_disassociate_assessment_report_evidence, params)
      req.send_request(options)
    end

    # Uploads one or more pieces of evidence to a control in an Audit
    # Manager assessment.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The identifier for the control set.
    #
    # @option params [required, String] :control_id
    #   The identifier for the control.
    #
    # @option params [required, Array<Types::ManualEvidence>] :manual_evidence
    #   The list of manual evidence objects.
    #
    # @return [Types::BatchImportEvidenceToAssessmentControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchImportEvidenceToAssessmentControlResponse#errors #errors} => Array&lt;Types::BatchImportEvidenceToAssessmentControlError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_import_evidence_to_assessment_control({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     manual_evidence: [ # required
    #       {
    #         s3_resource_path: "S3Url",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].manual_evidence.s3_resource_path #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchImportEvidenceToAssessmentControl AWS API Documentation
    #
    # @overload batch_import_evidence_to_assessment_control(params = {})
    # @param [Hash] params ({})
    def batch_import_evidence_to_assessment_control(params = {}, options = {})
      req = build_request(:batch_import_evidence_to_assessment_control, params)
      req.send_request(options)
    end

    # Creates an assessment in Audit Manager.
    #
    # @option params [required, String] :name
    #   The name of the assessment to be created.
    #
    # @option params [String] :description
    #   The optional description of the assessment to be created.
    #
    # @option params [required, Types::AssessmentReportsDestination] :assessment_reports_destination
    #   The assessment report storage destination for the assessment that's
    #   being created.
    #
    # @option params [required, Types::Scope] :scope
    #   The wrapper that contains the Amazon Web Services accounts and
    #   services that are in scope for the assessment.
    #
    # @option params [required, Array<Types::Role>] :roles
    #   The list of roles for the assessment.
    #
    # @option params [required, String] :framework_id
    #   The identifier for the framework that the assessment will be created
    #   from.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that are associated with the assessment.
    #
    # @return [Types::CreateAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssessmentResponse#assessment #assessment} => Types::Assessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment({
    #     name: "AssessmentName", # required
    #     description: "AssessmentDescription",
    #     assessment_reports_destination: { # required
    #       destination_type: "S3", # accepts S3
    #       destination: "S3Url",
    #     },
    #     scope: { # required
    #       aws_accounts: [
    #         {
    #           id: "AccountId",
    #           email_address: "EmailAddress",
    #           name: "AccountName",
    #         },
    #       ],
    #       aws_services: [
    #         {
    #           service_name: "AWSServiceName",
    #         },
    #       ],
    #     },
    #     roles: [ # required
    #       {
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #         role_arn: "IamArn",
    #       },
    #     ],
    #     framework_id: "UUID", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.arn #=> String
    #   resp.assessment.aws_account.id #=> String
    #   resp.assessment.aws_account.email_address #=> String
    #   resp.assessment.aws_account.name #=> String
    #   resp.assessment.metadata.name #=> String
    #   resp.assessment.metadata.id #=> String
    #   resp.assessment.metadata.description #=> String
    #   resp.assessment.metadata.compliance_type #=> String
    #   resp.assessment.metadata.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.assessment.metadata.scope.aws_accounts #=> Array
    #   resp.assessment.metadata.scope.aws_accounts[0].id #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].email_address #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].name #=> String
    #   resp.assessment.metadata.scope.aws_services #=> Array
    #   resp.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.assessment.metadata.roles #=> Array
    #   resp.assessment.metadata.roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.roles[0].role_arn #=> String
    #   resp.assessment.metadata.delegations #=> Array
    #   resp.assessment.metadata.delegations[0].id #=> String
    #   resp.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.assessment.metadata.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.assessment.metadata.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.assessment.metadata.delegations[0].comment #=> String
    #   resp.assessment.metadata.delegations[0].created_by #=> String
    #   resp.assessment.metadata.creation_time #=> Time
    #   resp.assessment.metadata.last_updated #=> Time
    #   resp.assessment.framework.id #=> String
    #   resp.assessment.framework.arn #=> String
    #   resp.assessment.framework.metadata.name #=> String
    #   resp.assessment.framework.metadata.description #=> String
    #   resp.assessment.framework.metadata.logo #=> String
    #   resp.assessment.framework.metadata.compliance_type #=> String
    #   resp.assessment.framework.control_sets #=> Array
    #   resp.assessment.framework.control_sets[0].id #=> String
    #   resp.assessment.framework.control_sets[0].description #=> String
    #   resp.assessment.framework.control_sets[0].status #=> String, one of "ACTIVE", "UNDER_REVIEW", "REVIEWED"
    #   resp.assessment.framework.control_sets[0].roles #=> Array
    #   resp.assessment.framework.control_sets[0].roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].roles[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].controls #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.assessment.framework.control_sets[0].controls[0].response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.assessment.framework.control_sets[0].controls[0].comments #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].delegations #=> Array
    #   resp.assessment.framework.control_sets[0].delegations[0].id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_name #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.framework.control_sets[0].delegations[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].delegations[0].creation_time #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].last_updated #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].control_set_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].comment #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].created_by #=> String
    #   resp.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessment AWS API Documentation
    #
    # @overload create_assessment(params = {})
    # @param [Hash] params ({})
    def create_assessment(params = {}, options = {})
      req = build_request(:create_assessment, params)
      req.send_request(options)
    end

    # Creates a custom framework in Audit Manager.
    #
    # @option params [required, String] :name
    #   The name of the new custom framework.
    #
    # @option params [String] :description
    #   An optional description for the new custom framework.
    #
    # @option params [String] :compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #
    # @option params [required, Array<Types::CreateAssessmentFrameworkControlSet>] :control_sets
    #   The control sets that are associated with the framework.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that are associated with the framework.
    #
    # @return [Types::CreateAssessmentFrameworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssessmentFrameworkResponse#framework #framework} => Types::Framework
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_framework({
    #     name: "FrameworkName", # required
    #     description: "FrameworkDescription",
    #     compliance_type: "ComplianceType",
    #     control_sets: [ # required
    #       {
    #         name: "ControlSetName", # required
    #         controls: [
    #           {
    #             id: "UUID", # required
    #           },
    #         ],
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.framework.arn #=> String
    #   resp.framework.id #=> String
    #   resp.framework.name #=> String
    #   resp.framework.type #=> String, one of "Standard", "Custom"
    #   resp.framework.compliance_type #=> String
    #   resp.framework.description #=> String
    #   resp.framework.logo #=> String
    #   resp.framework.control_sources #=> String
    #   resp.framework.control_sets #=> Array
    #   resp.framework.control_sets[0].id #=> String
    #   resp.framework.control_sets[0].name #=> String
    #   resp.framework.control_sets[0].controls #=> Array
    #   resp.framework.control_sets[0].controls[0].arn #=> String
    #   resp.framework.control_sets[0].controls[0].id #=> String
    #   resp.framework.control_sets[0].controls[0].type #=> String, one of "Standard", "Custom"
    #   resp.framework.control_sets[0].controls[0].name #=> String
    #   resp.framework.control_sets[0].controls[0].description #=> String
    #   resp.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources #=> Array
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.framework.control_sets[0].controls[0].tags #=> Hash
    #   resp.framework.control_sets[0].controls[0].tags["TagKey"] #=> String
    #   resp.framework.created_at #=> Time
    #   resp.framework.last_updated_at #=> Time
    #   resp.framework.created_by #=> String
    #   resp.framework.last_updated_by #=> String
    #   resp.framework.tags #=> Hash
    #   resp.framework.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentFramework AWS API Documentation
    #
    # @overload create_assessment_framework(params = {})
    # @param [Hash] params ({})
    def create_assessment_framework(params = {}, options = {})
      req = build_request(:create_assessment_framework, params)
      req.send_request(options)
    end

    # Creates an assessment report for the specified assessment.
    #
    # @option params [required, String] :name
    #   The name of the new assessment report.
    #
    # @option params [String] :description
    #   The description of the assessment report.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @return [Types::CreateAssessmentReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssessmentReportResponse#assessment_report #assessment_report} => Types::AssessmentReport
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_report({
    #     name: "AssessmentReportName", # required
    #     description: "AssessmentReportDescription",
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_report.id #=> String
    #   resp.assessment_report.name #=> String
    #   resp.assessment_report.description #=> String
    #   resp.assessment_report.aws_account_id #=> String
    #   resp.assessment_report.assessment_id #=> String
    #   resp.assessment_report.assessment_name #=> String
    #   resp.assessment_report.author #=> String
    #   resp.assessment_report.status #=> String, one of "COMPLETE", "IN_PROGRESS", "FAILED"
    #   resp.assessment_report.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentReport AWS API Documentation
    #
    # @overload create_assessment_report(params = {})
    # @param [Hash] params ({})
    def create_assessment_report(params = {}, options = {})
      req = build_request(:create_assessment_report, params)
      req.send_request(options)
    end

    # Creates a new custom control in Audit Manager.
    #
    # @option params [required, String] :name
    #   The name of the control.
    #
    # @option params [String] :description
    #   The description of the control.
    #
    # @option params [String] :testing_information
    #   The steps to follow to determine if the control is satisfied.
    #
    # @option params [String] :action_plan_title
    #   The title of the action plan for remediating the control.
    #
    # @option params [String] :action_plan_instructions
    #   The recommended actions to carry out if the control isn't fulfilled.
    #
    # @option params [required, Array<Types::CreateControlMappingSource>] :control_mapping_sources
    #   The data mapping sources for the control.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that are associated with the control.
    #
    # @return [Types::CreateControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateControlResponse#control #control} => Types::Control
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_control({
    #     name: "ControlName", # required
    #     description: "ControlDescription",
    #     testing_information: "TestingInformation",
    #     action_plan_title: "ActionPlanTitle",
    #     action_plan_instructions: "ActionPlanInstructions",
    #     control_mapping_sources: [ # required
    #       {
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #         source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #           keyword_value: "KeywordValue",
    #         },
    #         source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #         troubleshooting_text: "TroubleshootingText",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.control.arn #=> String
    #   resp.control.id #=> String
    #   resp.control.type #=> String, one of "Standard", "Custom"
    #   resp.control.name #=> String
    #   resp.control.description #=> String
    #   resp.control.testing_information #=> String
    #   resp.control.action_plan_title #=> String
    #   resp.control.action_plan_instructions #=> String
    #   resp.control.control_sources #=> String
    #   resp.control.control_mapping_sources #=> Array
    #   resp.control.control_mapping_sources[0].source_id #=> String
    #   resp.control.control_mapping_sources[0].source_name #=> String
    #   resp.control.control_mapping_sources[0].source_description #=> String
    #   resp.control.control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.control.control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.control.control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.control.created_at #=> Time
    #   resp.control.last_updated_at #=> Time
    #   resp.control.created_by #=> String
    #   resp.control.last_updated_by #=> String
    #   resp.control.tags #=> Hash
    #   resp.control.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateControl AWS API Documentation
    #
    # @overload create_control(params = {})
    # @param [Hash] params ({})
    def create_control(params = {}, options = {})
      req = build_request(:create_control, params)
      req.send_request(options)
    end

    # Deletes an assessment in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment({
    #     assessment_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessment AWS API Documentation
    #
    # @overload delete_assessment(params = {})
    # @param [Hash] params ({})
    def delete_assessment(params = {}, options = {})
      req = build_request(:delete_assessment, params)
      req.send_request(options)
    end

    # Deletes a custom framework in Audit Manager.
    #
    # @option params [required, String] :framework_id
    #   The identifier for the custom framework.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_framework({
    #     framework_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentFramework AWS API Documentation
    #
    # @overload delete_assessment_framework(params = {})
    # @param [Hash] params ({})
    def delete_assessment_framework(params = {}, options = {})
      req = build_request(:delete_assessment_framework, params)
      req.send_request(options)
    end

    # Deletes a share request for a custom framework in Audit Manager.
    #
    # @option params [required, String] :request_id
    #   The unique identifier for the share request to be deleted.
    #
    # @option params [required, String] :request_type
    #   Specifies whether the share request is a sent request or a received
    #   request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_framework_share({
    #     request_id: "UUID", # required
    #     request_type: "SENT", # required, accepts SENT, RECEIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentFrameworkShare AWS API Documentation
    #
    # @overload delete_assessment_framework_share(params = {})
    # @param [Hash] params ({})
    def delete_assessment_framework_share(params = {}, options = {})
      req = build_request(:delete_assessment_framework_share, params)
      req.send_request(options)
    end

    # Deletes an assessment report from an assessment in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :assessment_report_id
    #   The unique identifier for the assessment report.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_report({
    #     assessment_id: "UUID", # required
    #     assessment_report_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentReport AWS API Documentation
    #
    # @overload delete_assessment_report(params = {})
    # @param [Hash] params ({})
    def delete_assessment_report(params = {}, options = {})
      req = build_request(:delete_assessment_report, params)
      req.send_request(options)
    end

    # Deletes a custom control in Audit Manager.
    #
    # @option params [required, String] :control_id
    #   The unique identifier for the control.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_control({
    #     control_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteControl AWS API Documentation
    #
    # @overload delete_control(params = {})
    # @param [Hash] params ({})
    def delete_control(params = {}, options = {})
      req = build_request(:delete_control, params)
      req.send_request(options)
    end

    # Deregisters an account in Audit Manager.
    #
    # @return [Types::DeregisterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterAccountResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING_ACTIVATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterAccount AWS API Documentation
    #
    # @overload deregister_account(params = {})
    # @param [Hash] params ({})
    def deregister_account(params = {}, options = {})
      req = build_request(:deregister_account, params)
      req.send_request(options)
    end

    # Removes the specified member Amazon Web Services account as a
    # delegated administrator for Audit Manager.
    #
    # When you remove a delegated administrator from your Audit Manager
    # settings, you continue to have access to the evidence that you
    # previously collected under that account. This is also the case when
    # you deregister a delegated administrator from Audit Manager. However,
    # Audit Manager will stop collecting and attaching evidence to that
    # delegated administrator account moving forward.
    #
    # @option params [String] :admin_account_id
    #   The identifier for the administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_organization_admin_account({
    #     admin_account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterOrganizationAdminAccount AWS API Documentation
    #
    # @overload deregister_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def deregister_organization_admin_account(params = {}, options = {})
      req = build_request(:deregister_organization_admin_account, params)
      req.send_request(options)
    end

    # Disassociates an evidence folder from the specified assessment report
    # in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :evidence_folder_id
    #   The unique identifier for the folder that the evidence is stored in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_assessment_report_evidence_folder({
    #     assessment_id: "UUID", # required
    #     evidence_folder_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DisassociateAssessmentReportEvidenceFolder AWS API Documentation
    #
    # @overload disassociate_assessment_report_evidence_folder(params = {})
    # @param [Hash] params ({})
    def disassociate_assessment_report_evidence_folder(params = {}, options = {})
      req = build_request(:disassociate_assessment_report_evidence_folder, params)
      req.send_request(options)
    end

    # Returns the registration status of an account in Audit Manager.
    #
    # @return [Types::GetAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountStatusResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING_ACTIVATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAccountStatus AWS API Documentation
    #
    # @overload get_account_status(params = {})
    # @param [Hash] params ({})
    def get_account_status(params = {}, options = {})
      req = build_request(:get_account_status, params)
      req.send_request(options)
    end

    # Returns an assessment from Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @return [Types::GetAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssessmentResponse#assessment #assessment} => Types::Assessment
    #   * {Types::GetAssessmentResponse#user_role #user_role} => Types::Role
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment({
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.arn #=> String
    #   resp.assessment.aws_account.id #=> String
    #   resp.assessment.aws_account.email_address #=> String
    #   resp.assessment.aws_account.name #=> String
    #   resp.assessment.metadata.name #=> String
    #   resp.assessment.metadata.id #=> String
    #   resp.assessment.metadata.description #=> String
    #   resp.assessment.metadata.compliance_type #=> String
    #   resp.assessment.metadata.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.assessment.metadata.scope.aws_accounts #=> Array
    #   resp.assessment.metadata.scope.aws_accounts[0].id #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].email_address #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].name #=> String
    #   resp.assessment.metadata.scope.aws_services #=> Array
    #   resp.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.assessment.metadata.roles #=> Array
    #   resp.assessment.metadata.roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.roles[0].role_arn #=> String
    #   resp.assessment.metadata.delegations #=> Array
    #   resp.assessment.metadata.delegations[0].id #=> String
    #   resp.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.assessment.metadata.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.assessment.metadata.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.assessment.metadata.delegations[0].comment #=> String
    #   resp.assessment.metadata.delegations[0].created_by #=> String
    #   resp.assessment.metadata.creation_time #=> Time
    #   resp.assessment.metadata.last_updated #=> Time
    #   resp.assessment.framework.id #=> String
    #   resp.assessment.framework.arn #=> String
    #   resp.assessment.framework.metadata.name #=> String
    #   resp.assessment.framework.metadata.description #=> String
    #   resp.assessment.framework.metadata.logo #=> String
    #   resp.assessment.framework.metadata.compliance_type #=> String
    #   resp.assessment.framework.control_sets #=> Array
    #   resp.assessment.framework.control_sets[0].id #=> String
    #   resp.assessment.framework.control_sets[0].description #=> String
    #   resp.assessment.framework.control_sets[0].status #=> String, one of "ACTIVE", "UNDER_REVIEW", "REVIEWED"
    #   resp.assessment.framework.control_sets[0].roles #=> Array
    #   resp.assessment.framework.control_sets[0].roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].roles[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].controls #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.assessment.framework.control_sets[0].controls[0].response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.assessment.framework.control_sets[0].controls[0].comments #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].delegations #=> Array
    #   resp.assessment.framework.control_sets[0].delegations[0].id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_name #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.framework.control_sets[0].delegations[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].delegations[0].creation_time #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].last_updated #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].control_set_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].comment #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].created_by #=> String
    #   resp.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #   resp.user_role.role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.user_role.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessment AWS API Documentation
    #
    # @overload get_assessment(params = {})
    # @param [Hash] params ({})
    def get_assessment(params = {}, options = {})
      req = build_request(:get_assessment, params)
      req.send_request(options)
    end

    # Returns a framework from Audit Manager.
    #
    # @option params [required, String] :framework_id
    #   The identifier for the framework.
    #
    # @return [Types::GetAssessmentFrameworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssessmentFrameworkResponse#framework #framework} => Types::Framework
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment_framework({
    #     framework_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.framework.arn #=> String
    #   resp.framework.id #=> String
    #   resp.framework.name #=> String
    #   resp.framework.type #=> String, one of "Standard", "Custom"
    #   resp.framework.compliance_type #=> String
    #   resp.framework.description #=> String
    #   resp.framework.logo #=> String
    #   resp.framework.control_sources #=> String
    #   resp.framework.control_sets #=> Array
    #   resp.framework.control_sets[0].id #=> String
    #   resp.framework.control_sets[0].name #=> String
    #   resp.framework.control_sets[0].controls #=> Array
    #   resp.framework.control_sets[0].controls[0].arn #=> String
    #   resp.framework.control_sets[0].controls[0].id #=> String
    #   resp.framework.control_sets[0].controls[0].type #=> String, one of "Standard", "Custom"
    #   resp.framework.control_sets[0].controls[0].name #=> String
    #   resp.framework.control_sets[0].controls[0].description #=> String
    #   resp.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources #=> Array
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.framework.control_sets[0].controls[0].tags #=> Hash
    #   resp.framework.control_sets[0].controls[0].tags["TagKey"] #=> String
    #   resp.framework.created_at #=> Time
    #   resp.framework.last_updated_at #=> Time
    #   resp.framework.created_by #=> String
    #   resp.framework.last_updated_by #=> String
    #   resp.framework.tags #=> Hash
    #   resp.framework.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentFramework AWS API Documentation
    #
    # @overload get_assessment_framework(params = {})
    # @param [Hash] params ({})
    def get_assessment_framework(params = {}, options = {})
      req = build_request(:get_assessment_framework, params)
      req.send_request(options)
    end

    # Returns the URL of an assessment report in Audit Manager.
    #
    # @option params [required, String] :assessment_report_id
    #   The unique identifier for the assessment report.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @return [Types::GetAssessmentReportUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssessmentReportUrlResponse#pre_signed_url #pre_signed_url} => Types::URL
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment_report_url({
    #     assessment_report_id: "UUID", # required
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pre_signed_url.hyperlink_name #=> String
    #   resp.pre_signed_url.link #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentReportUrl AWS API Documentation
    #
    # @overload get_assessment_report_url(params = {})
    # @param [Hash] params ({})
    def get_assessment_report_url(params = {}, options = {})
      req = build_request(:get_assessment_report_url, params)
      req.send_request(options)
    end

    # Returns a list of changelogs from Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [String] :control_set_id
    #   The unique identifier for the control set.
    #
    # @option params [String] :control_id
    #   The unique identifier for the control.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::GetChangeLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChangeLogsResponse#change_logs #change_logs} => Array&lt;Types::ChangeLog&gt;
    #   * {Types::GetChangeLogsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change_logs({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId",
    #     control_id: "UUID",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.change_logs #=> Array
    #   resp.change_logs[0].object_type #=> String, one of "ASSESSMENT", "CONTROL_SET", "CONTROL", "DELEGATION", "ASSESSMENT_REPORT"
    #   resp.change_logs[0].object_name #=> String
    #   resp.change_logs[0].action #=> String, one of "CREATE", "UPDATE_METADATA", "ACTIVE", "INACTIVE", "DELETE", "UNDER_REVIEW", "REVIEWED", "IMPORT_EVIDENCE"
    #   resp.change_logs[0].created_at #=> Time
    #   resp.change_logs[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetChangeLogs AWS API Documentation
    #
    # @overload get_change_logs(params = {})
    # @param [Hash] params ({})
    def get_change_logs(params = {}, options = {})
      req = build_request(:get_change_logs, params)
      req.send_request(options)
    end

    # Returns a control from Audit Manager.
    #
    # @option params [required, String] :control_id
    #   The identifier for the control.
    #
    # @return [Types::GetControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetControlResponse#control #control} => Types::Control
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_control({
    #     control_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control.arn #=> String
    #   resp.control.id #=> String
    #   resp.control.type #=> String, one of "Standard", "Custom"
    #   resp.control.name #=> String
    #   resp.control.description #=> String
    #   resp.control.testing_information #=> String
    #   resp.control.action_plan_title #=> String
    #   resp.control.action_plan_instructions #=> String
    #   resp.control.control_sources #=> String
    #   resp.control.control_mapping_sources #=> Array
    #   resp.control.control_mapping_sources[0].source_id #=> String
    #   resp.control.control_mapping_sources[0].source_name #=> String
    #   resp.control.control_mapping_sources[0].source_description #=> String
    #   resp.control.control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.control.control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.control.control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.control.created_at #=> Time
    #   resp.control.last_updated_at #=> Time
    #   resp.control.created_by #=> String
    #   resp.control.last_updated_by #=> String
    #   resp.control.tags #=> Hash
    #   resp.control.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetControl AWS API Documentation
    #
    # @overload get_control(params = {})
    # @param [Hash] params ({})
    def get_control(params = {}, options = {})
      req = build_request(:get_control, params)
      req.send_request(options)
    end

    # Returns a list of delegations from an audit owner to a delegate.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::GetDelegationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDelegationsResponse#delegations #delegations} => Array&lt;Types::DelegationMetadata&gt;
    #   * {Types::GetDelegationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delegations({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegations #=> Array
    #   resp.delegations[0].id #=> String
    #   resp.delegations[0].assessment_name #=> String
    #   resp.delegations[0].assessment_id #=> String
    #   resp.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.delegations[0].role_arn #=> String
    #   resp.delegations[0].creation_time #=> Time
    #   resp.delegations[0].control_set_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetDelegations AWS API Documentation
    #
    # @overload get_delegations(params = {})
    # @param [Hash] params ({})
    def get_delegations(params = {}, options = {})
      req = build_request(:get_delegations, params)
      req.send_request(options)
    end

    # Returns evidence from Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The unique identifier for the control set.
    #
    # @option params [required, String] :evidence_folder_id
    #   The unique identifier for the folder that the evidence is stored in.
    #
    # @option params [required, String] :evidence_id
    #   The unique identifier for the evidence.
    #
    # @return [Types::GetEvidenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvidenceResponse#evidence #evidence} => Types::Evidence
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #     evidence_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence.data_source #=> String
    #   resp.evidence.evidence_aws_account_id #=> String
    #   resp.evidence.time #=> Time
    #   resp.evidence.event_source #=> String
    #   resp.evidence.event_name #=> String
    #   resp.evidence.evidence_by_type #=> String
    #   resp.evidence.resources_included #=> Array
    #   resp.evidence.resources_included[0].arn #=> String
    #   resp.evidence.resources_included[0].value #=> String
    #   resp.evidence.attributes #=> Hash
    #   resp.evidence.attributes["EvidenceAttributeKey"] #=> String
    #   resp.evidence.iam_id #=> String
    #   resp.evidence.compliance_check #=> String
    #   resp.evidence.aws_organization #=> String
    #   resp.evidence.aws_account_id #=> String
    #   resp.evidence.evidence_folder_id #=> String
    #   resp.evidence.id #=> String
    #   resp.evidence.assessment_report_selection #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidence AWS API Documentation
    #
    # @overload get_evidence(params = {})
    # @param [Hash] params ({})
    def get_evidence(params = {}, options = {})
      req = build_request(:get_evidence, params)
      req.send_request(options)
    end

    # Returns all evidence from a specified evidence folder in Audit
    # Manager.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The identifier for the control set.
    #
    # @option params [required, String] :evidence_folder_id
    #   The unique identifier for the folder that the evidence is stored in.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::GetEvidenceByEvidenceFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvidenceByEvidenceFolderResponse#evidence #evidence} => Array&lt;Types::Evidence&gt;
    #   * {Types::GetEvidenceByEvidenceFolderResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_by_evidence_folder({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence #=> Array
    #   resp.evidence[0].data_source #=> String
    #   resp.evidence[0].evidence_aws_account_id #=> String
    #   resp.evidence[0].time #=> Time
    #   resp.evidence[0].event_source #=> String
    #   resp.evidence[0].event_name #=> String
    #   resp.evidence[0].evidence_by_type #=> String
    #   resp.evidence[0].resources_included #=> Array
    #   resp.evidence[0].resources_included[0].arn #=> String
    #   resp.evidence[0].resources_included[0].value #=> String
    #   resp.evidence[0].attributes #=> Hash
    #   resp.evidence[0].attributes["EvidenceAttributeKey"] #=> String
    #   resp.evidence[0].iam_id #=> String
    #   resp.evidence[0].compliance_check #=> String
    #   resp.evidence[0].aws_organization #=> String
    #   resp.evidence[0].aws_account_id #=> String
    #   resp.evidence[0].evidence_folder_id #=> String
    #   resp.evidence[0].id #=> String
    #   resp.evidence[0].assessment_report_selection #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceByEvidenceFolder AWS API Documentation
    #
    # @overload get_evidence_by_evidence_folder(params = {})
    # @param [Hash] params ({})
    def get_evidence_by_evidence_folder(params = {}, options = {})
      req = build_request(:get_evidence_by_evidence_folder, params)
      req.send_request(options)
    end

    # Returns an evidence folder from the specified assessment in Audit
    # Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The unique identifier for the control set.
    #
    # @option params [required, String] :evidence_folder_id
    #   The unique identifier for the folder that the evidence is stored in.
    #
    # @return [Types::GetEvidenceFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvidenceFolderResponse#evidence_folder #evidence_folder} => Types::AssessmentEvidenceFolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folder({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     evidence_folder_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence_folder.name #=> String
    #   resp.evidence_folder.date #=> Time
    #   resp.evidence_folder.assessment_id #=> String
    #   resp.evidence_folder.control_set_id #=> String
    #   resp.evidence_folder.control_id #=> String
    #   resp.evidence_folder.id #=> String
    #   resp.evidence_folder.data_source #=> String
    #   resp.evidence_folder.author #=> String
    #   resp.evidence_folder.total_evidence #=> Integer
    #   resp.evidence_folder.assessment_report_selection_count #=> Integer
    #   resp.evidence_folder.control_name #=> String
    #   resp.evidence_folder.evidence_resources_included_count #=> Integer
    #   resp.evidence_folder.evidence_by_type_configuration_data_count #=> Integer
    #   resp.evidence_folder.evidence_by_type_manual_count #=> Integer
    #   resp.evidence_folder.evidence_by_type_compliance_check_count #=> Integer
    #   resp.evidence_folder.evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.evidence_folder.evidence_by_type_user_activity_count #=> Integer
    #   resp.evidence_folder.evidence_aws_service_source_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFolder AWS API Documentation
    #
    # @overload get_evidence_folder(params = {})
    # @param [Hash] params ({})
    def get_evidence_folder(params = {}, options = {})
      req = build_request(:get_evidence_folder, params)
      req.send_request(options)
    end

    # Returns the evidence folders from a specified assessment in Audit
    # Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::GetEvidenceFoldersByAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvidenceFoldersByAssessmentResponse#evidence_folders #evidence_folders} => Array&lt;Types::AssessmentEvidenceFolder&gt;
    #   * {Types::GetEvidenceFoldersByAssessmentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folders_by_assessment({
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence_folders #=> Array
    #   resp.evidence_folders[0].name #=> String
    #   resp.evidence_folders[0].date #=> Time
    #   resp.evidence_folders[0].assessment_id #=> String
    #   resp.evidence_folders[0].control_set_id #=> String
    #   resp.evidence_folders[0].control_id #=> String
    #   resp.evidence_folders[0].id #=> String
    #   resp.evidence_folders[0].data_source #=> String
    #   resp.evidence_folders[0].author #=> String
    #   resp.evidence_folders[0].total_evidence #=> Integer
    #   resp.evidence_folders[0].assessment_report_selection_count #=> Integer
    #   resp.evidence_folders[0].control_name #=> String
    #   resp.evidence_folders[0].evidence_resources_included_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_configuration_data_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_manual_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_compliance_check_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_user_activity_count #=> Integer
    #   resp.evidence_folders[0].evidence_aws_service_source_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessment AWS API Documentation
    #
    # @overload get_evidence_folders_by_assessment(params = {})
    # @param [Hash] params ({})
    def get_evidence_folders_by_assessment(params = {}, options = {})
      req = build_request(:get_evidence_folders_by_assessment, params)
      req.send_request(options)
    end

    # Returns a list of evidence folders that are associated with a
    # specified control of an assessment in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The identifier for the control set.
    #
    # @option params [required, String] :control_id
    #   The identifier for the control.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::GetEvidenceFoldersByAssessmentControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvidenceFoldersByAssessmentControlResponse#evidence_folders #evidence_folders} => Array&lt;Types::AssessmentEvidenceFolder&gt;
    #   * {Types::GetEvidenceFoldersByAssessmentControlResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folders_by_assessment_control({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evidence_folders #=> Array
    #   resp.evidence_folders[0].name #=> String
    #   resp.evidence_folders[0].date #=> Time
    #   resp.evidence_folders[0].assessment_id #=> String
    #   resp.evidence_folders[0].control_set_id #=> String
    #   resp.evidence_folders[0].control_id #=> String
    #   resp.evidence_folders[0].id #=> String
    #   resp.evidence_folders[0].data_source #=> String
    #   resp.evidence_folders[0].author #=> String
    #   resp.evidence_folders[0].total_evidence #=> Integer
    #   resp.evidence_folders[0].assessment_report_selection_count #=> Integer
    #   resp.evidence_folders[0].control_name #=> String
    #   resp.evidence_folders[0].evidence_resources_included_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_configuration_data_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_manual_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_compliance_check_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.evidence_folders[0].evidence_by_type_user_activity_count #=> Integer
    #   resp.evidence_folders[0].evidence_aws_service_source_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessmentControl AWS API Documentation
    #
    # @overload get_evidence_folders_by_assessment_control(params = {})
    # @param [Hash] params ({})
    def get_evidence_folders_by_assessment_control(params = {}, options = {})
      req = build_request(:get_evidence_folders_by_assessment_control, params)
      req.send_request(options)
    end

    # Gets the latest analytics data for all your current active
    # assessments.
    #
    # @return [Types::GetInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightsResponse#insights #insights} => Types::Insights
    #
    # @example Response structure
    #
    #   resp.insights.active_assessments_count #=> Integer
    #   resp.insights.noncompliant_evidence_count #=> Integer
    #   resp.insights.compliant_evidence_count #=> Integer
    #   resp.insights.inconclusive_evidence_count #=> Integer
    #   resp.insights.assessment_controls_count_by_noncompliant_evidence #=> Integer
    #   resp.insights.total_assessment_controls_count #=> Integer
    #   resp.insights.last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetInsights AWS API Documentation
    #
    # @overload get_insights(params = {})
    # @param [Hash] params ({})
    def get_insights(params = {}, options = {})
      req = build_request(:get_insights, params)
      req.send_request(options)
    end

    # Gets the latest analytics data for a specific active assessment.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @return [Types::GetInsightsByAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightsByAssessmentResponse#insights #insights} => Types::InsightsByAssessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights_by_assessment({
    #     assessment_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insights.noncompliant_evidence_count #=> Integer
    #   resp.insights.compliant_evidence_count #=> Integer
    #   resp.insights.inconclusive_evidence_count #=> Integer
    #   resp.insights.assessment_controls_count_by_noncompliant_evidence #=> Integer
    #   resp.insights.total_assessment_controls_count #=> Integer
    #   resp.insights.last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetInsightsByAssessment AWS API Documentation
    #
    # @overload get_insights_by_assessment(params = {})
    # @param [Hash] params ({})
    def get_insights_by_assessment(params = {}, options = {})
      req = build_request(:get_insights_by_assessment, params)
      req.send_request(options)
    end

    # Returns the name of the delegated Amazon Web Services administrator
    # account for the organization.
    #
    # @return [Types::GetOrganizationAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationAdminAccountResponse#admin_account_id #admin_account_id} => String
    #   * {Types::GetOrganizationAdminAccountResponse#organization_id #organization_id} => String
    #
    # @example Response structure
    #
    #   resp.admin_account_id #=> String
    #   resp.organization_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetOrganizationAdminAccount AWS API Documentation
    #
    # @overload get_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def get_organization_admin_account(params = {}, options = {})
      req = build_request(:get_organization_admin_account, params)
      req.send_request(options)
    end

    # Returns a list of the in-scope Amazon Web Services services for the
    # specified assessment.
    #
    # @return [Types::GetServicesInScopeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServicesInScopeResponse#service_metadata #service_metadata} => Array&lt;Types::ServiceMetadata&gt;
    #
    # @example Response structure
    #
    #   resp.service_metadata #=> Array
    #   resp.service_metadata[0].name #=> String
    #   resp.service_metadata[0].display_name #=> String
    #   resp.service_metadata[0].description #=> String
    #   resp.service_metadata[0].category #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetServicesInScope AWS API Documentation
    #
    # @overload get_services_in_scope(params = {})
    # @param [Hash] params ({})
    def get_services_in_scope(params = {}, options = {})
      req = build_request(:get_services_in_scope, params)
      req.send_request(options)
    end

    # Returns the settings for the specified Amazon Web Services account.
    #
    # @option params [required, String] :attribute
    #   The list of `SettingAttribute` enum values.
    #
    # @return [Types::GetSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSettingsResponse#settings #settings} => Types::Settings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_settings({
    #     attribute: "ALL", # required, accepts ALL, IS_AWS_ORG_ENABLED, SNS_TOPIC, DEFAULT_ASSESSMENT_REPORTS_DESTINATION, DEFAULT_PROCESS_OWNERS
    #   })
    #
    # @example Response structure
    #
    #   resp.settings.is_aws_org_enabled #=> Boolean
    #   resp.settings.sns_topic #=> String
    #   resp.settings.default_assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.settings.default_assessment_reports_destination.destination #=> String
    #   resp.settings.default_process_owners #=> Array
    #   resp.settings.default_process_owners[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.settings.default_process_owners[0].role_arn #=> String
    #   resp.settings.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetSettings AWS API Documentation
    #
    # @overload get_settings(params = {})
    # @param [Hash] params ({})
    def get_settings(params = {}, options = {})
      req = build_request(:get_settings, params)
      req.send_request(options)
    end

    # Lists the latest analytics data for controls within a specific control
    # domain and a specific active assessment.
    #
    # <note markdown="1"> Control insights are listed only if the control belongs to the control
    # domain and assessment that was specified. Moreover, the control must
    # have collected evidence on the `lastUpdated` date of
    # `controlInsightsByAssessment`. If neither of these conditions are met,
    # no data is listed for that control.
    #
    #  </note>
    #
    # @option params [required, String] :control_domain_id
    #   The unique identifier for the control domain.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the active assessment.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListAssessmentControlInsightsByControlDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssessmentControlInsightsByControlDomainResponse#control_insights_by_assessment #control_insights_by_assessment} => Array&lt;Types::ControlInsightsMetadataByAssessmentItem&gt;
    #   * {Types::ListAssessmentControlInsightsByControlDomainResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_control_insights_by_control_domain({
    #     control_domain_id: "UUID", # required
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.control_insights_by_assessment #=> Array
    #   resp.control_insights_by_assessment[0].name #=> String
    #   resp.control_insights_by_assessment[0].id #=> String
    #   resp.control_insights_by_assessment[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.control_insights_by_assessment[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.control_insights_by_assessment[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.control_insights_by_assessment[0].control_set_name #=> String
    #   resp.control_insights_by_assessment[0].last_updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentControlInsightsByControlDomain AWS API Documentation
    #
    # @overload list_assessment_control_insights_by_control_domain(params = {})
    # @param [Hash] params ({})
    def list_assessment_control_insights_by_control_domain(params = {}, options = {})
      req = build_request(:list_assessment_control_insights_by_control_domain, params)
      req.send_request(options)
    end

    # Returns a list of sent or received share requests for custom
    # frameworks in Audit Manager.
    #
    # @option params [required, String] :request_type
    #   Specifies whether the share request is a sent request or a received
    #   request.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListAssessmentFrameworkShareRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssessmentFrameworkShareRequestsResponse#assessment_framework_share_requests #assessment_framework_share_requests} => Array&lt;Types::AssessmentFrameworkShareRequest&gt;
    #   * {Types::ListAssessmentFrameworkShareRequestsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_framework_share_requests({
    #     request_type: "SENT", # required, accepts SENT, RECEIVED
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_framework_share_requests #=> Array
    #   resp.assessment_framework_share_requests[0].id #=> String
    #   resp.assessment_framework_share_requests[0].framework_id #=> String
    #   resp.assessment_framework_share_requests[0].framework_name #=> String
    #   resp.assessment_framework_share_requests[0].framework_description #=> String
    #   resp.assessment_framework_share_requests[0].status #=> String, one of "ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"
    #   resp.assessment_framework_share_requests[0].source_account #=> String
    #   resp.assessment_framework_share_requests[0].destination_account #=> String
    #   resp.assessment_framework_share_requests[0].destination_region #=> String
    #   resp.assessment_framework_share_requests[0].expiration_time #=> Time
    #   resp.assessment_framework_share_requests[0].creation_time #=> Time
    #   resp.assessment_framework_share_requests[0].last_updated #=> Time
    #   resp.assessment_framework_share_requests[0].comment #=> String
    #   resp.assessment_framework_share_requests[0].standard_controls_count #=> Integer
    #   resp.assessment_framework_share_requests[0].custom_controls_count #=> Integer
    #   resp.assessment_framework_share_requests[0].compliance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentFrameworkShareRequests AWS API Documentation
    #
    # @overload list_assessment_framework_share_requests(params = {})
    # @param [Hash] params ({})
    def list_assessment_framework_share_requests(params = {}, options = {})
      req = build_request(:list_assessment_framework_share_requests, params)
      req.send_request(options)
    end

    # Returns a list of the frameworks that are available in the Audit
    # Manager framework library.
    #
    # @option params [required, String] :framework_type
    #   The type of framework, such as a standard framework or a custom
    #   framework.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListAssessmentFrameworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssessmentFrameworksResponse#framework_metadata_list #framework_metadata_list} => Array&lt;Types::AssessmentFrameworkMetadata&gt;
    #   * {Types::ListAssessmentFrameworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_frameworks({
    #     framework_type: "Standard", # required, accepts Standard, Custom
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.framework_metadata_list #=> Array
    #   resp.framework_metadata_list[0].arn #=> String
    #   resp.framework_metadata_list[0].id #=> String
    #   resp.framework_metadata_list[0].type #=> String, one of "Standard", "Custom"
    #   resp.framework_metadata_list[0].name #=> String
    #   resp.framework_metadata_list[0].description #=> String
    #   resp.framework_metadata_list[0].logo #=> String
    #   resp.framework_metadata_list[0].compliance_type #=> String
    #   resp.framework_metadata_list[0].controls_count #=> Integer
    #   resp.framework_metadata_list[0].control_sets_count #=> Integer
    #   resp.framework_metadata_list[0].created_at #=> Time
    #   resp.framework_metadata_list[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentFrameworks AWS API Documentation
    #
    # @overload list_assessment_frameworks(params = {})
    # @param [Hash] params ({})
    def list_assessment_frameworks(params = {}, options = {})
      req = build_request(:list_assessment_frameworks, params)
      req.send_request(options)
    end

    # Returns a list of assessment reports created in Audit Manager.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListAssessmentReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssessmentReportsResponse#assessment_reports #assessment_reports} => Array&lt;Types::AssessmentReportMetadata&gt;
    #   * {Types::ListAssessmentReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_reports({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_reports #=> Array
    #   resp.assessment_reports[0].id #=> String
    #   resp.assessment_reports[0].name #=> String
    #   resp.assessment_reports[0].description #=> String
    #   resp.assessment_reports[0].assessment_id #=> String
    #   resp.assessment_reports[0].assessment_name #=> String
    #   resp.assessment_reports[0].author #=> String
    #   resp.assessment_reports[0].status #=> String, one of "COMPLETE", "IN_PROGRESS", "FAILED"
    #   resp.assessment_reports[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentReports AWS API Documentation
    #
    # @overload list_assessment_reports(params = {})
    # @param [Hash] params ({})
    def list_assessment_reports(params = {}, options = {})
      req = build_request(:list_assessment_reports, params)
      req.send_request(options)
    end

    # Returns a list of current and past assessments from Audit Manager.
    #
    # @option params [String] :status
    #   The current status of the assessment.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListAssessmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssessmentsResponse#assessment_metadata #assessment_metadata} => Array&lt;Types::AssessmentMetadataItem&gt;
    #   * {Types::ListAssessmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessments({
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_metadata #=> Array
    #   resp.assessment_metadata[0].name #=> String
    #   resp.assessment_metadata[0].id #=> String
    #   resp.assessment_metadata[0].compliance_type #=> String
    #   resp.assessment_metadata[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.assessment_metadata[0].roles #=> Array
    #   resp.assessment_metadata[0].roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment_metadata[0].roles[0].role_arn #=> String
    #   resp.assessment_metadata[0].delegations #=> Array
    #   resp.assessment_metadata[0].delegations[0].id #=> String
    #   resp.assessment_metadata[0].delegations[0].assessment_name #=> String
    #   resp.assessment_metadata[0].delegations[0].assessment_id #=> String
    #   resp.assessment_metadata[0].delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment_metadata[0].delegations[0].role_arn #=> String
    #   resp.assessment_metadata[0].delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment_metadata[0].delegations[0].creation_time #=> Time
    #   resp.assessment_metadata[0].delegations[0].last_updated #=> Time
    #   resp.assessment_metadata[0].delegations[0].control_set_id #=> String
    #   resp.assessment_metadata[0].delegations[0].comment #=> String
    #   resp.assessment_metadata[0].delegations[0].created_by #=> String
    #   resp.assessment_metadata[0].creation_time #=> Time
    #   resp.assessment_metadata[0].last_updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessments AWS API Documentation
    #
    # @overload list_assessments(params = {})
    # @param [Hash] params ({})
    def list_assessments(params = {}, options = {})
      req = build_request(:list_assessments, params)
      req.send_request(options)
    end

    # Lists the latest analytics data for control domains across all of your
    # active assessments.
    #
    # <note markdown="1"> A control domain is listed only if at least one of the controls within
    # that domain collected evidence on the `lastUpdated` date of
    # `controlDomainInsights`. If this condition isn’t met, no data is
    # listed for that control domain.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListControlDomainInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlDomainInsightsResponse#control_domain_insights #control_domain_insights} => Array&lt;Types::ControlDomainInsights&gt;
    #   * {Types::ListControlDomainInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_domain_insights({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.control_domain_insights #=> Array
    #   resp.control_domain_insights[0].name #=> String
    #   resp.control_domain_insights[0].id #=> String
    #   resp.control_domain_insights[0].controls_count_by_noncompliant_evidence #=> Integer
    #   resp.control_domain_insights[0].total_controls_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.control_domain_insights[0].last_updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControlDomainInsights AWS API Documentation
    #
    # @overload list_control_domain_insights(params = {})
    # @param [Hash] params ({})
    def list_control_domain_insights(params = {}, options = {})
      req = build_request(:list_control_domain_insights, params)
      req.send_request(options)
    end

    # Lists analytics data for control domains within a specified active
    # assessment.
    #
    # <note markdown="1"> A control domain is listed only if at least one of the controls within
    # that domain collected evidence on the `lastUpdated` date of
    # `controlDomainInsights`. If this condition isn’t met, no data is
    # listed for that domain.
    #
    #  </note>
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the active assessment.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListControlDomainInsightsByAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlDomainInsightsByAssessmentResponse#control_domain_insights #control_domain_insights} => Array&lt;Types::ControlDomainInsights&gt;
    #   * {Types::ListControlDomainInsightsByAssessmentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_domain_insights_by_assessment({
    #     assessment_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.control_domain_insights #=> Array
    #   resp.control_domain_insights[0].name #=> String
    #   resp.control_domain_insights[0].id #=> String
    #   resp.control_domain_insights[0].controls_count_by_noncompliant_evidence #=> Integer
    #   resp.control_domain_insights[0].total_controls_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.control_domain_insights[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.control_domain_insights[0].last_updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControlDomainInsightsByAssessment AWS API Documentation
    #
    # @overload list_control_domain_insights_by_assessment(params = {})
    # @param [Hash] params ({})
    def list_control_domain_insights_by_assessment(params = {}, options = {})
      req = build_request(:list_control_domain_insights_by_assessment, params)
      req.send_request(options)
    end

    # Lists the latest analytics data for controls within a specific control
    # domain across all active assessments.
    #
    # <note markdown="1"> Control insights are listed only if the control belongs to the control
    # domain that was specified and the control collected evidence on the
    # `lastUpdated` date of `controlInsightsMetadata`. If neither of these
    # conditions are met, no data is listed for that control.
    #
    #  </note>
    #
    # @option params [required, String] :control_domain_id
    #   The unique identifier for the control domain.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListControlInsightsByControlDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlInsightsByControlDomainResponse#control_insights_metadata #control_insights_metadata} => Array&lt;Types::ControlInsightsMetadataItem&gt;
    #   * {Types::ListControlInsightsByControlDomainResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_insights_by_control_domain({
    #     control_domain_id: "UUID", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.control_insights_metadata #=> Array
    #   resp.control_insights_metadata[0].name #=> String
    #   resp.control_insights_metadata[0].id #=> String
    #   resp.control_insights_metadata[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.control_insights_metadata[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.control_insights_metadata[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.control_insights_metadata[0].last_updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControlInsightsByControlDomain AWS API Documentation
    #
    # @overload list_control_insights_by_control_domain(params = {})
    # @param [Hash] params ({})
    def list_control_insights_by_control_domain(params = {}, options = {})
      req = build_request(:list_control_insights_by_control_domain, params)
      req.send_request(options)
    end

    # Returns a list of controls from Audit Manager.
    #
    # @option params [required, String] :control_type
    #   The type of control, such as a standard control or a custom control.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlsResponse#control_metadata_list #control_metadata_list} => Array&lt;Types::ControlMetadata&gt;
    #   * {Types::ListControlsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_controls({
    #     control_type: "Standard", # required, accepts Standard, Custom
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.control_metadata_list #=> Array
    #   resp.control_metadata_list[0].arn #=> String
    #   resp.control_metadata_list[0].id #=> String
    #   resp.control_metadata_list[0].name #=> String
    #   resp.control_metadata_list[0].control_sources #=> String
    #   resp.control_metadata_list[0].created_at #=> Time
    #   resp.control_metadata_list[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControls AWS API Documentation
    #
    # @overload list_controls(params = {})
    # @param [Hash] params ({})
    def list_controls(params = {}, options = {})
      req = build_request(:list_controls, params)
      req.send_request(options)
    end

    # Returns a list of keywords that are pre-mapped to the specified
    # control data source.
    #
    # @option params [required, String] :source
    #   The control mapping data source that the keywords apply to.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListKeywordsForDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeywordsForDataSourceResponse#keywords #keywords} => Array&lt;String&gt;
    #   * {Types::ListKeywordsForDataSourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keywords_for_data_source({
    #     source: "AWS_Cloudtrail", # required, accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.keywords #=> Array
    #   resp.keywords[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListKeywordsForDataSource AWS API Documentation
    #
    # @overload list_keywords_for_data_source(params = {})
    # @param [Hash] params ({})
    def list_keywords_for_data_source(params = {}, options = {})
      req = build_request(:list_keywords_for_data_source, params)
      req.send_request(options)
    end

    # Returns a list of all Audit Manager notifications.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   Represents the maximum number of results on a page or for an API
    #   request call.
    #
    # @return [Types::ListNotificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationsResponse#notifications #notifications} => Array&lt;Types::Notification&gt;
    #   * {Types::ListNotificationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.notifications #=> Array
    #   resp.notifications[0].id #=> String
    #   resp.notifications[0].assessment_id #=> String
    #   resp.notifications[0].assessment_name #=> String
    #   resp.notifications[0].control_set_id #=> String
    #   resp.notifications[0].control_set_name #=> String
    #   resp.notifications[0].description #=> String
    #   resp.notifications[0].event_time #=> Time
    #   resp.notifications[0].source #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListNotifications AWS API Documentation
    #
    # @overload list_notifications(params = {})
    # @param [Hash] params ({})
    def list_notifications(params = {}, options = {})
      req = build_request(:list_notifications, params)
      req.send_request(options)
    end

    # Returns a list of tags for the specified resource in Audit Manager.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AuditManagerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Enables Audit Manager for the specified Amazon Web Services account.
    #
    # @option params [String] :kms_key
    #   The KMS key details.
    #
    # @option params [String] :delegated_admin_account
    #   The delegated administrator account for Audit Manager.
    #
    # @return [Types::RegisterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterAccountResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_account({
    #     kms_key: "KmsKey",
    #     delegated_admin_account: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING_ACTIVATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterAccount AWS API Documentation
    #
    # @overload register_account(params = {})
    # @param [Hash] params ({})
    def register_account(params = {}, options = {})
      req = build_request(:register_account, params)
      req.send_request(options)
    end

    # Enables an Amazon Web Services account within the organization as the
    # delegated administrator for Audit Manager.
    #
    # @option params [required, String] :admin_account_id
    #   The identifier for the delegated administrator account.
    #
    # @return [Types::RegisterOrganizationAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterOrganizationAdminAccountResponse#admin_account_id #admin_account_id} => String
    #   * {Types::RegisterOrganizationAdminAccountResponse#organization_id #organization_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_organization_admin_account({
    #     admin_account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_account_id #=> String
    #   resp.organization_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterOrganizationAdminAccount AWS API Documentation
    #
    # @overload register_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def register_organization_admin_account(params = {}, options = {})
      req = build_request(:register_organization_admin_account, params)
      req.send_request(options)
    end

    # Creates a share request for a custom framework in Audit Manager.
    #
    # The share request specifies a recipient and notifies them that a
    # custom framework is available. Recipients have 120 days to accept or
    # decline the request. If no action is taken, the share request expires.
    #
    # When you invoke the `StartAssessmentFrameworkShare` API, you are about
    # to share a custom framework with another Amazon Web Services account.
    # You may not share a custom framework that is derived from a standard
    # framework if the standard framework is designated as not eligible for
    # sharing by Amazon Web Services, unless you have obtained permission to
    # do so from the owner of the standard framework. To learn more about
    # which standard frameworks are eligible for sharing, see [Framework
    # sharing eligibility][1] in the *Audit Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility
    #
    # @option params [required, String] :framework_id
    #   The unique identifier for the custom framework to be shared.
    #
    # @option params [required, String] :destination_account
    #   The Amazon Web Services account of the recipient.
    #
    # @option params [required, String] :destination_region
    #   The Amazon Web Services Region of the recipient.
    #
    # @option params [String] :comment
    #   An optional comment from the sender about the share request.
    #
    # @return [Types::StartAssessmentFrameworkShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssessmentFrameworkShareResponse#assessment_framework_share_request #assessment_framework_share_request} => Types::AssessmentFrameworkShareRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_assessment_framework_share({
    #     framework_id: "UUID", # required
    #     destination_account: "AccountId", # required
    #     destination_region: "Region", # required
    #     comment: "ShareRequestComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_framework_share_request.id #=> String
    #   resp.assessment_framework_share_request.framework_id #=> String
    #   resp.assessment_framework_share_request.framework_name #=> String
    #   resp.assessment_framework_share_request.framework_description #=> String
    #   resp.assessment_framework_share_request.status #=> String, one of "ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"
    #   resp.assessment_framework_share_request.source_account #=> String
    #   resp.assessment_framework_share_request.destination_account #=> String
    #   resp.assessment_framework_share_request.destination_region #=> String
    #   resp.assessment_framework_share_request.expiration_time #=> Time
    #   resp.assessment_framework_share_request.creation_time #=> Time
    #   resp.assessment_framework_share_request.last_updated #=> Time
    #   resp.assessment_framework_share_request.comment #=> String
    #   resp.assessment_framework_share_request.standard_controls_count #=> Integer
    #   resp.assessment_framework_share_request.custom_controls_count #=> Integer
    #   resp.assessment_framework_share_request.compliance_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/StartAssessmentFrameworkShare AWS API Documentation
    #
    # @overload start_assessment_framework_share(params = {})
    # @param [Hash] params ({})
    def start_assessment_framework_share(params = {}, options = {})
      req = build_request(:start_assessment_framework_share, params)
      req.send_request(options)
    end

    # Tags the specified resource in Audit Manager.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that are associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AuditManagerArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource in Audit Manager.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the specified resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The name or key of the tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AuditManagerArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Edits an Audit Manager assessment.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [String] :assessment_name
    #   The name of the assessment to be updated.
    #
    # @option params [String] :assessment_description
    #   The description of the assessment.
    #
    # @option params [required, Types::Scope] :scope
    #   The scope of the assessment.
    #
    # @option params [Types::AssessmentReportsDestination] :assessment_reports_destination
    #   The assessment report storage destination for the assessment that's
    #   being updated.
    #
    # @option params [Array<Types::Role>] :roles
    #   The list of roles for the assessment.
    #
    # @return [Types::UpdateAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentResponse#assessment #assessment} => Types::Assessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment({
    #     assessment_id: "UUID", # required
    #     assessment_name: "AssessmentName",
    #     assessment_description: "AssessmentDescription",
    #     scope: { # required
    #       aws_accounts: [
    #         {
    #           id: "AccountId",
    #           email_address: "EmailAddress",
    #           name: "AccountName",
    #         },
    #       ],
    #       aws_services: [
    #         {
    #           service_name: "AWSServiceName",
    #         },
    #       ],
    #     },
    #     assessment_reports_destination: {
    #       destination_type: "S3", # accepts S3
    #       destination: "S3Url",
    #     },
    #     roles: [
    #       {
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #         role_arn: "IamArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.arn #=> String
    #   resp.assessment.aws_account.id #=> String
    #   resp.assessment.aws_account.email_address #=> String
    #   resp.assessment.aws_account.name #=> String
    #   resp.assessment.metadata.name #=> String
    #   resp.assessment.metadata.id #=> String
    #   resp.assessment.metadata.description #=> String
    #   resp.assessment.metadata.compliance_type #=> String
    #   resp.assessment.metadata.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.assessment.metadata.scope.aws_accounts #=> Array
    #   resp.assessment.metadata.scope.aws_accounts[0].id #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].email_address #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].name #=> String
    #   resp.assessment.metadata.scope.aws_services #=> Array
    #   resp.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.assessment.metadata.roles #=> Array
    #   resp.assessment.metadata.roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.roles[0].role_arn #=> String
    #   resp.assessment.metadata.delegations #=> Array
    #   resp.assessment.metadata.delegations[0].id #=> String
    #   resp.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.assessment.metadata.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.assessment.metadata.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.assessment.metadata.delegations[0].comment #=> String
    #   resp.assessment.metadata.delegations[0].created_by #=> String
    #   resp.assessment.metadata.creation_time #=> Time
    #   resp.assessment.metadata.last_updated #=> Time
    #   resp.assessment.framework.id #=> String
    #   resp.assessment.framework.arn #=> String
    #   resp.assessment.framework.metadata.name #=> String
    #   resp.assessment.framework.metadata.description #=> String
    #   resp.assessment.framework.metadata.logo #=> String
    #   resp.assessment.framework.metadata.compliance_type #=> String
    #   resp.assessment.framework.control_sets #=> Array
    #   resp.assessment.framework.control_sets[0].id #=> String
    #   resp.assessment.framework.control_sets[0].description #=> String
    #   resp.assessment.framework.control_sets[0].status #=> String, one of "ACTIVE", "UNDER_REVIEW", "REVIEWED"
    #   resp.assessment.framework.control_sets[0].roles #=> Array
    #   resp.assessment.framework.control_sets[0].roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].roles[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].controls #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.assessment.framework.control_sets[0].controls[0].response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.assessment.framework.control_sets[0].controls[0].comments #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].delegations #=> Array
    #   resp.assessment.framework.control_sets[0].delegations[0].id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_name #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.framework.control_sets[0].delegations[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].delegations[0].creation_time #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].last_updated #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].control_set_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].comment #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].created_by #=> String
    #   resp.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessment AWS API Documentation
    #
    # @overload update_assessment(params = {})
    # @param [Hash] params ({})
    def update_assessment(params = {}, options = {})
      req = build_request(:update_assessment, params)
      req.send_request(options)
    end

    # Updates a control within an assessment in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The unique identifier for the control set.
    #
    # @option params [required, String] :control_id
    #   The unique identifier for the control.
    #
    # @option params [String] :control_status
    #   The status of the control.
    #
    # @option params [String] :comment_body
    #   The comment body text for the control.
    #
    # @return [Types::UpdateAssessmentControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentControlResponse#control #control} => Types::AssessmentControl
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_control({
    #     assessment_id: "UUID", # required
    #     control_set_id: "ControlSetId", # required
    #     control_id: "UUID", # required
    #     control_status: "UNDER_REVIEW", # accepts UNDER_REVIEW, REVIEWED, INACTIVE
    #     comment_body: "ControlCommentBody",
    #   })
    #
    # @example Response structure
    #
    #   resp.control.id #=> String
    #   resp.control.name #=> String
    #   resp.control.description #=> String
    #   resp.control.status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.control.response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.control.comments #=> Array
    #   resp.control.comments[0].author_name #=> String
    #   resp.control.comments[0].comment_body #=> String
    #   resp.control.comments[0].posted_date #=> Time
    #   resp.control.evidence_sources #=> Array
    #   resp.control.evidence_sources[0] #=> String
    #   resp.control.evidence_count #=> Integer
    #   resp.control.assessment_report_evidence_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControl AWS API Documentation
    #
    # @overload update_assessment_control(params = {})
    # @param [Hash] params ({})
    def update_assessment_control(params = {}, options = {})
      req = build_request(:update_assessment_control, params)
      req.send_request(options)
    end

    # Updates the status of a control set in an Audit Manager assessment.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :control_set_id
    #   The unique identifier for the control set.
    #
    # @option params [required, String] :status
    #   The status of the control set that's being updated.
    #
    # @option params [required, String] :comment
    #   The comment that's related to the status update.
    #
    # @return [Types::UpdateAssessmentControlSetStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentControlSetStatusResponse#control_set #control_set} => Types::AssessmentControlSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_control_set_status({
    #     assessment_id: "UUID", # required
    #     control_set_id: "String", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, UNDER_REVIEW, REVIEWED
    #     comment: "DelegationComment", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control_set.id #=> String
    #   resp.control_set.description #=> String
    #   resp.control_set.status #=> String, one of "ACTIVE", "UNDER_REVIEW", "REVIEWED"
    #   resp.control_set.roles #=> Array
    #   resp.control_set.roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.control_set.roles[0].role_arn #=> String
    #   resp.control_set.controls #=> Array
    #   resp.control_set.controls[0].id #=> String
    #   resp.control_set.controls[0].name #=> String
    #   resp.control_set.controls[0].description #=> String
    #   resp.control_set.controls[0].status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.control_set.controls[0].response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.control_set.controls[0].comments #=> Array
    #   resp.control_set.controls[0].comments[0].author_name #=> String
    #   resp.control_set.controls[0].comments[0].comment_body #=> String
    #   resp.control_set.controls[0].comments[0].posted_date #=> Time
    #   resp.control_set.controls[0].evidence_sources #=> Array
    #   resp.control_set.controls[0].evidence_sources[0] #=> String
    #   resp.control_set.controls[0].evidence_count #=> Integer
    #   resp.control_set.controls[0].assessment_report_evidence_count #=> Integer
    #   resp.control_set.delegations #=> Array
    #   resp.control_set.delegations[0].id #=> String
    #   resp.control_set.delegations[0].assessment_name #=> String
    #   resp.control_set.delegations[0].assessment_id #=> String
    #   resp.control_set.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.control_set.delegations[0].role_arn #=> String
    #   resp.control_set.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.control_set.delegations[0].creation_time #=> Time
    #   resp.control_set.delegations[0].last_updated #=> Time
    #   resp.control_set.delegations[0].control_set_id #=> String
    #   resp.control_set.delegations[0].comment #=> String
    #   resp.control_set.delegations[0].created_by #=> String
    #   resp.control_set.system_evidence_count #=> Integer
    #   resp.control_set.manual_evidence_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControlSetStatus AWS API Documentation
    #
    # @overload update_assessment_control_set_status(params = {})
    # @param [Hash] params ({})
    def update_assessment_control_set_status(params = {}, options = {})
      req = build_request(:update_assessment_control_set_status, params)
      req.send_request(options)
    end

    # Updates a custom framework in Audit Manager.
    #
    # @option params [required, String] :framework_id
    #   The unique identifier for the framework.
    #
    # @option params [required, String] :name
    #   The name of the framework to be updated.
    #
    # @option params [String] :description
    #   The description of the updated framework.
    #
    # @option params [String] :compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #
    # @option params [required, Array<Types::UpdateAssessmentFrameworkControlSet>] :control_sets
    #   The control sets that are associated with the framework.
    #
    # @return [Types::UpdateAssessmentFrameworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentFrameworkResponse#framework #framework} => Types::Framework
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_framework({
    #     framework_id: "UUID", # required
    #     name: "FrameworkName", # required
    #     description: "FrameworkDescription",
    #     compliance_type: "ComplianceType",
    #     control_sets: [ # required
    #       {
    #         id: "ControlSetName",
    #         name: "ControlSetName", # required
    #         controls: [ # required
    #           {
    #             id: "UUID", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.framework.arn #=> String
    #   resp.framework.id #=> String
    #   resp.framework.name #=> String
    #   resp.framework.type #=> String, one of "Standard", "Custom"
    #   resp.framework.compliance_type #=> String
    #   resp.framework.description #=> String
    #   resp.framework.logo #=> String
    #   resp.framework.control_sources #=> String
    #   resp.framework.control_sets #=> Array
    #   resp.framework.control_sets[0].id #=> String
    #   resp.framework.control_sets[0].name #=> String
    #   resp.framework.control_sets[0].controls #=> Array
    #   resp.framework.control_sets[0].controls[0].arn #=> String
    #   resp.framework.control_sets[0].controls[0].id #=> String
    #   resp.framework.control_sets[0].controls[0].type #=> String, one of "Standard", "Custom"
    #   resp.framework.control_sets[0].controls[0].name #=> String
    #   resp.framework.control_sets[0].controls[0].description #=> String
    #   resp.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources #=> Array
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.framework.control_sets[0].controls[0].tags #=> Hash
    #   resp.framework.control_sets[0].controls[0].tags["TagKey"] #=> String
    #   resp.framework.created_at #=> Time
    #   resp.framework.last_updated_at #=> Time
    #   resp.framework.created_by #=> String
    #   resp.framework.last_updated_by #=> String
    #   resp.framework.tags #=> Hash
    #   resp.framework.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentFramework AWS API Documentation
    #
    # @overload update_assessment_framework(params = {})
    # @param [Hash] params ({})
    def update_assessment_framework(params = {}, options = {})
      req = build_request(:update_assessment_framework, params)
      req.send_request(options)
    end

    # Updates a share request for a custom framework in Audit Manager.
    #
    # @option params [required, String] :request_id
    #   The unique identifier for the share request.
    #
    # @option params [required, String] :request_type
    #   Specifies whether the share request is a sent request or a received
    #   request.
    #
    # @option params [required, String] :action
    #   Specifies the update action for the share request.
    #
    # @return [Types::UpdateAssessmentFrameworkShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentFrameworkShareResponse#assessment_framework_share_request #assessment_framework_share_request} => Types::AssessmentFrameworkShareRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_framework_share({
    #     request_id: "UUID", # required
    #     request_type: "SENT", # required, accepts SENT, RECEIVED
    #     action: "ACCEPT", # required, accepts ACCEPT, DECLINE, REVOKE
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_framework_share_request.id #=> String
    #   resp.assessment_framework_share_request.framework_id #=> String
    #   resp.assessment_framework_share_request.framework_name #=> String
    #   resp.assessment_framework_share_request.framework_description #=> String
    #   resp.assessment_framework_share_request.status #=> String, one of "ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"
    #   resp.assessment_framework_share_request.source_account #=> String
    #   resp.assessment_framework_share_request.destination_account #=> String
    #   resp.assessment_framework_share_request.destination_region #=> String
    #   resp.assessment_framework_share_request.expiration_time #=> Time
    #   resp.assessment_framework_share_request.creation_time #=> Time
    #   resp.assessment_framework_share_request.last_updated #=> Time
    #   resp.assessment_framework_share_request.comment #=> String
    #   resp.assessment_framework_share_request.standard_controls_count #=> Integer
    #   resp.assessment_framework_share_request.custom_controls_count #=> Integer
    #   resp.assessment_framework_share_request.compliance_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentFrameworkShare AWS API Documentation
    #
    # @overload update_assessment_framework_share(params = {})
    # @param [Hash] params ({})
    def update_assessment_framework_share(params = {}, options = {})
      req = build_request(:update_assessment_framework_share, params)
      req.send_request(options)
    end

    # Updates the status of an assessment in Audit Manager.
    #
    # @option params [required, String] :assessment_id
    #   The unique identifier for the assessment.
    #
    # @option params [required, String] :status
    #   The current status of the assessment.
    #
    # @return [Types::UpdateAssessmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssessmentStatusResponse#assessment #assessment} => Types::Assessment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_status({
    #     assessment_id: "UUID", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment.arn #=> String
    #   resp.assessment.aws_account.id #=> String
    #   resp.assessment.aws_account.email_address #=> String
    #   resp.assessment.aws_account.name #=> String
    #   resp.assessment.metadata.name #=> String
    #   resp.assessment.metadata.id #=> String
    #   resp.assessment.metadata.description #=> String
    #   resp.assessment.metadata.compliance_type #=> String
    #   resp.assessment.metadata.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.assessment.metadata.scope.aws_accounts #=> Array
    #   resp.assessment.metadata.scope.aws_accounts[0].id #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].email_address #=> String
    #   resp.assessment.metadata.scope.aws_accounts[0].name #=> String
    #   resp.assessment.metadata.scope.aws_services #=> Array
    #   resp.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.assessment.metadata.roles #=> Array
    #   resp.assessment.metadata.roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.roles[0].role_arn #=> String
    #   resp.assessment.metadata.delegations #=> Array
    #   resp.assessment.metadata.delegations[0].id #=> String
    #   resp.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.assessment.metadata.delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.assessment.metadata.delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.assessment.metadata.delegations[0].comment #=> String
    #   resp.assessment.metadata.delegations[0].created_by #=> String
    #   resp.assessment.metadata.creation_time #=> Time
    #   resp.assessment.metadata.last_updated #=> Time
    #   resp.assessment.framework.id #=> String
    #   resp.assessment.framework.arn #=> String
    #   resp.assessment.framework.metadata.name #=> String
    #   resp.assessment.framework.metadata.description #=> String
    #   resp.assessment.framework.metadata.logo #=> String
    #   resp.assessment.framework.metadata.compliance_type #=> String
    #   resp.assessment.framework.control_sets #=> Array
    #   resp.assessment.framework.control_sets[0].id #=> String
    #   resp.assessment.framework.control_sets[0].description #=> String
    #   resp.assessment.framework.control_sets[0].status #=> String, one of "ACTIVE", "UNDER_REVIEW", "REVIEWED"
    #   resp.assessment.framework.control_sets[0].roles #=> Array
    #   resp.assessment.framework.control_sets[0].roles[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].roles[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].controls #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].status #=> String, one of "UNDER_REVIEW", "REVIEWED", "INACTIVE"
    #   resp.assessment.framework.control_sets[0].controls[0].response #=> String, one of "MANUAL", "AUTOMATE", "DEFER", "IGNORE"
    #   resp.assessment.framework.control_sets[0].controls[0].comments #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].delegations #=> Array
    #   resp.assessment.framework.control_sets[0].delegations[0].id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_name #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].assessment_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].status #=> String, one of "IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"
    #   resp.assessment.framework.control_sets[0].delegations[0].role_arn #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.assessment.framework.control_sets[0].delegations[0].creation_time #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].last_updated #=> Time
    #   resp.assessment.framework.control_sets[0].delegations[0].control_set_id #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].comment #=> String
    #   resp.assessment.framework.control_sets[0].delegations[0].created_by #=> String
    #   resp.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.assessment.tags #=> Hash
    #   resp.assessment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentStatus AWS API Documentation
    #
    # @overload update_assessment_status(params = {})
    # @param [Hash] params ({})
    def update_assessment_status(params = {}, options = {})
      req = build_request(:update_assessment_status, params)
      req.send_request(options)
    end

    # Updates a custom control in Audit Manager.
    #
    # @option params [required, String] :control_id
    #   The identifier for the control.
    #
    # @option params [required, String] :name
    #   The name of the updated control.
    #
    # @option params [String] :description
    #   The optional description of the control.
    #
    # @option params [String] :testing_information
    #   The steps that you should follow to determine if the control is met.
    #
    # @option params [String] :action_plan_title
    #   The title of the action plan for remediating the control.
    #
    # @option params [String] :action_plan_instructions
    #   The recommended actions to carry out if the control isn't fulfilled.
    #
    # @option params [required, Array<Types::ControlMappingSource>] :control_mapping_sources
    #   The data mapping sources for the control.
    #
    # @return [Types::UpdateControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateControlResponse#control #control} => Types::Control
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_control({
    #     control_id: "UUID", # required
    #     name: "ControlName", # required
    #     description: "ControlDescription",
    #     testing_information: "TestingInformation",
    #     action_plan_title: "ActionPlanTitle",
    #     action_plan_instructions: "ActionPlanInstructions",
    #     control_mapping_sources: [ # required
    #       {
    #         source_id: "UUID",
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #         source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #           keyword_value: "KeywordValue",
    #         },
    #         source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #         troubleshooting_text: "TroubleshootingText",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.control.arn #=> String
    #   resp.control.id #=> String
    #   resp.control.type #=> String, one of "Standard", "Custom"
    #   resp.control.name #=> String
    #   resp.control.description #=> String
    #   resp.control.testing_information #=> String
    #   resp.control.action_plan_title #=> String
    #   resp.control.action_plan_instructions #=> String
    #   resp.control.control_sources #=> String
    #   resp.control.control_mapping_sources #=> Array
    #   resp.control.control_mapping_sources[0].source_id #=> String
    #   resp.control.control_mapping_sources[0].source_name #=> String
    #   resp.control.control_mapping_sources[0].source_description #=> String
    #   resp.control.control_mapping_sources[0].source_set_up_option #=> String, one of "System_Controls_Mapping", "Procedural_Controls_Mapping"
    #   resp.control.control_mapping_sources[0].source_type #=> String, one of "AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of "SELECT_FROM_LIST"
    #   resp.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.control.control_mapping_sources[0].source_frequency #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.control.created_at #=> Time
    #   resp.control.last_updated_at #=> Time
    #   resp.control.created_by #=> String
    #   resp.control.last_updated_by #=> String
    #   resp.control.tags #=> Hash
    #   resp.control.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateControl AWS API Documentation
    #
    # @overload update_control(params = {})
    # @param [Hash] params ({})
    def update_control(params = {}, options = {})
      req = build_request(:update_control, params)
      req.send_request(options)
    end

    # Updates Audit Manager settings for the current user account.
    #
    # @option params [String] :sns_topic
    #   The Amazon Simple Notification Service (Amazon SNS) topic that Audit
    #   Manager sends notifications to.
    #
    # @option params [Types::AssessmentReportsDestination] :default_assessment_reports_destination
    #   The default storage destination for assessment reports.
    #
    # @option params [Array<Types::Role>] :default_process_owners
    #   A list of the default audit owners.
    #
    # @option params [String] :kms_key
    #   The KMS key details.
    #
    # @return [Types::UpdateSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSettingsResponse#settings #settings} => Types::Settings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_settings({
    #     sns_topic: "SnsArn",
    #     default_assessment_reports_destination: {
    #       destination_type: "S3", # accepts S3
    #       destination: "S3Url",
    #     },
    #     default_process_owners: [
    #       {
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #         role_arn: "IamArn",
    #       },
    #     ],
    #     kms_key: "KmsKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.settings.is_aws_org_enabled #=> Boolean
    #   resp.settings.sns_topic #=> String
    #   resp.settings.default_assessment_reports_destination.destination_type #=> String, one of "S3"
    #   resp.settings.default_assessment_reports_destination.destination #=> String
    #   resp.settings.default_process_owners #=> Array
    #   resp.settings.default_process_owners[0].role_type #=> String, one of "PROCESS_OWNER", "RESOURCE_OWNER"
    #   resp.settings.default_process_owners[0].role_arn #=> String
    #   resp.settings.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateSettings AWS API Documentation
    #
    # @overload update_settings(params = {})
    # @param [Hash] params ({})
    def update_settings(params = {}, options = {})
      req = build_request(:update_settings, params)
      req.send_request(options)
    end

    # Validates the integrity of an assessment report in Audit Manager.
    #
    # @option params [required, String] :s3_relative_path
    #   The relative path of the Amazon S3 bucket that the assessment report
    #   is stored in.
    #
    # @return [Types::ValidateAssessmentReportIntegrityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateAssessmentReportIntegrityResponse#signature_valid #signature_valid} => Boolean
    #   * {Types::ValidateAssessmentReportIntegrityResponse#signature_algorithm #signature_algorithm} => String
    #   * {Types::ValidateAssessmentReportIntegrityResponse#signature_date_time #signature_date_time} => String
    #   * {Types::ValidateAssessmentReportIntegrityResponse#signature_key_id #signature_key_id} => String
    #   * {Types::ValidateAssessmentReportIntegrityResponse#validation_errors #validation_errors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_assessment_report_integrity({
    #     s3_relative_path: "S3Url", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.signature_valid #=> Boolean
    #   resp.signature_algorithm #=> String
    #   resp.signature_date_time #=> String
    #   resp.signature_key_id #=> String
    #   resp.validation_errors #=> Array
    #   resp.validation_errors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ValidateAssessmentReportIntegrity AWS API Documentation
    #
    # @overload validate_assessment_report_integrity(params = {})
    # @param [Hash] params ({})
    def validate_assessment_report_integrity(params = {}, options = {})
      req = build_request(:validate_assessment_report_integrity, params)
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
      context[:gem_name] = 'aws-sdk-auditmanager'
      context[:gem_version] = '1.20.0'
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
