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

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanager)

module Aws::LicenseManager
  # An API client for LicenseManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LicenseManager::Client.new(
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

    @identifier = :licensemanager

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

    # Creates a license configuration.
    #
    # A license configuration is an abstraction of a customer license
    # agreement that can be consumed and enforced by License Manager.
    # Components include specifications for the license type (licensing by
    # instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    # Dedicated Instance, Dedicated Host, or all of these), license affinity
    # to host (how long a license must be associated with a host), and the
    # number of licenses purchased and used.
    #
    # @option params [required, String] :name
    #   Name of the license configuration.
    #
    # @option params [String] :description
    #   Description of the license configuration.
    #
    # @option params [required, String] :license_counting_type
    #   Dimension used to track the license inventory.
    #
    # @option params [Integer] :license_count
    #   Number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   Indicates whether hard or soft license enforcement is used. Exceeding
    #   a hard limit blocks the launch of new instances.
    #
    # @option params [Array<String>] :license_rules
    #   License rules. The syntax is #name=value (for example,
    #   #allowedTenancy=EC2-DedicatedHost). The available rules vary by
    #   dimension, as follows.
    #
    #   * `Cores` dimension: `allowedTenancy` \| `licenseAffinityToHost` \|
    #     `maximumCores` \| `minimumCores`
    #
    #   * `Instances` dimension: `allowedTenancy` \| `maximumCores` \|
    #     `minimumCores` \| `maximumSockets` \| `minimumSockets` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   * `Sockets` dimension: `allowedTenancy` \| `licenseAffinityToHost` \|
    #     `maximumSockets` \| `minimumSockets`
    #
    #   * `vCPUs` dimension: `allowedTenancy` \| `honorVcpuOptimization` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   The unit for `licenseAffinityToHost` is days and the range is 1 to
    #   180. The possible values for `allowedTenancy` are `EC2-Default`,
    #   `EC2-DedicatedHost`, and `EC2-DedicatedInstance`. The possible values
    #   for `honorVcpuOptimization` are `True` and `False`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to add to the license configuration.
    #
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   Product information.
    #
    # @return [Types::CreateLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseConfigurationResponse#license_configuration_arn #license_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_configuration({
    #     name: "String", # required
    #     description: "String",
    #     license_counting_type: "vCPU", # required, accepts vCPU, Instance, Core, Socket
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     license_rules: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"], # required
    #             product_information_filter_comparator: "String", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConfiguration AWS API Documentation
    #
    # @overload create_license_configuration(params = {})
    # @param [Hash] params ({})
    def create_license_configuration(params = {}, options = {})
      req = build_request(:create_license_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified license configuration.
    #
    # You cannot delete a license configuration that is in use.
    #
    # @option params [required, String] :license_configuration_arn
    #   ID of the license configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_configuration({
    #     license_configuration_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseConfiguration AWS API Documentation
    #
    # @overload delete_license_configuration(params = {})
    # @param [Hash] params ({})
    def delete_license_configuration(params = {}, options = {})
      req = build_request(:delete_license_configuration, params)
      req.send_request(options)
    end

    # Gets detailed information about the specified license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @return [Types::GetLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseConfigurationResponse#license_configuration_id #license_configuration_id} => String
    #   * {Types::GetLicenseConfigurationResponse#license_configuration_arn #license_configuration_arn} => String
    #   * {Types::GetLicenseConfigurationResponse#name #name} => String
    #   * {Types::GetLicenseConfigurationResponse#description #description} => String
    #   * {Types::GetLicenseConfigurationResponse#license_counting_type #license_counting_type} => String
    #   * {Types::GetLicenseConfigurationResponse#license_rules #license_rules} => Array&lt;String&gt;
    #   * {Types::GetLicenseConfigurationResponse#license_count #license_count} => Integer
    #   * {Types::GetLicenseConfigurationResponse#license_count_hard_limit #license_count_hard_limit} => Boolean
    #   * {Types::GetLicenseConfigurationResponse#consumed_licenses #consumed_licenses} => Integer
    #   * {Types::GetLicenseConfigurationResponse#status #status} => String
    #   * {Types::GetLicenseConfigurationResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetLicenseConfigurationResponse#consumed_license_summary_list #consumed_license_summary_list} => Array&lt;Types::ConsumedLicenseSummary&gt;
    #   * {Types::GetLicenseConfigurationResponse#managed_resource_summary_list #managed_resource_summary_list} => Array&lt;Types::ManagedResourceSummary&gt;
    #   * {Types::GetLicenseConfigurationResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetLicenseConfigurationResponse#product_information_list #product_information_list} => Array&lt;Types::ProductInformation&gt;
    #   * {Types::GetLicenseConfigurationResponse#automated_discovery_information #automated_discovery_information} => Types::AutomatedDiscoveryInformation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_configuration({
    #     license_configuration_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_id #=> String
    #   resp.license_configuration_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.license_counting_type #=> String, one of "vCPU", "Instance", "Core", "Socket"
    #   resp.license_rules #=> Array
    #   resp.license_rules[0] #=> String
    #   resp.license_count #=> Integer
    #   resp.license_count_hard_limit #=> Boolean
    #   resp.consumed_licenses #=> Integer
    #   resp.status #=> String
    #   resp.owner_account_id #=> String
    #   resp.consumed_license_summary_list #=> Array
    #   resp.consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.managed_resource_summary_list #=> Array
    #   resp.managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.managed_resource_summary_list[0].association_count #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.product_information_list #=> Array
    #   resp.product_information_list[0].resource_type #=> String
    #   resp.product_information_list[0].product_information_filter_list #=> Array
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_value[0] #=> String
    #   resp.product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.automated_discovery_information.last_run_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfiguration AWS API Documentation
    #
    # @overload get_license_configuration(params = {})
    # @param [Hash] params ({})
    def get_license_configuration(params = {}, options = {})
      req = build_request(:get_license_configuration, params)
      req.send_request(options)
    end

    # Gets the License Manager settings for the current Region.
    #
    # @return [Types::GetServiceSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSettingsResponse#s3_bucket_arn #s3_bucket_arn} => String
    #   * {Types::GetServiceSettingsResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::GetServiceSettingsResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::GetServiceSettingsResponse#enable_cross_accounts_discovery #enable_cross_accounts_discovery} => Boolean
    #   * {Types::GetServiceSettingsResponse#license_manager_resource_share_arn #license_manager_resource_share_arn} => String
    #
    # @example Response structure
    #
    #   resp.s3_bucket_arn #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.organization_configuration.enable_integration #=> Boolean
    #   resp.enable_cross_accounts_discovery #=> Boolean
    #   resp.license_manager_resource_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettings AWS API Documentation
    #
    # @overload get_service_settings(params = {})
    # @param [Hash] params ({})
    def get_service_settings(params = {}, options = {})
      req = build_request(:get_service_settings, params)
      req.send_request(options)
    end

    # Lists the resource associations for the specified license
    # configuration.
    #
    # Resource associations need not consume licenses from a license
    # configuration. For example, an AMI or a stopped instance might not
    # consume a license (depending on the license rules).
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of a license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListAssociationsForLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsForLicenseConfigurationResponse#license_configuration_associations #license_configuration_associations} => Array&lt;Types::LicenseConfigurationAssociation&gt;
    #   * {Types::ListAssociationsForLicenseConfigurationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations_for_license_configuration({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_associations #=> Array
    #   resp.license_configuration_associations[0].resource_arn #=> String
    #   resp.license_configuration_associations[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configuration_associations[0].resource_owner_id #=> String
    #   resp.license_configuration_associations[0].association_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListAssociationsForLicenseConfiguration AWS API Documentation
    #
    # @overload list_associations_for_license_configuration(params = {})
    # @param [Hash] params ({})
    def list_associations_for_license_configuration(params = {}, options = {})
      req = build_request(:list_associations_for_license_configuration, params)
      req.send_request(options)
    end

    # Lists the license configuration operations that failed.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name of the license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListFailuresForLicenseConfigurationOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFailuresForLicenseConfigurationOperationsResponse#license_operation_failure_list #license_operation_failure_list} => Array&lt;Types::LicenseOperationFailure&gt;
    #   * {Types::ListFailuresForLicenseConfigurationOperationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_failures_for_license_configuration_operations({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_operation_failure_list #=> Array
    #   resp.license_operation_failure_list[0].resource_arn #=> String
    #   resp.license_operation_failure_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_operation_failure_list[0].error_message #=> String
    #   resp.license_operation_failure_list[0].failure_time #=> Time
    #   resp.license_operation_failure_list[0].operation_name #=> String
    #   resp.license_operation_failure_list[0].resource_owner_id #=> String
    #   resp.license_operation_failure_list[0].operation_requested_by #=> String
    #   resp.license_operation_failure_list[0].metadata_list #=> Array
    #   resp.license_operation_failure_list[0].metadata_list[0].name #=> String
    #   resp.license_operation_failure_list[0].metadata_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListFailuresForLicenseConfigurationOperations AWS API Documentation
    #
    # @overload list_failures_for_license_configuration_operations(params = {})
    # @param [Hash] params ({})
    def list_failures_for_license_configuration_operations(params = {}, options = {})
      req = build_request(:list_failures_for_license_configuration_operations, params)
      req.send_request(options)
    end

    # Lists the license configurations for your account.
    #
    # @option params [Array<String>] :license_configuration_arns
    #   Amazon Resource Names (ARN) of the license configurations.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `licenseCountingType` - The dimension on which licenses are counted.
    #     Possible values are `vCPU` \| `Instance` \| `Core` \| `Socket`.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `enforceLicenseCount` - A Boolean value that indicates whether hard
    #     license enforcement is used. Logical operators are `EQUALS` \|
    #     `NOT_EQUALS`.
    #
    #   * `usagelimitExceeded` - A Boolean value that indicates whether the
    #     available licenses have been exceeded. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #
    # @return [Types::ListLicenseConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseConfigurationsResponse#license_configurations #license_configurations} => Array&lt;Types::LicenseConfiguration&gt;
    #   * {Types::ListLicenseConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_configurations({
    #     license_configuration_arns: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configurations #=> Array
    #   resp.license_configurations[0].license_configuration_id #=> String
    #   resp.license_configurations[0].license_configuration_arn #=> String
    #   resp.license_configurations[0].name #=> String
    #   resp.license_configurations[0].description #=> String
    #   resp.license_configurations[0].license_counting_type #=> String, one of "vCPU", "Instance", "Core", "Socket"
    #   resp.license_configurations[0].license_rules #=> Array
    #   resp.license_configurations[0].license_rules[0] #=> String
    #   resp.license_configurations[0].license_count #=> Integer
    #   resp.license_configurations[0].license_count_hard_limit #=> Boolean
    #   resp.license_configurations[0].consumed_licenses #=> Integer
    #   resp.license_configurations[0].status #=> String
    #   resp.license_configurations[0].owner_account_id #=> String
    #   resp.license_configurations[0].consumed_license_summary_list #=> Array
    #   resp.license_configurations[0].consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configurations[0].consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.license_configurations[0].managed_resource_summary_list #=> Array
    #   resp.license_configurations[0].managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configurations[0].managed_resource_summary_list[0].association_count #=> Integer
    #   resp.license_configurations[0].product_information_list #=> Array
    #   resp.license_configurations[0].product_information_list[0].resource_type #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list #=> Array
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_value[0] #=> String
    #   resp.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.license_configurations[0].automated_discovery_information.last_run_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConfigurations AWS API Documentation
    #
    # @overload list_license_configurations(params = {})
    # @param [Hash] params ({})
    def list_license_configurations(params = {}, options = {})
      req = build_request(:list_license_configurations, params)
      req.send_request(options)
    end

    # Describes the license configurations for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of a resource that has an associated
    #   license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @return [Types::ListLicenseSpecificationsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseSpecificationsForResourceResponse#license_specifications #license_specifications} => Array&lt;Types::LicenseSpecification&gt;
    #   * {Types::ListLicenseSpecificationsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_specifications_for_resource({
    #     resource_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_specifications #=> Array
    #   resp.license_specifications[0].license_configuration_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseSpecificationsForResource AWS API Documentation
    #
    # @overload list_license_specifications_for_resource(params = {})
    # @param [Hash] params ({})
    def list_license_specifications_for_resource(params = {}, options = {})
      req = build_request(:list_license_specifications_for_resource, params)
      req.send_request(options)
    end

    # Lists resources managed using Systems Manager inventory.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `account_id` - The ID of the AWS account that owns the resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `application_name` - The name of the application. Logical operators
    #     are `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `license_included` - The type of license included. Logical operators
    #     are `EQUALS` \| `NOT_EQUALS`. Possible values are
    #     `sql-server-enterprise` \| `sql-server-standard` \| `sql-server-web`
    #     \| `windows-server-datacenter`.
    #
    #   * `platform` - The platform of the resource. Logical operators are
    #     `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `resource_id` - The ID of the resource. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #
    # @return [Types::ListResourceInventoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceInventoryResponse#resource_inventory_list #resource_inventory_list} => Array&lt;Types::ResourceInventory&gt;
    #   * {Types::ListResourceInventoryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_inventory({
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         condition: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, BEGINS_WITH, CONTAINS
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_inventory_list #=> Array
    #   resp.resource_inventory_list[0].resource_id #=> String
    #   resp.resource_inventory_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.resource_inventory_list[0].resource_arn #=> String
    #   resp.resource_inventory_list[0].platform #=> String
    #   resp.resource_inventory_list[0].platform_version #=> String
    #   resp.resource_inventory_list[0].resource_owning_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListResourceInventory AWS API Documentation
    #
    # @overload list_resource_inventory(params = {})
    # @param [Hash] params ({})
    def list_resource_inventory(params = {}, options = {})
      req = build_request(:list_resource_inventory, params)
      req.send_request(options)
    end

    # Lists the tags for the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all license usage records for a license configuration,
    # displaying license consumption details by resource at a selected point
    # in time. Use this action to audit the current license consumption for
    # any license inventory and configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `resourceArn` - The ARN of the license configuration resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceType` - The resource type (EC2\_INSTANCE \| EC2\_HOST \|
    #     EC2\_AMI \| SYSTEMS\_MANAGER\_MANAGED\_INSTANCE). Logical operators
    #     are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceAccount` - The ID of the account that owns the resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    # @return [Types::ListUsageForLicenseConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsageForLicenseConfigurationResponse#license_configuration_usage_list #license_configuration_usage_list} => Array&lt;Types::LicenseConfigurationUsage&gt;
    #   * {Types::ListUsageForLicenseConfigurationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_for_license_configuration({
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.license_configuration_usage_list #=> Array
    #   resp.license_configuration_usage_list[0].resource_arn #=> String
    #   resp.license_configuration_usage_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    #   resp.license_configuration_usage_list[0].resource_status #=> String
    #   resp.license_configuration_usage_list[0].resource_owner_id #=> String
    #   resp.license_configuration_usage_list[0].association_time #=> Time
    #   resp.license_configuration_usage_list[0].consumed_licenses #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListUsageForLicenseConfiguration AWS API Documentation
    #
    # @overload list_usage_for_license_configuration(params = {})
    # @param [Hash] params ({})
    def list_usage_for_license_configuration(params = {}, options = {})
      req = build_request(:list_usage_for_license_configuration, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified license configuration.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys identifying the tags to remove.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the attributes of an existing license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #
    # @option params [String] :license_configuration_status
    #   New status of the license configuration.
    #
    # @option params [Array<String>] :license_rules
    #   New license rule. The only rule that you can add after you create a
    #   license configuration is licenseAffinityToHost.
    #
    # @option params [Integer] :license_count
    #   New number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   New hard limit of the number of available licenses.
    #
    # @option params [String] :name
    #   New name of the license configuration.
    #
    # @option params [String] :description
    #   New description of the license configuration.
    #
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   New product information.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_configuration({
    #     license_configuration_arn: "String", # required
    #     license_configuration_status: "AVAILABLE", # accepts AVAILABLE, DISABLED
    #     license_rules: ["String"],
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     name: "String",
    #     description: "String",
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"], # required
    #             product_information_filter_comparator: "String", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseConfiguration AWS API Documentation
    #
    # @overload update_license_configuration(params = {})
    # @param [Hash] params ({})
    def update_license_configuration(params = {}, options = {})
      req = build_request(:update_license_configuration, params)
      req.send_request(options)
    end

    # Adds or removes the specified license configurations for the specified
    # AWS resource.
    #
    # You can update the license specifications of AMIs, instances, and
    # hosts. You cannot update the license specifications for launch
    # templates and AWS CloudFormation templates, as they send license
    # configurations to the operation that creates the resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the AWS resource.
    #
    # @option params [Array<Types::LicenseSpecification>] :add_license_specifications
    #   ARNs of the license configurations to add.
    #
    # @option params [Array<Types::LicenseSpecification>] :remove_license_specifications
    #   ARNs of the license configurations to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_specifications_for_resource({
    #     resource_arn: "String", # required
    #     add_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #       },
    #     ],
    #     remove_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseSpecificationsForResource AWS API Documentation
    #
    # @overload update_license_specifications_for_resource(params = {})
    # @param [Hash] params ({})
    def update_license_specifications_for_resource(params = {}, options = {})
      req = build_request(:update_license_specifications_for_resource, params)
      req.send_request(options)
    end

    # Updates License Manager settings for the current Region.
    #
    # @option params [String] :s3_bucket_arn
    #   Amazon Resource Name (ARN) of the Amazon S3 bucket where the License
    #   Manager information is stored.
    #
    # @option params [String] :sns_topic_arn
    #   Amazon Resource Name (ARN) of the Amazon SNS topic used for License
    #   Manager alerts.
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Enables integration with AWS Organizations for cross-account
    #   discovery.
    #
    # @option params [Boolean] :enable_cross_accounts_discovery
    #   Activates cross-account discovery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_settings({
    #     s3_bucket_arn: "String",
    #     sns_topic_arn: "String",
    #     organization_configuration: {
    #       enable_integration: false, # required
    #     },
    #     enable_cross_accounts_discovery: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateServiceSettings AWS API Documentation
    #
    # @overload update_service_settings(params = {})
    # @param [Hash] params ({})
    def update_service_settings(params = {}, options = {})
      req = build_request(:update_service_settings, params)
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
      context[:gem_name] = 'aws-sdk-licensemanager'
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
