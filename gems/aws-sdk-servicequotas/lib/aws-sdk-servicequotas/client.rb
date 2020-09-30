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

Aws::Plugins::GlobalConfiguration.add_identifier(:servicequotas)

module Aws::ServiceQuotas
  # An API client for ServiceQuotas.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ServiceQuotas::Client.new(
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

    @identifier = :servicequotas

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

    # Associates the Service Quotas template with your organization so that
    # when new accounts are created in your organization, the template
    # submits increase requests for the specified service quotas. Use the
    # Service Quotas template to request an increase for any adjustable
    # quota value. After you define the Service Quotas template, use this
    # operation to associate, or enable, the template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AssociateServiceQuotaTemplate AWS API Documentation
    #
    # @overload associate_service_quota_template(params = {})
    # @param [Hash] params ({})
    def associate_service_quota_template(params = {}, options = {})
      req = build_request(:associate_service_quota_template, params)
      req.send_request(options)
    end

    # Removes a service quota increase request from the Service Quotas
    # template.
    #
    # @option params [required, String] :service_code
    #   Specifies the code for the service that you want to delete.
    #
    # @option params [required, String] :quota_code
    #   Specifies the code for the quota that you want to delete.
    #
    # @option params [required, String] :aws_region
    #   Specifies the AWS Region for the quota that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_quota_increase_request_from_template({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DeleteServiceQuotaIncreaseRequestFromTemplate AWS API Documentation
    #
    # @overload delete_service_quota_increase_request_from_template(params = {})
    # @param [Hash] params ({})
    def delete_service_quota_increase_request_from_template(params = {}, options = {})
      req = build_request(:delete_service_quota_increase_request_from_template, params)
      req.send_request(options)
    end

    # Disables the Service Quotas template. Once the template is disabled,
    # it does not request quota increases for new accounts in your
    # organization. Disabling the quota template does not apply the quota
    # increase requests from the template.
    #
    # **Related operations**
    #
    # * To enable the quota template, call AssociateServiceQuotaTemplate.
    #
    # * To delete a specific service quota from the template, use
    #   DeleteServiceQuotaIncreaseRequestFromTemplate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DisassociateServiceQuotaTemplate AWS API Documentation
    #
    # @overload disassociate_service_quota_template(params = {})
    # @param [Hash] params ({})
    def disassociate_service_quota_template(params = {}, options = {})
      req = build_request(:disassociate_service_quota_template, params)
      req.send_request(options)
    end

    # Retrieves the default service quotas values. The Value returned for
    # each quota is the AWS default value, even if the quotas have been
    # increased..
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :quota_code
    #   Identifies the service quota you want to select.
    #
    # @return [Types::GetAWSDefaultServiceQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAWSDefaultServiceQuotaResponse#quota #quota} => Types::ServiceQuota
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aws_default_service_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quota.service_code #=> String
    #   resp.quota.service_name #=> String
    #   resp.quota.quota_arn #=> String
    #   resp.quota.quota_code #=> String
    #   resp.quota.quota_name #=> String
    #   resp.quota.value #=> Float
    #   resp.quota.unit #=> String
    #   resp.quota.adjustable #=> Boolean
    #   resp.quota.global_quota #=> Boolean
    #   resp.quota.usage_metric.metric_namespace #=> String
    #   resp.quota.usage_metric.metric_name #=> String
    #   resp.quota.usage_metric.metric_dimensions #=> Hash
    #   resp.quota.usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.quota.period.period_value #=> Integer
    #   resp.quota.period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quota.error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quota.error_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAWSDefaultServiceQuota AWS API Documentation
    #
    # @overload get_aws_default_service_quota(params = {})
    # @param [Hash] params ({})
    def get_aws_default_service_quota(params = {}, options = {})
      req = build_request(:get_aws_default_service_quota, params)
      req.send_request(options)
    end

    # Retrieves the `ServiceQuotaTemplateAssociationStatus` value from the
    # service. Use this action to determine if the Service Quota template is
    # associated, or enabled.
    #
    # @return [Types::GetAssociationForServiceQuotaTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociationForServiceQuotaTemplateResponse#service_quota_template_association_status #service_quota_template_association_status} => String
    #
    # @example Response structure
    #
    #   resp.service_quota_template_association_status #=> String, one of "ASSOCIATED", "DISASSOCIATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplate AWS API Documentation
    #
    # @overload get_association_for_service_quota_template(params = {})
    # @param [Hash] params ({})
    def get_association_for_service_quota_template(params = {}, options = {})
      req = build_request(:get_association_for_service_quota_template, params)
      req.send_request(options)
    end

    # Retrieves the details for a particular increase request.
    #
    # @option params [required, String] :request_id
    #   Identifies the quota increase request.
    #
    # @return [Types::GetRequestedServiceQuotaChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRequestedServiceQuotaChangeResponse#requested_quota #requested_quota} => Types::RequestedServiceQuotaChange
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_requested_service_quota_change({
    #     request_id: "RequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_quota.id #=> String
    #   resp.requested_quota.case_id #=> String
    #   resp.requested_quota.service_code #=> String
    #   resp.requested_quota.service_name #=> String
    #   resp.requested_quota.quota_code #=> String
    #   resp.requested_quota.quota_name #=> String
    #   resp.requested_quota.desired_value #=> Float
    #   resp.requested_quota.status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"
    #   resp.requested_quota.created #=> Time
    #   resp.requested_quota.last_updated #=> Time
    #   resp.requested_quota.requester #=> String
    #   resp.requested_quota.quota_arn #=> String
    #   resp.requested_quota.global_quota #=> Boolean
    #   resp.requested_quota.unit #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetRequestedServiceQuotaChange AWS API Documentation
    #
    # @overload get_requested_service_quota_change(params = {})
    # @param [Hash] params ({})
    def get_requested_service_quota_change(params = {}, options = {})
      req = build_request(:get_requested_service_quota_change, params)
      req.send_request(options)
    end

    # Returns the details for the specified service quota. This operation
    # provides a different Value than the `GetAWSDefaultServiceQuota`
    # operation. This operation returns the applied value for each quota.
    # `GetAWSDefaultServiceQuota` returns the default AWS value for each
    # quota.
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :quota_code
    #   Identifies the service quota you want to select.
    #
    # @return [Types::GetServiceQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceQuotaResponse#quota #quota} => Types::ServiceQuota
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quota.service_code #=> String
    #   resp.quota.service_name #=> String
    #   resp.quota.quota_arn #=> String
    #   resp.quota.quota_code #=> String
    #   resp.quota.quota_name #=> String
    #   resp.quota.value #=> Float
    #   resp.quota.unit #=> String
    #   resp.quota.adjustable #=> Boolean
    #   resp.quota.global_quota #=> Boolean
    #   resp.quota.usage_metric.metric_namespace #=> String
    #   resp.quota.usage_metric.metric_name #=> String
    #   resp.quota.usage_metric.metric_dimensions #=> Hash
    #   resp.quota.usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.quota.period.period_value #=> Integer
    #   resp.quota.period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quota.error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quota.error_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuota AWS API Documentation
    #
    # @overload get_service_quota(params = {})
    # @param [Hash] params ({})
    def get_service_quota(params = {}, options = {})
      req = build_request(:get_service_quota, params)
      req.send_request(options)
    end

    # Returns the details of the service quota increase request in your
    # template.
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota you want.
    #
    # @option params [required, String] :aws_region
    #   Specifies the AWS Region for the quota that you want to use.
    #
    # @return [Types::GetServiceQuotaIncreaseRequestFromTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceQuotaIncreaseRequestFromTemplateResponse#service_quota_increase_request_in_template #service_quota_increase_request_in_template} => Types::ServiceQuotaIncreaseRequestInTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota_increase_request_from_template({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template.service_code #=> String
    #   resp.service_quota_increase_request_in_template.service_name #=> String
    #   resp.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.service_quota_increase_request_in_template.unit #=> String
    #   resp.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaIncreaseRequestFromTemplate AWS API Documentation
    #
    # @overload get_service_quota_increase_request_from_template(params = {})
    # @param [Hash] params ({})
    def get_service_quota_increase_request_from_template(params = {}, options = {})
      req = build_request(:get_service_quota_increase_request_from_template, params)
      req.send_request(options)
    end

    # Lists all default service quotas for the specified AWS service or all
    # AWS services. ListAWSDefaultServiceQuotas is similar to
    # ListServiceQuotas except for the Value object. The Value object
    # returned by `ListAWSDefaultServiceQuotas` is the default value
    # assigned by AWS. This request returns a list of all service quotas for
    # the specified service. The listing of each you'll see the default
    # values are the values that AWS provides for the quotas.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter when calling any of
    # the `List*` operations. These operations can return an unexpected list
    # of results, even when there are more results available. When this
    # happens, the `NextToken` response parameter contains a value to pass
    # the next call to the same API to request the next part of the list.
    #
    #  </note>
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from. If additional items exist beyond the
    #   specified maximum, the `NextToken` element is present and has a value
    #   (isn't null). Include that value as the `NextToken` request parameter
    #   in the call to the operation to get the next part of the results. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListAWSDefaultServiceQuotasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAWSDefaultServiceQuotasResponse#next_token #next_token} => String
    #   * {Types::ListAWSDefaultServiceQuotasResponse#quotas #quotas} => Array&lt;Types::ServiceQuota&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aws_default_service_quotas({
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quotas #=> Array
    #   resp.quotas[0].service_code #=> String
    #   resp.quotas[0].service_name #=> String
    #   resp.quotas[0].quota_arn #=> String
    #   resp.quotas[0].quota_code #=> String
    #   resp.quotas[0].quota_name #=> String
    #   resp.quotas[0].value #=> Float
    #   resp.quotas[0].unit #=> String
    #   resp.quotas[0].adjustable #=> Boolean
    #   resp.quotas[0].global_quota #=> Boolean
    #   resp.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.quotas[0].usage_metric.metric_name #=> String
    #   resp.quotas[0].usage_metric.metric_dimensions #=> Hash
    #   resp.quotas[0].usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.quotas[0].period.period_value #=> Integer
    #   resp.quotas[0].period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quotas[0].error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quotas[0].error_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListAWSDefaultServiceQuotas AWS API Documentation
    #
    # @overload list_aws_default_service_quotas(params = {})
    # @param [Hash] params ({})
    def list_aws_default_service_quotas(params = {}, options = {})
      req = build_request(:list_aws_default_service_quotas, params)
      req.send_request(options)
    end

    # Requests a list of the changes to quotas for a service.
    #
    # @option params [String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [String] :status
    #   Specifies the status value of the quota increase request.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRequestedServiceQuotaChangeHistoryResponse#next_token #next_token} => String
    #   * {Types::ListRequestedServiceQuotaChangeHistoryResponse#requested_quotas #requested_quotas} => Array&lt;Types::RequestedServiceQuotaChange&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history({
    #     service_code: "ServiceCode",
    #     status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.requested_quotas #=> Array
    #   resp.requested_quotas[0].id #=> String
    #   resp.requested_quotas[0].case_id #=> String
    #   resp.requested_quotas[0].service_code #=> String
    #   resp.requested_quotas[0].service_name #=> String
    #   resp.requested_quotas[0].quota_code #=> String
    #   resp.requested_quotas[0].quota_name #=> String
    #   resp.requested_quotas[0].desired_value #=> Float
    #   resp.requested_quotas[0].status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"
    #   resp.requested_quotas[0].created #=> Time
    #   resp.requested_quotas[0].last_updated #=> Time
    #   resp.requested_quotas[0].requester #=> String
    #   resp.requested_quotas[0].quota_arn #=> String
    #   resp.requested_quotas[0].global_quota #=> Boolean
    #   resp.requested_quotas[0].unit #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistory AWS API Documentation
    #
    # @overload list_requested_service_quota_change_history(params = {})
    # @param [Hash] params ({})
    def list_requested_service_quota_change_history(params = {}, options = {})
      req = build_request(:list_requested_service_quota_change_history, params)
      req.send_request(options)
    end

    # Requests a list of the changes to specific service quotas. This
    # command provides additional granularity over the
    # `ListRequestedServiceQuotaChangeHistory` command. Once a quota change
    # request has reached `CASE_CLOSED, APPROVED,` or `DENIED`, the history
    # has been kept for 90 days.
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :quota_code
    #   Specifies the service quota that you want to use
    #
    # @option params [String] :status
    #   Specifies the status value of the quota increase request.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse#next_token #next_token} => String
    #   * {Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse#requested_quotas #requested_quotas} => Array&lt;Types::RequestedServiceQuotaChange&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history_by_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.requested_quotas #=> Array
    #   resp.requested_quotas[0].id #=> String
    #   resp.requested_quotas[0].case_id #=> String
    #   resp.requested_quotas[0].service_code #=> String
    #   resp.requested_quotas[0].service_name #=> String
    #   resp.requested_quotas[0].quota_code #=> String
    #   resp.requested_quotas[0].quota_name #=> String
    #   resp.requested_quotas[0].desired_value #=> Float
    #   resp.requested_quotas[0].status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"
    #   resp.requested_quotas[0].created #=> Time
    #   resp.requested_quotas[0].last_updated #=> Time
    #   resp.requested_quotas[0].requester #=> String
    #   resp.requested_quotas[0].quota_arn #=> String
    #   resp.requested_quotas[0].global_quota #=> Boolean
    #   resp.requested_quotas[0].unit #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryByQuota AWS API Documentation
    #
    # @overload list_requested_service_quota_change_history_by_quota(params = {})
    # @param [Hash] params ({})
    def list_requested_service_quota_change_history_by_quota(params = {}, options = {})
      req = build_request(:list_requested_service_quota_change_history_by_quota, params)
      req.send_request(options)
    end

    # Returns a list of the quota increase requests in the template.
    #
    # @option params [String] :service_code
    #   The identifier for a service. When performing an operation, use the
    #   `ServiceCode` to specify a particular service.
    #
    # @option params [String] :aws_region
    #   Specifies the AWS Region for the quota that you want to use.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListServiceQuotaIncreaseRequestsInTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceQuotaIncreaseRequestsInTemplateResponse#service_quota_increase_request_in_template_list #service_quota_increase_request_in_template_list} => Array&lt;Types::ServiceQuotaIncreaseRequestInTemplate&gt;
    #   * {Types::ListServiceQuotaIncreaseRequestsInTemplateResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quota_increase_requests_in_template({
    #     service_code: "ServiceCode",
    #     aws_region: "AwsRegion",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template_list #=> Array
    #   resp.service_quota_increase_request_in_template_list[0].service_code #=> String
    #   resp.service_quota_increase_request_in_template_list[0].service_name #=> String
    #   resp.service_quota_increase_request_in_template_list[0].quota_code #=> String
    #   resp.service_quota_increase_request_in_template_list[0].quota_name #=> String
    #   resp.service_quota_increase_request_in_template_list[0].desired_value #=> Float
    #   resp.service_quota_increase_request_in_template_list[0].aws_region #=> String
    #   resp.service_quota_increase_request_in_template_list[0].unit #=> String
    #   resp.service_quota_increase_request_in_template_list[0].global_quota #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotaIncreaseRequestsInTemplate AWS API Documentation
    #
    # @overload list_service_quota_increase_requests_in_template(params = {})
    # @param [Hash] params ({})
    def list_service_quota_increase_requests_in_template(params = {}, options = {})
      req = build_request(:list_service_quota_increase_requests_in_template, params)
      req.send_request(options)
    end

    # Lists all service quotas for the specified AWS service. This request
    # returns a list of the service quotas for the specified service.
    # you'll see the default values are the values that AWS provides for
    # the quotas.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter when calling any of
    # the `List*` operations. These operations can return an unexpected list
    # of results, even when there are more results available. When this
    # happens, the `NextToken` response parameter contains a value to pass
    # the next call to the same API to request the next part of the list.
    #
    #  </note>
    #
    # @option params [required, String] :service_code
    #   The identifier for a service. When performing an operation, use the
    #   `ServiceCode` to specify a particular service.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListServiceQuotasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceQuotasResponse#next_token #next_token} => String
    #   * {Types::ListServiceQuotasResponse#quotas #quotas} => Array&lt;Types::ServiceQuota&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quotas({
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quotas #=> Array
    #   resp.quotas[0].service_code #=> String
    #   resp.quotas[0].service_name #=> String
    #   resp.quotas[0].quota_arn #=> String
    #   resp.quotas[0].quota_code #=> String
    #   resp.quotas[0].quota_name #=> String
    #   resp.quotas[0].value #=> Float
    #   resp.quotas[0].unit #=> String
    #   resp.quotas[0].adjustable #=> Boolean
    #   resp.quotas[0].global_quota #=> Boolean
    #   resp.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.quotas[0].usage_metric.metric_name #=> String
    #   resp.quotas[0].usage_metric.metric_dimensions #=> Hash
    #   resp.quotas[0].usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.quotas[0].period.period_value #=> Integer
    #   resp.quotas[0].period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quotas[0].error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quotas[0].error_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotas AWS API Documentation
    #
    # @overload list_service_quotas(params = {})
    # @param [Hash] params ({})
    def list_service_quotas(params = {}, options = {})
      req = build_request(:list_service_quotas, params)
      req.send_request(options)
    end

    # Lists the AWS services available in Service Quotas. Not all AWS
    # services are available in Service Quotas. To list the see the list of
    # the service quotas for a specific service, use ListServiceQuotas.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get the
    #   next part of the results. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #   * {Types::ListServicesResponse#services #services} => Array&lt;Types::ServiceInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.services #=> Array
    #   resp.services[0].service_code #=> String
    #   resp.services[0].service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Defines and adds a quota to the service quota template. To add a quota
    # to the template, you must provide the `ServiceCode`, `QuotaCode`,
    # `AwsRegion`, and `DesiredValue`. Once you add a quota to the template,
    # use ListServiceQuotaIncreaseRequestsInTemplate to see the list of
    # quotas in the template.
    #
    # @option params [required, String] :quota_code
    #   Specifies the service quota that you want to use.
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :aws_region
    #   Specifies the AWS Region for the quota.
    #
    # @option params [required, Float] :desired_value
    #   Specifies the new, increased value for the quota.
    #
    # @return [Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse#service_quota_increase_request_in_template #service_quota_increase_request_in_template} => Types::ServiceQuotaIncreaseRequestInTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_service_quota_increase_request_into_template({
    #     quota_code: "QuotaCode", # required
    #     service_code: "ServiceCode", # required
    #     aws_region: "AwsRegion", # required
    #     desired_value: 1.0, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template.service_code #=> String
    #   resp.service_quota_increase_request_in_template.service_name #=> String
    #   resp.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.service_quota_increase_request_in_template.unit #=> String
    #   resp.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/PutServiceQuotaIncreaseRequestIntoTemplate AWS API Documentation
    #
    # @overload put_service_quota_increase_request_into_template(params = {})
    # @param [Hash] params ({})
    def put_service_quota_increase_request_into_template(params = {}, options = {})
      req = build_request(:put_service_quota_increase_request_into_template, params)
      req.send_request(options)
    end

    # Retrieves the details of a service quota increase request. The
    # response to this command provides the details in the
    # RequestedServiceQuotaChange object.
    #
    # @option params [required, String] :service_code
    #   Specifies the service that you want to use.
    #
    # @option params [required, String] :quota_code
    #   Specifies the service quota that you want to use.
    #
    # @option params [required, Float] :desired_value
    #   Specifies the value submitted in the service quota increase request.
    #
    # @return [Types::RequestServiceQuotaIncreaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestServiceQuotaIncreaseResponse#requested_quota #requested_quota} => Types::RequestedServiceQuotaChange
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_service_quota_increase({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     desired_value: 1.0, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_quota.id #=> String
    #   resp.requested_quota.case_id #=> String
    #   resp.requested_quota.service_code #=> String
    #   resp.requested_quota.service_name #=> String
    #   resp.requested_quota.quota_code #=> String
    #   resp.requested_quota.quota_name #=> String
    #   resp.requested_quota.desired_value #=> Float
    #   resp.requested_quota.status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"
    #   resp.requested_quota.created #=> Time
    #   resp.requested_quota.last_updated #=> Time
    #   resp.requested_quota.requester #=> String
    #   resp.requested_quota.quota_arn #=> String
    #   resp.requested_quota.global_quota #=> Boolean
    #   resp.requested_quota.unit #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncrease AWS API Documentation
    #
    # @overload request_service_quota_increase(params = {})
    # @param [Hash] params ({})
    def request_service_quota_increase(params = {}, options = {})
      req = build_request(:request_service_quota_increase, params)
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
      context[:gem_name] = 'aws-sdk-servicequotas'
      context[:gem_version] = '1.11.0'
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
