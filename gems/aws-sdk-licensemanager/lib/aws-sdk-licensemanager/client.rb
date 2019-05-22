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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanager)

module Aws::LicenseManager
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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Creates a new license configuration object. A license configuration is
    # an abstraction of a customer license agreement that can be consumed
    # and enforced by License Manager. Components include specifications for
    # the license type (licensing by instance, socket, CPU, or VCPU),
    # tenancy (shared tenancy, Amazon EC2 Dedicated Instance, Amazon EC2
    # Dedicated Host, or any of these), host affinity (how long a VM must be
    # associated with a host), the number of licenses purchased and used.
    #
    # @option params [required, String] :name
    #   Name of the license configuration.
    #
    # @option params [String] :description
    #   Human-friendly description of the license configuration.
    #
    # @option params [required, String] :license_counting_type
    #   Dimension to use to track the license inventory.
    #
    # @option params [Integer] :license_count
    #   Number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   Flag indicating whether hard or soft license enforcement is used.
    #   Exceeding a hard limit results in the blocked deployment of new
    #   instances.
    #
    # @option params [Array<String>] :license_rules
    #   Array of configured License Manager rules.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resources during launch. You can only tag
    #   instances and volumes on launch. The specified tags are applied to all
    #   instances or volumes that are created during launch. To tag a resource
    #   after it has been created, see CreateTags .
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

    # Deletes an existing license configuration. This action fails if the
    # configuration is in use.
    #
    # @option params [required, String] :license_configuration_arn
    #   Unique ID of the configuration object to delete.
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

    # Returns a detailed description of a license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   ARN of the license configuration being requested.
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
    #   resp.consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
    #   resp.consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.managed_resource_summary_list #=> Array
    #   resp.managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
    #   resp.managed_resource_summary_list[0].association_count #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfiguration AWS API Documentation
    #
    # @overload get_license_configuration(params = {})
    # @param [Hash] params ({})
    def get_license_configuration(params = {}, options = {})
      req = build_request(:get_license_configuration, params)
      req.send_request(options)
    end

    # Gets License Manager settings for a region. Exposes the configured S3
    # bucket, SNS topic, etc., for inspection.
    #
    # @return [Types::GetServiceSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSettingsResponse#s3_bucket_arn #s3_bucket_arn} => String
    #   * {Types::GetServiceSettingsResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::GetServiceSettingsResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::GetServiceSettingsResponse#enable_cross_accounts_discovery #enable_cross_accounts_discovery} => Boolean
    #
    # @example Response structure
    #
    #   resp.s3_bucket_arn #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.organization_configuration.enable_integration #=> Boolean
    #   resp.enable_cross_accounts_discovery #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettings AWS API Documentation
    #
    # @overload get_service_settings(params = {})
    # @param [Hash] params ({})
    def get_service_settings(params = {}, options = {})
      req = build_request(:get_service_settings, params)
      req.send_request(options)
    end

    # Lists the resource associations for a license configuration. Resource
    # associations need not consume licenses from a license configuration.
    # For example, an AMI or a stopped instance may not consume a license
    # (depending on the license rules). Use this operation to find all
    # resources associated with a license configuration.
    #
    # @option params [required, String] :license_configuration_arn
    #   ARN of a `LicenseConfiguration` object.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
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
    #   resp.license_configuration_associations[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
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

    # Lists license configuration objects for an account, each containing
    # the name, description, license type, and other license terms modeled
    # from a license agreement.
    #
    # @option params [Array<String>] :license_configuration_arns
    #   An array of ARNs for the calling account’s license configurations.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
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
    #   resp.license_configurations[0].consumed_license_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
    #   resp.license_configurations[0].consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.license_configurations[0].managed_resource_summary_list #=> Array
    #   resp.license_configurations[0].managed_resource_summary_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
    #   resp.license_configurations[0].managed_resource_summary_list[0].association_count #=> Integer
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

    # Returns the license configuration for a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of an AMI or Amazon EC2 instance that has an associated license
    #   configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
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

    # Returns a detailed list of resources.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   One or more filters.
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
    #   resp.resource_inventory_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
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

    # Lists tags attached to a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN for the resource.
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
    #   ARN of the targeted `LicenseConfiguration` object.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   Token for the next set of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   List of filters to apply.
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
    #   resp.license_configuration_usage_list[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_HOST", "EC2_AMI"
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

    # Attach one of more tags to any resource.
    #
    # @option params [required, String] :resource_arn
    #   Resource of the ARN to be tagged.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Names of the tags to attach to the resource.
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

    # Remove tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   List keys identifying tags to remove.
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

    # Modifies the attributes of an existing license configuration object. A
    # license configuration is an abstraction of a customer license
    # agreement that can be consumed and enforced by License Manager.
    # Components include specifications for the license type (Instances,
    # cores, sockets, VCPUs), tenancy (shared or Dedicated Host), host
    # affinity (how long a VM is associated with a host), the number of
    # licenses purchased and used.
    #
    # @option params [required, String] :license_configuration_arn
    #   ARN for a license configuration.
    #
    # @option params [String] :license_configuration_status
    #   New status of the license configuration (`ACTIVE` or `INACTIVE`).
    #
    # @option params [Array<String>] :license_rules
    #   List of flexible text strings designating license rules.
    #
    # @option params [Integer] :license_count
    #   New number of licenses managed by the license configuration.
    #
    # @option params [Boolean] :license_count_hard_limit
    #   Sets the number of available licenses as a hard limit.
    #
    # @option params [String] :name
    #   New name of the license configuration.
    #
    # @option params [String] :description
    #   New human-friendly description of the license configuration.
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

    # Adds or removes license configurations for a specified AWS resource.
    # This operation currently supports updating the license specifications
    # of AMIs, instances, and hosts. Launch templates and AWS CloudFormation
    # templates are not managed from this operation as those resources send
    # the license configurations directly to a resource creation operation,
    # such as `RunInstances`.
    #
    # @option params [required, String] :resource_arn
    #   ARN for an AWS server resource.
    #
    # @option params [Array<Types::LicenseSpecification>] :add_license_specifications
    #   License configuration ARNs to be added to a resource.
    #
    # @option params [Array<Types::LicenseSpecification>] :remove_license_specifications
    #   License configuration ARNs to be removed from a resource.
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

    # Updates License Manager service settings.
    #
    # @option params [String] :s3_bucket_arn
    #   ARN of the Amazon S3 bucket where License Manager information is
    #   stored.
    #
    # @option params [String] :sns_topic_arn
    #   ARN of the Amazon SNS topic used for License Manager alerts.
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Integrates AWS Organizations with License Manager for cross-account
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
      context[:gem_version] = '1.6.0'
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
