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

Aws::Plugins::GlobalConfiguration.add_identifier(:configservice)

module Aws::ConfigService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :configservice

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

    # Returns the current configuration items for resources that are present
    # in your AWS Config aggregator. The operation also returns a list of
    # resources that are not processed in the current request. If there are
    # no unprocessed resources, the operation returns an empty
    # `unprocessedResourceIdentifiers` list.
    #
    # <note markdown="1"> * The API does not return results for deleted resources.
    #
    # * The API does not return tags and relationships.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [required, Array<Types::AggregateResourceIdentifier>] :resource_identifiers
    #   A list of aggregate ResourceIdentifiers objects.
    #
    # @return [Types::BatchGetAggregateResourceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAggregateResourceConfigResponse#base_configuration_items #base_configuration_items} => Array&lt;Types::BaseConfigurationItem&gt;
    #   * {Types::BatchGetAggregateResourceConfigResponse#unprocessed_resource_identifiers #unprocessed_resource_identifiers} => Array&lt;Types::AggregateResourceIdentifier&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_aggregate_resource_config({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_identifiers: [ # required
    #       {
    #         source_account_id: "AccountId", # required
    #         source_region: "AwsRegion", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #         resource_name: "ResourceName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.base_configuration_items #=> Array
    #   resp.base_configuration_items[0].version #=> String
    #   resp.base_configuration_items[0].account_id #=> String
    #   resp.base_configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.base_configuration_items[0].configuration_item_status #=> String, one of "OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"
    #   resp.base_configuration_items[0].configuration_state_id #=> String
    #   resp.base_configuration_items[0].arn #=> String
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.base_configuration_items[0].resource_id #=> String
    #   resp.base_configuration_items[0].resource_name #=> String
    #   resp.base_configuration_items[0].aws_region #=> String
    #   resp.base_configuration_items[0].availability_zone #=> String
    #   resp.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.base_configuration_items[0].configuration #=> String
    #   resp.base_configuration_items[0].supplementary_configuration #=> Hash
    #   resp.base_configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #   resp.unprocessed_resource_identifiers #=> Array
    #   resp.unprocessed_resource_identifiers[0].source_account_id #=> String
    #   resp.unprocessed_resource_identifiers[0].source_region #=> String
    #   resp.unprocessed_resource_identifiers[0].resource_id #=> String
    #   resp.unprocessed_resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.unprocessed_resource_identifiers[0].resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetAggregateResourceConfig AWS API Documentation
    #
    # @overload batch_get_aggregate_resource_config(params = {})
    # @param [Hash] params ({})
    def batch_get_aggregate_resource_config(params = {}, options = {})
      req = build_request(:batch_get_aggregate_resource_config, params)
      req.send_request(options)
    end

    # Returns the current configuration for one or more requested resources.
    # The operation also returns a list of resources that are not processed
    # in the current request. If there are no unprocessed resources, the
    # operation returns an empty unprocessedResourceKeys list.
    #
    # <note markdown="1"> * The API does not return results for deleted resources.
    #
    # * The API does not return any tags for the requested resources. This
    #   information is filtered out of the supplementaryConfiguration
    #   section of the API response.
    #
    #  </note>
    #
    # @option params [required, Array<Types::ResourceKey>] :resource_keys
    #   A list of resource keys to be processed with the current request. Each
    #   element in the list consists of the resource type and resource ID.
    #
    # @return [Types::BatchGetResourceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetResourceConfigResponse#base_configuration_items #base_configuration_items} => Array&lt;Types::BaseConfigurationItem&gt;
    #   * {Types::BatchGetResourceConfigResponse#unprocessed_resource_keys #unprocessed_resource_keys} => Array&lt;Types::ResourceKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_resource_config({
    #     resource_keys: [ # required
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.base_configuration_items #=> Array
    #   resp.base_configuration_items[0].version #=> String
    #   resp.base_configuration_items[0].account_id #=> String
    #   resp.base_configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.base_configuration_items[0].configuration_item_status #=> String, one of "OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"
    #   resp.base_configuration_items[0].configuration_state_id #=> String
    #   resp.base_configuration_items[0].arn #=> String
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.base_configuration_items[0].resource_id #=> String
    #   resp.base_configuration_items[0].resource_name #=> String
    #   resp.base_configuration_items[0].aws_region #=> String
    #   resp.base_configuration_items[0].availability_zone #=> String
    #   resp.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.base_configuration_items[0].configuration #=> String
    #   resp.base_configuration_items[0].supplementary_configuration #=> Hash
    #   resp.base_configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #   resp.unprocessed_resource_keys #=> Array
    #   resp.unprocessed_resource_keys[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.unprocessed_resource_keys[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/BatchGetResourceConfig AWS API Documentation
    #
    # @overload batch_get_resource_config(params = {})
    # @param [Hash] params ({})
    def batch_get_resource_config(params = {}, options = {})
      req = build_request(:batch_get_resource_config, params)
      req.send_request(options)
    end

    # Deletes the authorization granted to the specified configuration
    # aggregator account in a specified region.
    #
    # @option params [required, String] :authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #
    # @option params [required, String] :authorized_aws_region
    #   The region authorized to collect aggregated data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_aggregation_authorization({
    #     authorized_account_id: "AccountId", # required
    #     authorized_aws_region: "AwsRegion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteAggregationAuthorization AWS API Documentation
    #
    # @overload delete_aggregation_authorization(params = {})
    # @param [Hash] params ({})
    def delete_aggregation_authorization(params = {}, options = {})
      req = build_request(:delete_aggregation_authorization, params)
      req.send_request(options)
    end

    # Deletes the specified AWS Config rule and all of its evaluation
    # results.
    #
    # AWS Config sets the state of a rule to `DELETING` until the deletion
    # is complete. You cannot update a rule while it is in this state. If
    # you make a `PutConfigRule` or `DeleteConfigRule` request for the rule,
    # you will receive a `ResourceInUseException`.
    #
    # You can check the state of a rule by using the `DescribeConfigRules`
    # request.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_config_rule({
    #     config_rule_name: "StringWithCharLimit64", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigRule AWS API Documentation
    #
    # @overload delete_config_rule(params = {})
    # @param [Hash] params ({})
    def delete_config_rule(params = {}, options = {})
      req = build_request(:delete_config_rule, params)
      req.send_request(options)
    end

    # Deletes the specified configuration aggregator and the aggregated data
    # associated with the aggregator.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_aggregator({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationAggregator AWS API Documentation
    #
    # @overload delete_configuration_aggregator(params = {})
    # @param [Hash] params ({})
    def delete_configuration_aggregator(params = {}, options = {})
      req = build_request(:delete_configuration_aggregator, params)
      req.send_request(options)
    end

    # Deletes the configuration recorder.
    #
    # After the configuration recorder is deleted, AWS Config will not
    # record resource configuration changes until you create a new
    # configuration recorder.
    #
    # This action does not delete the configuration information that was
    # previously recorded. You will be able to access the previously
    # recorded information by using the `GetResourceConfigHistory` action,
    # but you will not be able to access this information in the AWS Config
    # console until you create a new configuration recorder.
    #
    # @option params [required, String] :configuration_recorder_name
    #   The name of the configuration recorder to be deleted. You can retrieve
    #   the name of your configuration recorder by using the
    #   `DescribeConfigurationRecorders` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_recorder({
    #     configuration_recorder_name: "RecorderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationRecorder AWS API Documentation
    #
    # @overload delete_configuration_recorder(params = {})
    # @param [Hash] params ({})
    def delete_configuration_recorder(params = {}, options = {})
      req = build_request(:delete_configuration_recorder, params)
      req.send_request(options)
    end

    # Deletes the delivery channel.
    #
    # Before you can delete the delivery channel, you must stop the
    # configuration recorder by using the StopConfigurationRecorder action.
    #
    # @option params [required, String] :delivery_channel_name
    #   The name of the delivery channel to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_channel({
    #     delivery_channel_name: "ChannelName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteDeliveryChannel AWS API Documentation
    #
    # @overload delete_delivery_channel(params = {})
    # @param [Hash] params ({})
    def delete_delivery_channel(params = {}, options = {})
      req = build_request(:delete_delivery_channel, params)
      req.send_request(options)
    end

    # Deletes the evaluation results for the specified AWS Config rule. You
    # can specify one AWS Config rule per request. After you delete the
    # evaluation results, you can call the StartConfigRulesEvaluation API to
    # start evaluating your AWS resources against the rule.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want to delete the
    #   evaluation results.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation_results({
    #     config_rule_name: "StringWithCharLimit64", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResults AWS API Documentation
    #
    # @overload delete_evaluation_results(params = {})
    # @param [Hash] params ({})
    def delete_evaluation_results(params = {}, options = {})
      req = build_request(:delete_evaluation_results, params)
      req.send_request(options)
    end

    # Deletes pending authorization requests for a specified aggregator
    # account in a specified region.
    #
    # @option params [required, String] :requester_account_id
    #   The 12-digit account ID of the account requesting to aggregate data.
    #
    # @option params [required, String] :requester_aws_region
    #   The region requesting to aggregate data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pending_aggregation_request({
    #     requester_account_id: "AccountId", # required
    #     requester_aws_region: "AwsRegion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeletePendingAggregationRequest AWS API Documentation
    #
    # @overload delete_pending_aggregation_request(params = {})
    # @param [Hash] params ({})
    def delete_pending_aggregation_request(params = {}, options = {})
      req = build_request(:delete_pending_aggregation_request, params)
      req.send_request(options)
    end

    # Deletes the remediation configuration.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want to delete
    #   remediation configuration.
    #
    # @option params [String] :resource_type
    #   The type of a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remediation_configuration({
    #     config_rule_name: "StringWithCharLimit64", # required
    #     resource_type: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationConfiguration AWS API Documentation
    #
    # @overload delete_remediation_configuration(params = {})
    # @param [Hash] params ({})
    def delete_remediation_configuration(params = {}, options = {})
      req = build_request(:delete_remediation_configuration, params)
      req.send_request(options)
    end

    # Deletes the retention configuration.
    #
    # @option params [required, String] :retention_configuration_name
    #   The name of the retention configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_configuration({
    #     retention_configuration_name: "RetentionConfigurationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRetentionConfiguration AWS API Documentation
    #
    # @overload delete_retention_configuration(params = {})
    # @param [Hash] params ({})
    def delete_retention_configuration(params = {}, options = {})
      req = build_request(:delete_retention_configuration, params)
      req.send_request(options)
    end

    # Schedules delivery of a configuration snapshot to the Amazon S3 bucket
    # in the specified delivery channel. After the delivery has started, AWS
    # Config sends the following notifications using an Amazon SNS topic
    # that you have specified.
    #
    # * Notification of the start of the delivery.
    #
    # * Notification of the completion of the delivery, if the delivery was
    #   successfully completed.
    #
    # * Notification of delivery failure, if the delivery failed.
    #
    # @option params [required, String] :delivery_channel_name
    #   The name of the delivery channel through which the snapshot is
    #   delivered.
    #
    # @return [Types::DeliverConfigSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeliverConfigSnapshotResponse#config_snapshot_id #config_snapshot_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deliver_config_snapshot({
    #     delivery_channel_name: "ChannelName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.config_snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliverConfigSnapshot AWS API Documentation
    #
    # @overload deliver_config_snapshot(params = {})
    # @param [Hash] params ({})
    def deliver_config_snapshot(params = {}, options = {})
      req = build_request(:deliver_config_snapshot, params)
      req.send_request(options)
    end

    # Returns a list of compliant and noncompliant rules with the number of
    # resources for compliant and noncompliant rules.
    #
    # <note markdown="1"> The results can return an empty result page, but if you have a
    # nextToken, the results are displayed on the next page.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Types::ConfigRuleComplianceFilters] :filters
    #   Filters the results by ConfigRuleComplianceFilters object.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeAggregateComplianceByConfigRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAggregateComplianceByConfigRulesResponse#aggregate_compliance_by_config_rules #aggregate_compliance_by_config_rules} => Array&lt;Types::AggregateComplianceByConfigRule&gt;
    #   * {Types::DescribeAggregateComplianceByConfigRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregate_compliance_by_config_rules({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       config_rule_name: "ConfigRuleName",
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion",
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregate_compliance_by_config_rules #=> Array
    #   resp.aggregate_compliance_by_config_rules[0].config_rule_name #=> String
    #   resp.aggregate_compliance_by_config_rules[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.aggregate_compliance_by_config_rules[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.aggregate_compliance_by_config_rules[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.aggregate_compliance_by_config_rules[0].account_id #=> String
    #   resp.aggregate_compliance_by_config_rules[0].aws_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConfigRules AWS API Documentation
    #
    # @overload describe_aggregate_compliance_by_config_rules(params = {})
    # @param [Hash] params ({})
    def describe_aggregate_compliance_by_config_rules(params = {}, options = {})
      req = build_request(:describe_aggregate_compliance_by_config_rules, params)
      req.send_request(options)
    end

    # Returns a list of authorizations granted to various aggregator
    # accounts and regions.
    #
    # @option params [Integer] :limit
    #   The maximum number of AggregationAuthorizations returned on each page.
    #   The default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeAggregationAuthorizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAggregationAuthorizationsResponse#aggregation_authorizations #aggregation_authorizations} => Array&lt;Types::AggregationAuthorization&gt;
    #   * {Types::DescribeAggregationAuthorizationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregation_authorizations({
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregation_authorizations #=> Array
    #   resp.aggregation_authorizations[0].aggregation_authorization_arn #=> String
    #   resp.aggregation_authorizations[0].authorized_account_id #=> String
    #   resp.aggregation_authorizations[0].authorized_aws_region #=> String
    #   resp.aggregation_authorizations[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregationAuthorizations AWS API Documentation
    #
    # @overload describe_aggregation_authorizations(params = {})
    # @param [Hash] params ({})
    def describe_aggregation_authorizations(params = {}, options = {})
      req = build_request(:describe_aggregation_authorizations, params)
      req.send_request(options)
    end

    # Indicates whether the specified AWS Config rules are compliant. If a
    # rule is noncompliant, this action returns the number of AWS resources
    # that do not comply with the rule.
    #
    # A rule is compliant if all of the evaluated resources comply with it.
    # It is noncompliant if any of these resources do not comply.
    #
    # If AWS Config has no current evaluation results for the rule, it
    # returns `INSUFFICIENT_DATA`. This result might indicate one of the
    # following conditions:
    #
    # * AWS Config has never invoked an evaluation for the rule. To check
    #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
    #   to get the `LastSuccessfulInvocationTime` and
    #   `LastFailedInvocationTime`.
    #
    # * The rule's AWS Lambda function is failing to send evaluation
    #   results to AWS Config. Verify that the role you assigned to your
    #   configuration recorder includes the `config:PutEvaluations`
    #   permission. If the rule is a custom rule, verify that the AWS Lambda
    #   execution role includes the `config:PutEvaluations` permission.
    #
    # * The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
    #   all evaluation results. This can occur if the resources were deleted
    #   or removed from the rule's scope.
    #
    # @option params [Array<String>] :config_rule_names
    #   Specify one or more AWS Config rule names to filter the results by
    #   rule.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeComplianceByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComplianceByConfigRuleResponse#compliance_by_config_rules #compliance_by_config_rules} => Array&lt;Types::ComplianceByConfigRule&gt;
    #   * {Types::DescribeComplianceByConfigRuleResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compliance_by_config_rule({
    #     config_rule_names: ["StringWithCharLimit64"],
    #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_by_config_rules #=> Array
    #   resp.compliance_by_config_rules[0].config_rule_name #=> String
    #   resp.compliance_by_config_rules[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.compliance_by_config_rules[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.compliance_by_config_rules[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByConfigRule AWS API Documentation
    #
    # @overload describe_compliance_by_config_rule(params = {})
    # @param [Hash] params ({})
    def describe_compliance_by_config_rule(params = {}, options = {})
      req = build_request(:describe_compliance_by_config_rule, params)
      req.send_request(options)
    end

    # Indicates whether the specified AWS resources are compliant. If a
    # resource is noncompliant, this action returns the number of AWS Config
    # rules that the resource does not comply with.
    #
    # A resource is compliant if it complies with all the AWS Config rules
    # that evaluate it. It is noncompliant if it does not comply with one or
    # more of these rules.
    #
    # If AWS Config has no current evaluation results for the resource, it
    # returns `INSUFFICIENT_DATA`. This result might indicate one of the
    # following conditions about the rules that evaluate the resource:
    #
    # * AWS Config has never invoked an evaluation for the rule. To check
    #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
    #   to get the `LastSuccessfulInvocationTime` and
    #   `LastFailedInvocationTime`.
    #
    # * The rule's AWS Lambda function is failing to send evaluation
    #   results to AWS Config. Verify that the role that you assigned to
    #   your configuration recorder includes the `config:PutEvaluations`
    #   permission. If the rule is a custom rule, verify that the AWS Lambda
    #   execution role includes the `config:PutEvaluations` permission.
    #
    # * The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
    #   all evaluation results. This can occur if the resources were deleted
    #   or removed from the rule's scope.
    #
    # @option params [String] :resource_type
    #   The types of AWS resources for which you want compliance information
    #   (for example, `AWS::EC2::Instance`). For this action, you can specify
    #   that the resource type is an AWS account by specifying
    #   `AWS::::Account`.
    #
    # @option params [String] :resource_id
    #   The ID of the AWS resource for which you want compliance information.
    #   You can specify only one resource ID. If you specify a resource ID,
    #   you must also specify a type for `ResourceType`.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `INSUFFICIENT_DATA`.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeComplianceByResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComplianceByResourceResponse#compliance_by_resources #compliance_by_resources} => Array&lt;Types::ComplianceByResource&gt;
    #   * {Types::DescribeComplianceByResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compliance_by_resource({
    #     resource_type: "StringWithCharLimit256",
    #     resource_id: "BaseResourceId",
    #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_by_resources #=> Array
    #   resp.compliance_by_resources[0].resource_type #=> String
    #   resp.compliance_by_resources[0].resource_id #=> String
    #   resp.compliance_by_resources[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.compliance_by_resources[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.compliance_by_resources[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByResource AWS API Documentation
    #
    # @overload describe_compliance_by_resource(params = {})
    # @param [Hash] params ({})
    def describe_compliance_by_resource(params = {}, options = {})
      req = build_request(:describe_compliance_by_resource, params)
      req.send_request(options)
    end

    # Returns status information for each of your AWS managed Config rules.
    # The status includes information such as the last time AWS Config
    # invoked the rule, the last time AWS Config failed to invoke the rule,
    # and the related error for the last failure.
    #
    # @option params [Array<String>] :config_rule_names
    #   The name of the AWS managed Config rules for which you want status
    #   information. If you do not specify any names, AWS Config returns
    #   status information for all AWS managed Config rules that you use.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @option params [Integer] :limit
    #   The number of rule evaluation results that you want returned.
    #
    #   This parameter is required if the rule limit for your account is more
    #   than the default of 150 rules.
    #
    #   For information about requesting a rule limit increase, see [AWS
    #   Config Limits][1] in the *AWS General Reference Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config
    #
    # @return [Types::DescribeConfigRuleEvaluationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigRuleEvaluationStatusResponse#config_rules_evaluation_status #config_rules_evaluation_status} => Array&lt;Types::ConfigRuleEvaluationStatus&gt;
    #   * {Types::DescribeConfigRuleEvaluationStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_config_rule_evaluation_status({
    #     config_rule_names: ["StringWithCharLimit64"],
    #     next_token: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.config_rules_evaluation_status #=> Array
    #   resp.config_rules_evaluation_status[0].config_rule_name #=> String
    #   resp.config_rules_evaluation_status[0].config_rule_arn #=> String
    #   resp.config_rules_evaluation_status[0].config_rule_id #=> String
    #   resp.config_rules_evaluation_status[0].last_successful_invocation_time #=> Time
    #   resp.config_rules_evaluation_status[0].last_failed_invocation_time #=> Time
    #   resp.config_rules_evaluation_status[0].last_successful_evaluation_time #=> Time
    #   resp.config_rules_evaluation_status[0].last_failed_evaluation_time #=> Time
    #   resp.config_rules_evaluation_status[0].first_activated_time #=> Time
    #   resp.config_rules_evaluation_status[0].last_error_code #=> String
    #   resp.config_rules_evaluation_status[0].last_error_message #=> String
    #   resp.config_rules_evaluation_status[0].first_evaluation_started #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRuleEvaluationStatus AWS API Documentation
    #
    # @overload describe_config_rule_evaluation_status(params = {})
    # @param [Hash] params ({})
    def describe_config_rule_evaluation_status(params = {}, options = {})
      req = build_request(:describe_config_rule_evaluation_status, params)
      req.send_request(options)
    end

    # Returns details about your AWS Config rules.
    #
    # @option params [Array<String>] :config_rule_names
    #   The names of the AWS Config rules for which you want details. If you
    #   do not specify any names, AWS Config returns details for all your
    #   rules.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeConfigRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigRulesResponse#config_rules #config_rules} => Array&lt;Types::ConfigRule&gt;
    #   * {Types::DescribeConfigRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_config_rules({
    #     config_rule_names: ["StringWithCharLimit64"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.config_rules #=> Array
    #   resp.config_rules[0].config_rule_name #=> String
    #   resp.config_rules[0].config_rule_arn #=> String
    #   resp.config_rules[0].config_rule_id #=> String
    #   resp.config_rules[0].description #=> String
    #   resp.config_rules[0].scope.compliance_resource_types #=> Array
    #   resp.config_rules[0].scope.compliance_resource_types[0] #=> String
    #   resp.config_rules[0].scope.tag_key #=> String
    #   resp.config_rules[0].scope.tag_value #=> String
    #   resp.config_rules[0].scope.compliance_resource_id #=> String
    #   resp.config_rules[0].source.owner #=> String, one of "CUSTOM_LAMBDA", "AWS"
    #   resp.config_rules[0].source.source_identifier #=> String
    #   resp.config_rules[0].source.source_details #=> Array
    #   resp.config_rules[0].source.source_details[0].event_source #=> String, one of "aws.config"
    #   resp.config_rules[0].source.source_details[0].message_type #=> String, one of "ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"
    #   resp.config_rules[0].source.source_details[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.config_rules[0].input_parameters #=> String
    #   resp.config_rules[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.config_rules[0].config_rule_state #=> String, one of "ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"
    #   resp.config_rules[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRules AWS API Documentation
    #
    # @overload describe_config_rules(params = {})
    # @param [Hash] params ({})
    def describe_config_rules(params = {}, options = {})
      req = build_request(:describe_config_rules, params)
      req.send_request(options)
    end

    # Returns status information for sources within an aggregator. The
    # status includes information about the last time AWS Config verified
    # authorization between the source account and an aggregator account. In
    # case of a failure, the status contains the related error code or
    # message.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Array<String>] :update_status
    #   Filters the status type.
    #
    #   * Valid value FAILED indicates errors while moving data.
    #
    #   * Valid value SUCCEEDED indicates the data was successfully moved.
    #
    #   * Valid value OUTDATED indicates the data is not the most recent.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @option params [Integer] :limit
    #   The maximum number of AggregatorSourceStatus returned on each page.
    #   The default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @return [Types::DescribeConfigurationAggregatorSourcesStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationAggregatorSourcesStatusResponse#aggregated_source_status_list #aggregated_source_status_list} => Array&lt;Types::AggregatedSourceStatus&gt;
    #   * {Types::DescribeConfigurationAggregatorSourcesStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_aggregator_sources_status({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     update_status: ["FAILED"], # accepts FAILED, SUCCEEDED, OUTDATED
    #     next_token: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregated_source_status_list #=> Array
    #   resp.aggregated_source_status_list[0].source_id #=> String
    #   resp.aggregated_source_status_list[0].source_type #=> String, one of "ACCOUNT", "ORGANIZATION"
    #   resp.aggregated_source_status_list[0].aws_region #=> String
    #   resp.aggregated_source_status_list[0].last_update_status #=> String, one of "FAILED", "SUCCEEDED", "OUTDATED"
    #   resp.aggregated_source_status_list[0].last_update_time #=> Time
    #   resp.aggregated_source_status_list[0].last_error_code #=> String
    #   resp.aggregated_source_status_list[0].last_error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregatorSourcesStatus AWS API Documentation
    #
    # @overload describe_configuration_aggregator_sources_status(params = {})
    # @param [Hash] params ({})
    def describe_configuration_aggregator_sources_status(params = {}, options = {})
      req = build_request(:describe_configuration_aggregator_sources_status, params)
      req.send_request(options)
    end

    # Returns the details of one or more configuration aggregators. If the
    # configuration aggregator is not specified, this action returns the
    # details for all the configuration aggregators associated with the
    # account.
    #
    # @option params [Array<String>] :configuration_aggregator_names
    #   The name of the configuration aggregators.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @option params [Integer] :limit
    #   The maximum number of configuration aggregators returned on each page.
    #   The default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @return [Types::DescribeConfigurationAggregatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationAggregatorsResponse#configuration_aggregators #configuration_aggregators} => Array&lt;Types::ConfigurationAggregator&gt;
    #   * {Types::DescribeConfigurationAggregatorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_aggregators({
    #     configuration_aggregator_names: ["ConfigurationAggregatorName"],
    #     next_token: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_aggregators #=> Array
    #   resp.configuration_aggregators[0].configuration_aggregator_name #=> String
    #   resp.configuration_aggregators[0].configuration_aggregator_arn #=> String
    #   resp.configuration_aggregators[0].account_aggregation_sources #=> Array
    #   resp.configuration_aggregators[0].account_aggregation_sources[0].account_ids #=> Array
    #   resp.configuration_aggregators[0].account_aggregation_sources[0].account_ids[0] #=> String
    #   resp.configuration_aggregators[0].account_aggregation_sources[0].all_aws_regions #=> Boolean
    #   resp.configuration_aggregators[0].account_aggregation_sources[0].aws_regions #=> Array
    #   resp.configuration_aggregators[0].account_aggregation_sources[0].aws_regions[0] #=> String
    #   resp.configuration_aggregators[0].organization_aggregation_source.role_arn #=> String
    #   resp.configuration_aggregators[0].organization_aggregation_source.aws_regions #=> Array
    #   resp.configuration_aggregators[0].organization_aggregation_source.aws_regions[0] #=> String
    #   resp.configuration_aggregators[0].organization_aggregation_source.all_aws_regions #=> Boolean
    #   resp.configuration_aggregators[0].creation_time #=> Time
    #   resp.configuration_aggregators[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationAggregators AWS API Documentation
    #
    # @overload describe_configuration_aggregators(params = {})
    # @param [Hash] params ({})
    def describe_configuration_aggregators(params = {}, options = {})
      req = build_request(:describe_configuration_aggregators, params)
      req.send_request(options)
    end

    # Returns the current status of the specified configuration recorder. If
    # a configuration recorder is not specified, this action returns the
    # status of all configuration recorders associated with the account.
    #
    # <note markdown="1"> Currently, you can specify only one configuration recorder per region
    # in your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :configuration_recorder_names
    #   The name(s) of the configuration recorder. If the name is not
    #   specified, the action returns the current status of all the
    #   configuration recorders associated with the account.
    #
    # @return [Types::DescribeConfigurationRecorderStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationRecorderStatusResponse#configuration_recorders_status #configuration_recorders_status} => Array&lt;Types::ConfigurationRecorderStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_recorder_status({
    #     configuration_recorder_names: ["RecorderName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_recorders_status #=> Array
    #   resp.configuration_recorders_status[0].name #=> String
    #   resp.configuration_recorders_status[0].last_start_time #=> Time
    #   resp.configuration_recorders_status[0].last_stop_time #=> Time
    #   resp.configuration_recorders_status[0].recording #=> Boolean
    #   resp.configuration_recorders_status[0].last_status #=> String, one of "Pending", "Success", "Failure"
    #   resp.configuration_recorders_status[0].last_error_code #=> String
    #   resp.configuration_recorders_status[0].last_error_message #=> String
    #   resp.configuration_recorders_status[0].last_status_change_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorderStatus AWS API Documentation
    #
    # @overload describe_configuration_recorder_status(params = {})
    # @param [Hash] params ({})
    def describe_configuration_recorder_status(params = {}, options = {})
      req = build_request(:describe_configuration_recorder_status, params)
      req.send_request(options)
    end

    # Returns the details for the specified configuration recorders. If the
    # configuration recorder is not specified, this action returns the
    # details for all configuration recorders associated with the account.
    #
    # <note markdown="1"> Currently, you can specify only one configuration recorder per region
    # in your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :configuration_recorder_names
    #   A list of configuration recorder names.
    #
    # @return [Types::DescribeConfigurationRecordersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationRecordersResponse#configuration_recorders #configuration_recorders} => Array&lt;Types::ConfigurationRecorder&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_recorders({
    #     configuration_recorder_names: ["RecorderName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_recorders #=> Array
    #   resp.configuration_recorders[0].name #=> String
    #   resp.configuration_recorders[0].role_arn #=> String
    #   resp.configuration_recorders[0].recording_group.all_supported #=> Boolean
    #   resp.configuration_recorders[0].recording_group.include_global_resource_types #=> Boolean
    #   resp.configuration_recorders[0].recording_group.resource_types #=> Array
    #   resp.configuration_recorders[0].recording_group.resource_types[0] #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorders AWS API Documentation
    #
    # @overload describe_configuration_recorders(params = {})
    # @param [Hash] params ({})
    def describe_configuration_recorders(params = {}, options = {})
      req = build_request(:describe_configuration_recorders, params)
      req.send_request(options)
    end

    # Returns the current status of the specified delivery channel. If a
    # delivery channel is not specified, this action returns the current
    # status of all delivery channels associated with the account.
    #
    # <note markdown="1"> Currently, you can specify only one delivery channel per region in
    # your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :delivery_channel_names
    #   A list of delivery channel names.
    #
    # @return [Types::DescribeDeliveryChannelStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveryChannelStatusResponse#delivery_channels_status #delivery_channels_status} => Array&lt;Types::DeliveryChannelStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_channel_status({
    #     delivery_channel_names: ["ChannelName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_channels_status #=> Array
    #   resp.delivery_channels_status[0].name #=> String
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_error_code #=> String
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_error_message #=> String
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_attempt_time #=> Time
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_successful_time #=> Time
    #   resp.delivery_channels_status[0].config_snapshot_delivery_info.next_delivery_time #=> Time
    #   resp.delivery_channels_status[0].config_history_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
    #   resp.delivery_channels_status[0].config_history_delivery_info.last_error_code #=> String
    #   resp.delivery_channels_status[0].config_history_delivery_info.last_error_message #=> String
    #   resp.delivery_channels_status[0].config_history_delivery_info.last_attempt_time #=> Time
    #   resp.delivery_channels_status[0].config_history_delivery_info.last_successful_time #=> Time
    #   resp.delivery_channels_status[0].config_history_delivery_info.next_delivery_time #=> Time
    #   resp.delivery_channels_status[0].config_stream_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
    #   resp.delivery_channels_status[0].config_stream_delivery_info.last_error_code #=> String
    #   resp.delivery_channels_status[0].config_stream_delivery_info.last_error_message #=> String
    #   resp.delivery_channels_status[0].config_stream_delivery_info.last_status_change_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelStatus AWS API Documentation
    #
    # @overload describe_delivery_channel_status(params = {})
    # @param [Hash] params ({})
    def describe_delivery_channel_status(params = {}, options = {})
      req = build_request(:describe_delivery_channel_status, params)
      req.send_request(options)
    end

    # Returns details about the specified delivery channel. If a delivery
    # channel is not specified, this action returns the details of all
    # delivery channels associated with the account.
    #
    # <note markdown="1"> Currently, you can specify only one delivery channel per region in
    # your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :delivery_channel_names
    #   A list of delivery channel names.
    #
    # @return [Types::DescribeDeliveryChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveryChannelsResponse#delivery_channels #delivery_channels} => Array&lt;Types::DeliveryChannel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_channels({
    #     delivery_channel_names: ["ChannelName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_channels #=> Array
    #   resp.delivery_channels[0].name #=> String
    #   resp.delivery_channels[0].s3_bucket_name #=> String
    #   resp.delivery_channels[0].s3_key_prefix #=> String
    #   resp.delivery_channels[0].sns_topic_arn #=> String
    #   resp.delivery_channels[0].config_snapshot_delivery_properties.delivery_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannels AWS API Documentation
    #
    # @overload describe_delivery_channels(params = {})
    # @param [Hash] params ({})
    def describe_delivery_channels(params = {}, options = {})
      req = build_request(:describe_delivery_channels, params)
      req.send_request(options)
    end

    # Returns a list of all pending aggregation requests.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribePendingAggregationRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePendingAggregationRequestsResponse#pending_aggregation_requests #pending_aggregation_requests} => Array&lt;Types::PendingAggregationRequest&gt;
    #   * {Types::DescribePendingAggregationRequestsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_aggregation_requests({
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.pending_aggregation_requests #=> Array
    #   resp.pending_aggregation_requests[0].requester_account_id #=> String
    #   resp.pending_aggregation_requests[0].requester_aws_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribePendingAggregationRequests AWS API Documentation
    #
    # @overload describe_pending_aggregation_requests(params = {})
    # @param [Hash] params ({})
    def describe_pending_aggregation_requests(params = {}, options = {})
      req = build_request(:describe_pending_aggregation_requests, params)
      req.send_request(options)
    end

    # Returns the details of one or more remediation configurations.
    #
    # @option params [required, Array<String>] :config_rule_names
    #   A list of AWS Config rule names of remediation configurations for
    #   which you want details.
    #
    # @return [Types::DescribeRemediationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRemediationConfigurationsResponse#remediation_configurations #remediation_configurations} => Array&lt;Types::RemediationConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_configurations({
    #     config_rule_names: ["StringWithCharLimit64"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.remediation_configurations #=> Array
    #   resp.remediation_configurations[0].config_rule_name #=> String
    #   resp.remediation_configurations[0].target_type #=> String, one of "SSM_DOCUMENT"
    #   resp.remediation_configurations[0].target_id #=> String
    #   resp.remediation_configurations[0].target_version #=> String
    #   resp.remediation_configurations[0].parameters #=> Hash
    #   resp.remediation_configurations[0].parameters["StringWithCharLimit256"].resource_value.value #=> String, one of "RESOURCE_ID"
    #   resp.remediation_configurations[0].parameters["StringWithCharLimit256"].static_value.values #=> Array
    #   resp.remediation_configurations[0].parameters["StringWithCharLimit256"].static_value.values[0] #=> String
    #   resp.remediation_configurations[0].resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationConfigurations AWS API Documentation
    #
    # @overload describe_remediation_configurations(params = {})
    # @param [Hash] params ({})
    def describe_remediation_configurations(params = {}, options = {})
      req = build_request(:describe_remediation_configurations, params)
      req.send_request(options)
    end

    # Provides a detailed view of a Remediation Execution for a set of
    # resources including state, timestamps for when steps for the
    # remediation execution occur, and any error messages for steps that
    # have failed. When you specify the limit and the next token, you
    # receive a paginated response.
    #
    # @option params [required, String] :config_rule_name
    #   A list of AWS Config rule names.
    #
    # @option params [Array<Types::ResourceKey>] :resource_keys
    #   A list of resource keys to be processed with the current request. Each
    #   element in the list consists of the resource type and resource ID.
    #
    # @option params [Integer] :limit
    #   The maximum number of RemediationExecutionStatuses returned on each
    #   page. The default is maximum. If you specify 0, AWS Config uses the
    #   default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeRemediationExecutionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRemediationExecutionStatusResponse#remediation_execution_statuses #remediation_execution_statuses} => Array&lt;Types::RemediationExecutionStatus&gt;
    #   * {Types::DescribeRemediationExecutionStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_execution_status({
    #     config_rule_name: "StringWithCharLimit64", # required
    #     resource_keys: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #     limit: 1,
    #     next_token: "StringWithCharLimit256",
    #   })
    #
    # @example Response structure
    #
    #   resp.remediation_execution_statuses #=> Array
    #   resp.remediation_execution_statuses[0].resource_key.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.remediation_execution_statuses[0].resource_key.resource_id #=> String
    #   resp.remediation_execution_statuses[0].state #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.remediation_execution_statuses[0].step_details #=> Array
    #   resp.remediation_execution_statuses[0].step_details[0].name #=> String
    #   resp.remediation_execution_statuses[0].step_details[0].state #=> String, one of "SUCCEEDED", "PENDING", "FAILED"
    #   resp.remediation_execution_statuses[0].step_details[0].error_message #=> String
    #   resp.remediation_execution_statuses[0].step_details[0].start_time #=> Time
    #   resp.remediation_execution_statuses[0].step_details[0].stop_time #=> Time
    #   resp.remediation_execution_statuses[0].invocation_time #=> Time
    #   resp.remediation_execution_statuses[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExecutionStatus AWS API Documentation
    #
    # @overload describe_remediation_execution_status(params = {})
    # @param [Hash] params ({})
    def describe_remediation_execution_status(params = {}, options = {})
      req = build_request(:describe_remediation_execution_status, params)
      req.send_request(options)
    end

    # Returns the details of one or more retention configurations. If the
    # retention configuration name is not specified, this action returns the
    # details for all the retention configurations for that account.
    #
    # <note markdown="1"> Currently, AWS Config supports only one retention configuration per
    # region in your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :retention_configuration_names
    #   A list of names of retention configurations for which you want
    #   details. If you do not specify a name, AWS Config returns details for
    #   all the retention configurations for that account.
    #
    #   <note markdown="1"> Currently, AWS Config supports only one retention configuration per
    #   region in your account.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeRetentionConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRetentionConfigurationsResponse#retention_configurations #retention_configurations} => Array&lt;Types::RetentionConfiguration&gt;
    #   * {Types::DescribeRetentionConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_retention_configurations({
    #     retention_configuration_names: ["RetentionConfigurationName"],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_configurations #=> Array
    #   resp.retention_configurations[0].name #=> String
    #   resp.retention_configurations[0].retention_period_in_days #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRetentionConfigurations AWS API Documentation
    #
    # @overload describe_retention_configurations(params = {})
    # @param [Hash] params ({})
    def describe_retention_configurations(params = {}, options = {})
      req = build_request(:describe_retention_configurations, params)
      req.send_request(options)
    end

    # Returns the evaluation results for the specified AWS Config rule for a
    # specific resource in a rule. The results indicate which AWS resources
    # were evaluated by the rule, when each resource was last evaluated, and
    # whether each resource complies with the rule.
    #
    # <note markdown="1"> The results can return an empty result page. But if you have a
    # nextToken, the results are displayed on the next page.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want compliance
    #   information.
    #
    # @option params [required, String] :account_id
    #   The 12-digit account ID of the source account.
    #
    # @option params [required, String] :aws_region
    #   The source region from where the data is aggregated.
    #
    # @option params [String] :compliance_type
    #   The resource compliance status.
    #
    #   <note markdown="1"> For the `GetAggregateComplianceDetailsByConfigRuleRequest` data type,
    #   AWS Config supports only the `COMPLIANT` and `NON_COMPLIANT`. AWS
    #   Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA`
    #   values.
    #
    #    </note>
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 50. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetAggregateComplianceDetailsByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregateComplianceDetailsByConfigRuleResponse#aggregate_evaluation_results #aggregate_evaluation_results} => Array&lt;Types::AggregateEvaluationResult&gt;
    #   * {Types::GetAggregateComplianceDetailsByConfigRuleResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_compliance_details_by_config_rule({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     config_rule_name: "ConfigRuleName", # required
    #     account_id: "AccountId", # required
    #     aws_region: "AwsRegion", # required
    #     compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregate_evaluation_results #=> Array
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.aggregate_evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.aggregate_evaluation_results[0].result_recorded_time #=> Time
    #   resp.aggregate_evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.aggregate_evaluation_results[0].annotation #=> String
    #   resp.aggregate_evaluation_results[0].account_id #=> String
    #   resp.aggregate_evaluation_results[0].aws_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateComplianceDetailsByConfigRule AWS API Documentation
    #
    # @overload get_aggregate_compliance_details_by_config_rule(params = {})
    # @param [Hash] params ({})
    def get_aggregate_compliance_details_by_config_rule(params = {}, options = {})
      req = build_request(:get_aggregate_compliance_details_by_config_rule, params)
      req.send_request(options)
    end

    # Returns the number of compliant and noncompliant rules for one or more
    # accounts and regions in an aggregator.
    #
    # <note markdown="1"> The results can return an empty result page, but if you have a
    # nextToken, the results are displayed on the next page.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Types::ConfigRuleComplianceSummaryFilters] :filters
    #   Filters the results based on the ConfigRuleComplianceSummaryFilters
    #   object.
    #
    # @option params [String] :group_by_key
    #   Groups the result based on ACCOUNT\_ID or AWS\_REGION.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 1000. You cannot specify a number greater than 1000. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetAggregateConfigRuleComplianceSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregateConfigRuleComplianceSummaryResponse#group_by_key #group_by_key} => String
    #   * {Types::GetAggregateConfigRuleComplianceSummaryResponse#aggregate_compliance_counts #aggregate_compliance_counts} => Array&lt;Types::AggregateComplianceCount&gt;
    #   * {Types::GetAggregateConfigRuleComplianceSummaryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_config_rule_compliance_summary({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion",
    #     },
    #     group_by_key: "ACCOUNT_ID", # accepts ACCOUNT_ID, AWS_REGION
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_by_key #=> String
    #   resp.aggregate_compliance_counts #=> Array
    #   resp.aggregate_compliance_counts[0].group_name #=> String
    #   resp.aggregate_compliance_counts[0].compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.aggregate_compliance_counts[0].compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.aggregate_compliance_counts[0].compliance_summary.non_compliant_resource_count.capped_count #=> Integer
    #   resp.aggregate_compliance_counts[0].compliance_summary.non_compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.aggregate_compliance_counts[0].compliance_summary.compliance_summary_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConfigRuleComplianceSummary AWS API Documentation
    #
    # @overload get_aggregate_config_rule_compliance_summary(params = {})
    # @param [Hash] params ({})
    def get_aggregate_config_rule_compliance_summary(params = {}, options = {})
      req = build_request(:get_aggregate_config_rule_compliance_summary, params)
      req.send_request(options)
    end

    # Returns the resource counts across accounts and regions that are
    # present in your AWS Config aggregator. You can request the resource
    # counts by providing filters and GroupByKey.
    #
    # For example, if the input contains accountID 12345678910 and region
    # us-east-1 in filters, the API returns the count of resources in
    # account ID 12345678910 and region us-east-1. If the input contains
    # ACCOUNT\_ID as a GroupByKey, the API returns resource counts for all
    # source accounts that are present in your aggregator.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Types::ResourceCountFilters] :filters
    #   Filters the results based on the `ResourceCountFilters` object.
    #
    # @option params [String] :group_by_key
    #   The key to group the resource counts.
    #
    # @option params [Integer] :limit
    #   The maximum number of GroupedResourceCount objects returned on each
    #   page. The default is 1000. You cannot specify a number greater than
    #   1000. If you specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetAggregateDiscoveredResourceCountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregateDiscoveredResourceCountsResponse#total_discovered_resources #total_discovered_resources} => Integer
    #   * {Types::GetAggregateDiscoveredResourceCountsResponse#group_by_key #group_by_key} => String
    #   * {Types::GetAggregateDiscoveredResourceCountsResponse#grouped_resource_counts #grouped_resource_counts} => Array&lt;Types::GroupedResourceCount&gt;
    #   * {Types::GetAggregateDiscoveredResourceCountsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_discovered_resource_counts({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       resource_type: "AWS::EC2::CustomerGateway", # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #       account_id: "AccountId",
    #       region: "AwsRegion",
    #     },
    #     group_by_key: "RESOURCE_TYPE", # accepts RESOURCE_TYPE, ACCOUNT_ID, AWS_REGION
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.total_discovered_resources #=> Integer
    #   resp.group_by_key #=> String
    #   resp.grouped_resource_counts #=> Array
    #   resp.grouped_resource_counts[0].group_name #=> String
    #   resp.grouped_resource_counts[0].resource_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateDiscoveredResourceCounts AWS API Documentation
    #
    # @overload get_aggregate_discovered_resource_counts(params = {})
    # @param [Hash] params ({})
    def get_aggregate_discovered_resource_counts(params = {}, options = {})
      req = build_request(:get_aggregate_discovered_resource_counts, params)
      req.send_request(options)
    end

    # Returns configuration item that is aggregated for your specific
    # resource in a specific source account and region.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [required, Types::AggregateResourceIdentifier] :resource_identifier
    #   An object that identifies aggregate resource.
    #
    # @return [Types::GetAggregateResourceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregateResourceConfigResponse#configuration_item #configuration_item} => Types::ConfigurationItem
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_resource_config({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_identifier: { # required
    #       source_account_id: "AccountId", # required
    #       source_region: "AwsRegion", # required
    #       resource_id: "ResourceId", # required
    #       resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #       resource_name: "ResourceName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_item.version #=> String
    #   resp.configuration_item.account_id #=> String
    #   resp.configuration_item.configuration_item_capture_time #=> Time
    #   resp.configuration_item.configuration_item_status #=> String, one of "OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"
    #   resp.configuration_item.configuration_state_id #=> String
    #   resp.configuration_item.configuration_item_md5_hash #=> String
    #   resp.configuration_item.arn #=> String
    #   resp.configuration_item.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.configuration_item.resource_id #=> String
    #   resp.configuration_item.resource_name #=> String
    #   resp.configuration_item.aws_region #=> String
    #   resp.configuration_item.availability_zone #=> String
    #   resp.configuration_item.resource_creation_time #=> Time
    #   resp.configuration_item.tags #=> Hash
    #   resp.configuration_item.tags["Name"] #=> String
    #   resp.configuration_item.related_events #=> Array
    #   resp.configuration_item.related_events[0] #=> String
    #   resp.configuration_item.relationships #=> Array
    #   resp.configuration_item.relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.configuration_item.relationships[0].resource_id #=> String
    #   resp.configuration_item.relationships[0].resource_name #=> String
    #   resp.configuration_item.relationships[0].relationship_name #=> String
    #   resp.configuration_item.configuration #=> String
    #   resp.configuration_item.supplementary_configuration #=> Hash
    #   resp.configuration_item.supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateResourceConfig AWS API Documentation
    #
    # @overload get_aggregate_resource_config(params = {})
    # @param [Hash] params ({})
    def get_aggregate_resource_config(params = {}, options = {})
      req = build_request(:get_aggregate_resource_config, params)
      req.send_request(options)
    end

    # Returns the evaluation results for the specified AWS Config rule. The
    # results indicate which AWS resources were evaluated by the rule, when
    # each resource was last evaluated, and whether each resource complies
    # with the rule.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want compliance
    #   information.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `NOT_APPLICABLE`.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetComplianceDetailsByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceDetailsByConfigRuleResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #   * {Types::GetComplianceDetailsByConfigRuleResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_details_by_config_rule({
    #     config_rule_name: "StringWithCharLimit64", # required
    #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.evaluation_results[0].result_recorded_time #=> Time
    #   resp.evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.evaluation_results[0].annotation #=> String
    #   resp.evaluation_results[0].result_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByConfigRule AWS API Documentation
    #
    # @overload get_compliance_details_by_config_rule(params = {})
    # @param [Hash] params ({})
    def get_compliance_details_by_config_rule(params = {}, options = {})
      req = build_request(:get_compliance_details_by_config_rule, params)
      req.send_request(options)
    end

    # Returns the evaluation results for the specified AWS resource. The
    # results indicate which AWS Config rules were used to evaluate the
    # resource, when each rule was last used, and whether the resource
    # complies with each rule.
    #
    # @option params [required, String] :resource_type
    #   The type of the AWS resource for which you want compliance
    #   information.
    #
    # @option params [required, String] :resource_id
    #   The ID of the AWS resource for which you want compliance information.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
    #   `NOT_APPLICABLE`.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetComplianceDetailsByResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceDetailsByResourceResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #   * {Types::GetComplianceDetailsByResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_details_by_resource({
    #     resource_type: "StringWithCharLimit256", # required
    #     resource_id: "BaseResourceId", # required
    #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.evaluation_results[0].result_recorded_time #=> Time
    #   resp.evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.evaluation_results[0].annotation #=> String
    #   resp.evaluation_results[0].result_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByResource AWS API Documentation
    #
    # @overload get_compliance_details_by_resource(params = {})
    # @param [Hash] params ({})
    def get_compliance_details_by_resource(params = {}, options = {})
      req = build_request(:get_compliance_details_by_resource, params)
      req.send_request(options)
    end

    # Returns the number of AWS Config rules that are compliant and
    # noncompliant, up to a maximum of 25 for each.
    #
    # @return [Types::GetComplianceSummaryByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceSummaryByConfigRuleResponse#compliance_summary #compliance_summary} => Types::ComplianceSummary
    #
    # @example Response structure
    #
    #   resp.compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.compliance_summary.non_compliant_resource_count.capped_count #=> Integer
    #   resp.compliance_summary.non_compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.compliance_summary.compliance_summary_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByConfigRule AWS API Documentation
    #
    # @overload get_compliance_summary_by_config_rule(params = {})
    # @param [Hash] params ({})
    def get_compliance_summary_by_config_rule(params = {}, options = {})
      req = build_request(:get_compliance_summary_by_config_rule, params)
      req.send_request(options)
    end

    # Returns the number of resources that are compliant and the number that
    # are noncompliant. You can specify one or more resource types to get
    # these numbers for each resource type. The maximum number returned is
    # 100.
    #
    # @option params [Array<String>] :resource_types
    #   Specify one or more resource types to get the number of resources that
    #   are compliant and the number that are noncompliant for each resource
    #   type.
    #
    #   For this request, you can specify an AWS resource type such as
    #   `AWS::EC2::Instance`. You can specify that the resource type is an AWS
    #   account by specifying `AWS::::Account`.
    #
    # @return [Types::GetComplianceSummaryByResourceTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceSummaryByResourceTypeResponse#compliance_summaries_by_resource_type #compliance_summaries_by_resource_type} => Array&lt;Types::ComplianceSummaryByResourceType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_summary_by_resource_type({
    #     resource_types: ["StringWithCharLimit256"],
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_summaries_by_resource_type #=> Array
    #   resp.compliance_summaries_by_resource_type[0].resource_type #=> String
    #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.compliance_summaries_by_resource_type[0].compliance_summary.non_compliant_resource_count.capped_count #=> Integer
    #   resp.compliance_summaries_by_resource_type[0].compliance_summary.non_compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliance_summary_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByResourceType AWS API Documentation
    #
    # @overload get_compliance_summary_by_resource_type(params = {})
    # @param [Hash] params ({})
    def get_compliance_summary_by_resource_type(params = {}, options = {})
      req = build_request(:get_compliance_summary_by_resource_type, params)
      req.send_request(options)
    end

    # Returns the resource types, the number of each resource type, and the
    # total number of resources that AWS Config is recording in this region
    # for your AWS account.
    #
    # **Example**
    #
    # 1.  AWS Config is recording three resource types in the US East (Ohio)
    #     Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
    #     buckets.
    #
    # 2.  You make a call to the `GetDiscoveredResourceCounts` action and
    #     specify that you want all resource types.
    #
    # 3.  AWS Config returns the following:
    #
    #     * The resource types (EC2 instances, IAM users, and S3 buckets).
    #
    #     * The number of each resource type (25, 20, and 15).
    #
    #     * The total number of all resources (60).
    #
    # The response is paginated. By default, AWS Config lists 100
    # ResourceCount objects on each page. You can customize this number with
    # the `limit` parameter. The response includes a `nextToken` string. To
    # get the next page of results, run the request again and specify the
    # string for the `nextToken` parameter.
    #
    # <note markdown="1"> If you make a call to the GetDiscoveredResourceCounts action, you
    # might not immediately receive resource counts in the following
    # situations:
    #
    #  * You are a new AWS Config customer.
    #
    # * You just enabled resource recording.
    #
    #  It might take a few minutes for AWS Config to record and count your
    # resources. Wait a few minutes and then retry the
    # GetDiscoveredResourceCounts action.
    #
    #  </note>
    #
    # @option params [Array<String>] :resource_types
    #   The comma-separated list that specifies the resource types that you
    #   want AWS Config to return (for example, `"AWS::EC2::Instance"`,
    #   `"AWS::IAM::User"`).
    #
    #   If a value for `resourceTypes` is not specified, AWS Config returns
    #   all resource types that AWS Config is recording in the region for your
    #   account.
    #
    #   <note markdown="1"> If the configuration recorder is turned off, AWS Config returns an
    #   empty list of ResourceCount objects. If the configuration recorder is
    #   not recording a specific resource type (for example, S3 buckets), that
    #   resource type is not returned in the list of ResourceCount objects.
    #
    #    </note>
    #
    # @option params [Integer] :limit
    #   The maximum number of ResourceCount objects returned on each page. The
    #   default is 100. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetDiscoveredResourceCountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiscoveredResourceCountsResponse#total_discovered_resources #total_discovered_resources} => Integer
    #   * {Types::GetDiscoveredResourceCountsResponse#resource_counts #resource_counts} => Array&lt;Types::ResourceCount&gt;
    #   * {Types::GetDiscoveredResourceCountsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_discovered_resource_counts({
    #     resource_types: ["StringWithCharLimit256"],
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.total_discovered_resources #=> Integer
    #   resp.resource_counts #=> Array
    #   resp.resource_counts[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.resource_counts[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetDiscoveredResourceCounts AWS API Documentation
    #
    # @overload get_discovered_resource_counts(params = {})
    # @param [Hash] params ({})
    def get_discovered_resource_counts(params = {}, options = {})
      req = build_request(:get_discovered_resource_counts, params)
      req.send_request(options)
    end

    # Returns a list of configuration items for the specified resource. The
    # list contains details about each state of the resource during the
    # specified time interval. If you specified a retention period to retain
    # your `ConfigurationItems` between a minimum of 30 days and a maximum
    # of 7 years (2557 days), AWS Config returns the `ConfigurationItems`
    # for the specified retention period.
    #
    # The response is paginated. By default, AWS Config returns a limit of
    # 10 configuration items per page. You can customize this number with
    # the `limit` parameter. The response includes a `nextToken` string. To
    # get the next page of results, run the request again and specify the
    # string for the `nextToken` parameter.
    #
    # <note markdown="1"> Each call to the API is limited to span a duration of seven days. It
    # is likely that the number of records returned is smaller than the
    # specified `limit`. In such cases, you can make another call, using the
    # `nextToken`.
    #
    #  </note>
    #
    # @option params [required, String] :resource_type
    #   The resource type.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource (for example., `sg-xxxxxx`).
    #
    # @option params [Time,DateTime,Date,Integer,String] :later_time
    #   The time stamp that indicates a later time. If not specified, current
    #   time is taken.
    #
    # @option params [Time,DateTime,Date,Integer,String] :earlier_time
    #   The time stamp that indicates an earlier time. If not specified, the
    #   action returns paginated results that contain configuration items that
    #   start when the first configuration item was recorded.
    #
    # @option params [String] :chronological_order
    #   The chronological order for configuration items listed. By default,
    #   the results are listed in reverse chronological order.
    #
    # @option params [Integer] :limit
    #   The maximum number of configuration items returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetResourceConfigHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceConfigHistoryResponse#configuration_items #configuration_items} => Array&lt;Types::ConfigurationItem&gt;
    #   * {Types::GetResourceConfigHistoryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_config_history({
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #     resource_id: "ResourceId", # required
    #     later_time: Time.now,
    #     earlier_time: Time.now,
    #     chronological_order: "Reverse", # accepts Reverse, Forward
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_items #=> Array
    #   resp.configuration_items[0].version #=> String
    #   resp.configuration_items[0].account_id #=> String
    #   resp.configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.configuration_items[0].configuration_item_status #=> String, one of "OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"
    #   resp.configuration_items[0].configuration_state_id #=> String
    #   resp.configuration_items[0].configuration_item_md5_hash #=> String
    #   resp.configuration_items[0].arn #=> String
    #   resp.configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.configuration_items[0].resource_id #=> String
    #   resp.configuration_items[0].resource_name #=> String
    #   resp.configuration_items[0].aws_region #=> String
    #   resp.configuration_items[0].availability_zone #=> String
    #   resp.configuration_items[0].resource_creation_time #=> Time
    #   resp.configuration_items[0].tags #=> Hash
    #   resp.configuration_items[0].tags["Name"] #=> String
    #   resp.configuration_items[0].related_events #=> Array
    #   resp.configuration_items[0].related_events[0] #=> String
    #   resp.configuration_items[0].relationships #=> Array
    #   resp.configuration_items[0].relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.configuration_items[0].relationships[0].resource_id #=> String
    #   resp.configuration_items[0].relationships[0].resource_name #=> String
    #   resp.configuration_items[0].relationships[0].relationship_name #=> String
    #   resp.configuration_items[0].configuration #=> String
    #   resp.configuration_items[0].supplementary_configuration #=> Hash
    #   resp.configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceConfigHistory AWS API Documentation
    #
    # @overload get_resource_config_history(params = {})
    # @param [Hash] params ({})
    def get_resource_config_history(params = {}, options = {})
      req = build_request(:get_resource_config_history, params)
      req.send_request(options)
    end

    # Accepts a resource type and returns a list of resource identifiers
    # that are aggregated for a specific resource type across accounts and
    # regions. A resource identifier includes the resource type, ID, (if
    # available) the custom resource name, source account, and source
    # region. You can narrow the results to include only resources that have
    # specific resource IDs, or a resource name, or source account ID, or
    # source region.
    #
    # For example, if the input consists of accountID 12345678910 and the
    # region is us-east-1 for resource type `AWS::EC2::Instance` then the
    # API returns all the EC2 instance identifiers of accountID 12345678910
    # and region us-east-1.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [required, String] :resource_type
    #   The type of resources that you want AWS Config to list in the
    #   response.
    #
    # @option params [Types::ResourceFilters] :filters
    #   Filters the results based on the `ResourceFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource identifiers returned on each page. The
    #   default is 100. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::ListAggregateDiscoveredResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAggregateDiscoveredResourcesResponse#resource_identifiers #resource_identifiers} => Array&lt;Types::AggregateResourceIdentifier&gt;
    #   * {Types::ListAggregateDiscoveredResourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregate_discovered_resources({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #     filters: {
    #       account_id: "AccountId",
    #       resource_id: "ResourceId",
    #       resource_name: "ResourceName",
    #       region: "AwsRegion",
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].source_account_id #=> String
    #   resp.resource_identifiers[0].source_region #=> String
    #   resp.resource_identifiers[0].resource_id #=> String
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.resource_identifiers[0].resource_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListAggregateDiscoveredResources AWS API Documentation
    #
    # @overload list_aggregate_discovered_resources(params = {})
    # @param [Hash] params ({})
    def list_aggregate_discovered_resources(params = {}, options = {})
      req = build_request(:list_aggregate_discovered_resources, params)
      req.send_request(options)
    end

    # Accepts a resource type and returns a list of resource identifiers for
    # the resources of that type. A resource identifier includes the
    # resource type, ID, and (if available) the custom resource name. The
    # results consist of resources that AWS Config has discovered, including
    # those that AWS Config is not currently recording. You can narrow the
    # results to include only resources that have specific resource IDs or a
    # resource name.
    #
    # <note markdown="1"> You can specify either resource IDs or a resource name, but not both,
    # in the same request.
    #
    #  </note>
    #
    # The response is paginated. By default, AWS Config lists 100 resource
    # identifiers on each page. You can customize this number with the
    # `limit` parameter. The response includes a `nextToken` string. To get
    # the next page of results, run the request again and specify the string
    # for the `nextToken` parameter.
    #
    # @option params [required, String] :resource_type
    #   The type of resources that you want AWS Config to list in the
    #   response.
    #
    # @option params [Array<String>] :resource_ids
    #   The IDs of only those resources that you want AWS Config to list in
    #   the response. If you do not specify this parameter, AWS Config lists
    #   all resources of the specified type that it has discovered.
    #
    # @option params [String] :resource_name
    #   The custom name of only those resources that you want AWS Config to
    #   list in the response. If you do not specify this parameter, AWS Config
    #   lists all resources of the specified type that it has discovered.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource identifiers returned on each page. The
    #   default is 100. You cannot specify a number greater than 100. If you
    #   specify 0, AWS Config uses the default.
    #
    # @option params [Boolean] :include_deleted_resources
    #   Specifies whether AWS Config includes deleted resources in the
    #   results. By default, deleted resources are not included.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::ListDiscoveredResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveredResourcesResponse#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::ListDiscoveredResourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources({
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #     resource_ids: ["ResourceId"],
    #     resource_name: "ResourceName",
    #     limit: 1,
    #     include_deleted_resources: false,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.resource_identifiers[0].resource_id #=> String
    #   resp.resource_identifiers[0].resource_name #=> String
    #   resp.resource_identifiers[0].resource_deletion_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListDiscoveredResources AWS API Documentation
    #
    # @overload list_discovered_resources(params = {})
    # @param [Hash] params ({})
    def list_discovered_resources(params = {}, options = {})
      req = build_request(:list_discovered_resources, params)
      req.send_request(options)
    end

    # List the tags for AWS Config resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are `ConfigRule`,
    #   `ConfigurationAggregator` and `AggregatorAuthorization`.
    #
    # @option params [Integer] :limit
    #   The maximum number of tags returned on each page. The limit maximum is
    #   50. You cannot specify a number greater than 50. If you specify 0, AWS
    #   Config uses the default.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Authorizes the aggregator account and region to collect data from the
    # source account and region.
    #
    # @option params [required, String] :authorized_account_id
    #   The 12-digit account ID of the account authorized to aggregate data.
    #
    # @option params [required, String] :authorized_aws_region
    #   The region authorized to collect aggregated data.
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @return [Types::PutAggregationAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAggregationAuthorizationResponse#aggregation_authorization #aggregation_authorization} => Types::AggregationAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_aggregation_authorization({
    #     authorized_account_id: "AccountId", # required
    #     authorized_aws_region: "AwsRegion", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregation_authorization.aggregation_authorization_arn #=> String
    #   resp.aggregation_authorization.authorized_account_id #=> String
    #   resp.aggregation_authorization.authorized_aws_region #=> String
    #   resp.aggregation_authorization.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutAggregationAuthorization AWS API Documentation
    #
    # @overload put_aggregation_authorization(params = {})
    # @param [Hash] params ({})
    def put_aggregation_authorization(params = {}, options = {})
      req = build_request(:put_aggregation_authorization, params)
      req.send_request(options)
    end

    # Adds or updates an AWS Config rule for evaluating whether your AWS
    # resources comply with your desired configurations.
    #
    # You can use this action for custom AWS Config rules and AWS managed
    # Config rules. A custom AWS Config rule is a rule that you develop and
    # maintain. An AWS managed Config rule is a customizable, predefined
    # rule that AWS Config provides.
    #
    # If you are adding a new custom AWS Config rule, you must first create
    # the AWS Lambda function that the rule invokes to evaluate your
    # resources. When you use the `PutConfigRule` action to add the rule to
    # AWS Config, you must specify the Amazon Resource Name (ARN) that AWS
    # Lambda assigns to the function. Specify the ARN for the
    # `SourceIdentifier` key. This key is part of the `Source` object, which
    # is part of the `ConfigRule` object.
    #
    # If you are adding an AWS managed Config rule, specify the rule's
    # identifier for the `SourceIdentifier` key. To reference AWS managed
    # Config rule identifiers, see [About AWS Managed Config Rules][1].
    #
    # For any new rule that you add, specify the `ConfigRuleName` in the
    # `ConfigRule` object. Do not specify the `ConfigRuleArn` or the
    # `ConfigRuleId`. These values are generated by AWS Config for new
    # rules.
    #
    # If you are updating a rule that you added previously, you can specify
    # the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in
    # the `ConfigRule` data type that you use in this request.
    #
    # The maximum number of rules that AWS Config supports is 150.
    #
    # For information about requesting a rule limit increase, see [AWS
    # Config Limits][2] in the *AWS General Reference Guide*.
    #
    # For more information about developing and using AWS Config rules, see
    # [Evaluating AWS Resource Configurations with AWS Config][3] in the
    # *AWS Config Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config
    # [3]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
    #
    # @option params [required, Types::ConfigRule] :config_rule
    #   The rule that you want to add to your account.
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_config_rule({
    #     config_rule: { # required
    #       config_rule_name: "StringWithCharLimit64",
    #       config_rule_arn: "String",
    #       config_rule_id: "String",
    #       description: "EmptiableStringWithCharLimit256",
    #       scope: {
    #         compliance_resource_types: ["StringWithCharLimit256"],
    #         tag_key: "StringWithCharLimit128",
    #         tag_value: "StringWithCharLimit256",
    #         compliance_resource_id: "BaseResourceId",
    #       },
    #       source: { # required
    #         owner: "CUSTOM_LAMBDA", # required, accepts CUSTOM_LAMBDA, AWS
    #         source_identifier: "StringWithCharLimit256", # required
    #         source_details: [
    #           {
    #             event_source: "aws.config", # accepts aws.config
    #             message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #             maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           },
    #         ],
    #       },
    #       input_parameters: "StringWithCharLimit1024",
    #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
    #       created_by: "StringWithCharLimit256",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigRule AWS API Documentation
    #
    # @overload put_config_rule(params = {})
    # @param [Hash] params ({})
    def put_config_rule(params = {}, options = {})
      req = build_request(:put_config_rule, params)
      req.send_request(options)
    end

    # Creates and updates the configuration aggregator with the selected
    # source accounts and regions. The source account can be individual
    # account(s) or an organization.
    #
    # <note markdown="1"> AWS Config should be enabled in source accounts and regions you want
    # to aggregate.
    #
    #  If your source type is an organization, you must be signed in to the
    # master account and all features must be enabled in your organization.
    # AWS Config calls `EnableAwsServiceAccess` API to enable integration
    # between AWS Config and AWS Organizations.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Array<Types::AccountAggregationSource>] :account_aggregation_sources
    #   A list of AccountAggregationSource object.
    #
    # @option params [Types::OrganizationAggregationSource] :organization_aggregation_source
    #   An OrganizationAggregationSource object.
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @return [Types::PutConfigurationAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutConfigurationAggregatorResponse#configuration_aggregator #configuration_aggregator} => Types::ConfigurationAggregator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_aggregator({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     account_aggregation_sources: [
    #       {
    #         account_ids: ["AccountId"], # required
    #         all_aws_regions: false,
    #         aws_regions: ["String"],
    #       },
    #     ],
    #     organization_aggregation_source: {
    #       role_arn: "String", # required
    #       aws_regions: ["String"],
    #       all_aws_regions: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_aggregator.configuration_aggregator_name #=> String
    #   resp.configuration_aggregator.configuration_aggregator_arn #=> String
    #   resp.configuration_aggregator.account_aggregation_sources #=> Array
    #   resp.configuration_aggregator.account_aggregation_sources[0].account_ids #=> Array
    #   resp.configuration_aggregator.account_aggregation_sources[0].account_ids[0] #=> String
    #   resp.configuration_aggregator.account_aggregation_sources[0].all_aws_regions #=> Boolean
    #   resp.configuration_aggregator.account_aggregation_sources[0].aws_regions #=> Array
    #   resp.configuration_aggregator.account_aggregation_sources[0].aws_regions[0] #=> String
    #   resp.configuration_aggregator.organization_aggregation_source.role_arn #=> String
    #   resp.configuration_aggregator.organization_aggregation_source.aws_regions #=> Array
    #   resp.configuration_aggregator.organization_aggregation_source.aws_regions[0] #=> String
    #   resp.configuration_aggregator.organization_aggregation_source.all_aws_regions #=> Boolean
    #   resp.configuration_aggregator.creation_time #=> Time
    #   resp.configuration_aggregator.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationAggregator AWS API Documentation
    #
    # @overload put_configuration_aggregator(params = {})
    # @param [Hash] params ({})
    def put_configuration_aggregator(params = {}, options = {})
      req = build_request(:put_configuration_aggregator, params)
      req.send_request(options)
    end

    # Creates a new configuration recorder to record the selected resource
    # configurations.
    #
    # You can use this action to change the role `roleARN` or the
    # `recordingGroup` of an existing recorder. To change the role, call the
    # action on the existing configuration recorder and specify a role.
    #
    # <note markdown="1"> Currently, you can specify only one configuration recorder per region
    # in your account.
    #
    #  If `ConfigurationRecorder` does not have the **recordingGroup**
    # parameter specified, the default is to record all supported resource
    # types.
    #
    #  </note>
    #
    # @option params [required, Types::ConfigurationRecorder] :configuration_recorder
    #   The configuration recorder object that records each configuration
    #   change made to the resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_recorder({
    #     configuration_recorder: { # required
    #       name: "RecorderName",
    #       role_arn: "String",
    #       recording_group: {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationRecorder AWS API Documentation
    #
    # @overload put_configuration_recorder(params = {})
    # @param [Hash] params ({})
    def put_configuration_recorder(params = {}, options = {})
      req = build_request(:put_configuration_recorder, params)
      req.send_request(options)
    end

    # Creates a delivery channel object to deliver configuration information
    # to an Amazon S3 bucket and Amazon SNS topic.
    #
    # Before you can create a delivery channel, you must create a
    # configuration recorder.
    #
    # You can use this action to change the Amazon S3 bucket or an Amazon
    # SNS topic of the existing delivery channel. To change the Amazon S3
    # bucket or an Amazon SNS topic, call this action and specify the
    # changed values for the S3 bucket and the SNS topic. If you specify a
    # different value for either the S3 bucket or the SNS topic, this action
    # will keep the existing value for the parameter that is not changed.
    #
    # <note markdown="1"> You can have only one delivery channel per region in your account.
    #
    #  </note>
    #
    # @option params [required, Types::DeliveryChannel] :delivery_channel
    #   The configuration delivery channel object that delivers the
    #   configuration information to an Amazon S3 bucket and to an Amazon SNS
    #   topic.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_delivery_channel({
    #     delivery_channel: { # required
    #       name: "ChannelName",
    #       s3_bucket_name: "String",
    #       s3_key_prefix: "String",
    #       sns_topic_arn: "String",
    #       config_snapshot_delivery_properties: {
    #         delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutDeliveryChannel AWS API Documentation
    #
    # @overload put_delivery_channel(params = {})
    # @param [Hash] params ({})
    def put_delivery_channel(params = {}, options = {})
      req = build_request(:put_delivery_channel, params)
      req.send_request(options)
    end

    # Used by an AWS Lambda function to deliver evaluation results to AWS
    # Config. This action is required in every AWS Lambda function that is
    # invoked by an AWS Config rule.
    #
    # @option params [Array<Types::Evaluation>] :evaluations
    #   The assessments that the AWS Lambda function performs. Each evaluation
    #   identifies an AWS resource and indicates whether it complies with the
    #   AWS Config rule that invokes the AWS Lambda function.
    #
    # @option params [required, String] :result_token
    #   An encrypted token that associates an evaluation with an AWS Config
    #   rule. Identifies the rule and the event that triggered the evaluation.
    #
    # @option params [Boolean] :test_mode
    #   Use this parameter to specify a test run for `PutEvaluations`. You can
    #   verify whether your AWS Lambda function will deliver evaluation
    #   results to AWS Config. No updates occur to your existing evaluations,
    #   and evaluation results are not sent to AWS Config.
    #
    #   <note markdown="1"> When `TestMode` is `true`, `PutEvaluations` doesn't require a valid
    #   value for the `ResultToken` parameter, but the value cannot be null.
    #
    #    </note>
    #
    # @return [Types::PutEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEvaluationsResponse#failed_evaluations #failed_evaluations} => Array&lt;Types::Evaluation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_evaluations({
    #     evaluations: [
    #       {
    #         compliance_resource_type: "StringWithCharLimit256", # required
    #         compliance_resource_id: "BaseResourceId", # required
    #         compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #         annotation: "StringWithCharLimit256",
    #         ordering_timestamp: Time.now, # required
    #       },
    #     ],
    #     result_token: "String", # required
    #     test_mode: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_evaluations #=> Array
    #   resp.failed_evaluations[0].compliance_resource_type #=> String
    #   resp.failed_evaluations[0].compliance_resource_id #=> String
    #   resp.failed_evaluations[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.failed_evaluations[0].annotation #=> String
    #   resp.failed_evaluations[0].ordering_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutEvaluations AWS API Documentation
    #
    # @overload put_evaluations(params = {})
    # @param [Hash] params ({})
    def put_evaluations(params = {}, options = {})
      req = build_request(:put_evaluations, params)
      req.send_request(options)
    end

    # Adds or updates the remediation configuration with a specific AWS
    # Config rule with the selected target or action. The API creates the
    # `RemediationConfiguration` object for the AWS Config rule. The AWS
    # Config rule must already exist for you to add a remediation
    # configuration. The target (SSM document) must exist and have
    # permissions to use the target.
    #
    # @option params [required, Array<Types::RemediationConfiguration>] :remediation_configurations
    #   A list of remediation configuration objects.
    #
    # @return [Types::PutRemediationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRemediationConfigurationsResponse#failed_batches #failed_batches} => Array&lt;Types::FailedRemediationBatch&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_remediation_configurations({
    #     remediation_configurations: [ # required
    #       {
    #         config_rule_name: "StringWithCharLimit64", # required
    #         target_type: "SSM_DOCUMENT", # required, accepts SSM_DOCUMENT
    #         target_id: "StringWithCharLimit256", # required
    #         target_version: "String",
    #         parameters: {
    #           "StringWithCharLimit256" => {
    #             resource_value: {
    #               value: "RESOURCE_ID", # accepts RESOURCE_ID
    #             },
    #             static_value: {
    #               values: ["StringWithCharLimit256"],
    #             },
    #           },
    #         },
    #         resource_type: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_batches #=> Array
    #   resp.failed_batches[0].failure_message #=> String
    #   resp.failed_batches[0].failed_items #=> Array
    #   resp.failed_batches[0].failed_items[0].config_rule_name #=> String
    #   resp.failed_batches[0].failed_items[0].target_type #=> String, one of "SSM_DOCUMENT"
    #   resp.failed_batches[0].failed_items[0].target_id #=> String
    #   resp.failed_batches[0].failed_items[0].target_version #=> String
    #   resp.failed_batches[0].failed_items[0].parameters #=> Hash
    #   resp.failed_batches[0].failed_items[0].parameters["StringWithCharLimit256"].resource_value.value #=> String, one of "RESOURCE_ID"
    #   resp.failed_batches[0].failed_items[0].parameters["StringWithCharLimit256"].static_value.values #=> Array
    #   resp.failed_batches[0].failed_items[0].parameters["StringWithCharLimit256"].static_value.values[0] #=> String
    #   resp.failed_batches[0].failed_items[0].resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationConfigurations AWS API Documentation
    #
    # @overload put_remediation_configurations(params = {})
    # @param [Hash] params ({})
    def put_remediation_configurations(params = {}, options = {})
      req = build_request(:put_remediation_configurations, params)
      req.send_request(options)
    end

    # Creates and updates the retention configuration with details about
    # retention period (number of days) that AWS Config stores your
    # historical information. The API creates the `RetentionConfiguration`
    # object and names the object as **default**. When you have a
    # `RetentionConfiguration` object named **default**, calling the API
    # modifies the default object.
    #
    # <note markdown="1"> Currently, AWS Config supports only one retention configuration per
    # region in your account.
    #
    #  </note>
    #
    # @option params [required, Integer] :retention_period_in_days
    #   Number of days AWS Config stores your historical information.
    #
    #   <note markdown="1"> Currently, only applicable to the configuration item history.
    #
    #    </note>
    #
    # @return [Types::PutRetentionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRetentionConfigurationResponse#retention_configuration #retention_configuration} => Types::RetentionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_configuration({
    #     retention_period_in_days: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_configuration.name #=> String
    #   resp.retention_configuration.retention_period_in_days #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRetentionConfiguration AWS API Documentation
    #
    # @overload put_retention_configuration(params = {})
    # @param [Hash] params ({})
    def put_retention_configuration(params = {}, options = {})
      req = build_request(:put_retention_configuration, params)
      req.send_request(options)
    end

    # Accepts a structured query language (SQL) `SELECT` command, performs
    # the corresponding search, and returns resource configurations matching
    # the properties.
    #
    # For more information about query components, see the [ **Query
    # Components** ][1] section in the AWS Config Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/query-components.html
    #
    # @option params [required, String] :expression
    #   The SQL query `SELECT` command.
    #
    # @option params [Integer] :limit
    #   The maximum number of query results returned on each page.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::SelectResourceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SelectResourceConfigResponse#results #results} => Array&lt;String&gt;
    #   * {Types::SelectResourceConfigResponse#query_info #query_info} => Types::QueryInfo
    #   * {Types::SelectResourceConfigResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.select_resource_config({
    #     expression: "Expression", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0] #=> String
    #   resp.query_info.select_fields #=> Array
    #   resp.query_info.select_fields[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectResourceConfig AWS API Documentation
    #
    # @overload select_resource_config(params = {})
    # @param [Hash] params ({})
    def select_resource_config(params = {}, options = {})
      req = build_request(:select_resource_config, params)
      req.send_request(options)
    end

    # Runs an on-demand evaluation for the specified AWS Config rules
    # against the last known configuration state of the resources. Use
    # `StartConfigRulesEvaluation` when you want to test that a rule you
    # updated is working as expected. `StartConfigRulesEvaluation` does not
    # re-record the latest configuration state for your resources. It
    # re-runs an evaluation against the last known state of your resources.
    #
    # You can specify up to 25 AWS Config rules per request.
    #
    # An existing `StartConfigRulesEvaluation` call for the specified rules
    # must complete before you can call the API again. If you chose to have
    # AWS Config stream to an Amazon SNS topic, you will receive a
    # `ConfigRuleEvaluationStarted` notification when the evaluation starts.
    #
    # <note markdown="1"> You don't need to call the `StartConfigRulesEvaluation` API to run an
    # evaluation for a new rule. When you create a rule, AWS Config
    # evaluates your resources against the rule automatically.
    #
    #  </note>
    #
    # The `StartConfigRulesEvaluation` API is useful if you want to run
    # on-demand evaluations, such as the following example:
    #
    # 1.  You have a custom rule that evaluates your IAM resources every 24
    #     hours.
    #
    # 2.  You update your Lambda function to add additional conditions to
    #     your rule.
    #
    # 3.  Instead of waiting for the next periodic evaluation, you call the
    #     `StartConfigRulesEvaluation` API.
    #
    # 4.  AWS Config invokes your Lambda function and evaluates your IAM
    #     resources.
    #
    # 5.  Your custom rule will still run periodic evaluations every 24
    #     hours.
    #
    # @option params [Array<String>] :config_rule_names
    #   The list of names of AWS Config rules that you want to run evaluations
    #   for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_config_rules_evaluation({
    #     config_rule_names: ["StringWithCharLimit64"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluation AWS API Documentation
    #
    # @overload start_config_rules_evaluation(params = {})
    # @param [Hash] params ({})
    def start_config_rules_evaluation(params = {}, options = {})
      req = build_request(:start_config_rules_evaluation, params)
      req.send_request(options)
    end

    # Starts recording configurations of the AWS resources you have selected
    # to record in your AWS account.
    #
    # You must have created at least one delivery channel to successfully
    # start the configuration recorder.
    #
    # @option params [required, String] :configuration_recorder_name
    #   The name of the recorder object that records each configuration change
    #   made to the resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_configuration_recorder({
    #     configuration_recorder_name: "RecorderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigurationRecorder AWS API Documentation
    #
    # @overload start_configuration_recorder(params = {})
    # @param [Hash] params ({})
    def start_configuration_recorder(params = {}, options = {})
      req = build_request(:start_configuration_recorder, params)
      req.send_request(options)
    end

    # Runs an on-demand remediation for the specified AWS Config rules
    # against the last known remediation configuration. It runs an execution
    # against the current state of your resources. Remediation execution is
    # asynchronous.
    #
    # You can specify up to 100 resource keys per request. An existing
    # StartRemediationExecution call for the specified resource keys must
    # complete before you can call the API again.
    #
    # @option params [required, String] :config_rule_name
    #   The list of names of AWS Config rules that you want to run remediation
    #   execution for.
    #
    # @option params [required, Array<Types::ResourceKey>] :resource_keys
    #   A list of resource keys to be processed with the current request. Each
    #   element in the list consists of the resource type and resource ID.
    #
    # @return [Types::StartRemediationExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRemediationExecutionResponse#failure_message #failure_message} => String
    #   * {Types::StartRemediationExecutionResponse#failed_items #failed_items} => Array&lt;Types::ResourceKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_remediation_execution({
    #     config_rule_name: "StringWithCharLimit64", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::CodePipeline::Pipeline
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failure_message #=> String
    #   resp.failed_items #=> Array
    #   resp.failed_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::DynamoDB::Table", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::WAF::RuleGroup", "AWS::WAFRegional::RuleGroup", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::CodePipeline::Pipeline"
    #   resp.failed_items[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartRemediationExecution AWS API Documentation
    #
    # @overload start_remediation_execution(params = {})
    # @param [Hash] params ({})
    def start_remediation_execution(params = {}, options = {})
      req = build_request(:start_remediation_execution, params)
      req.send_request(options)
    end

    # Stops recording configurations of the AWS resources you have selected
    # to record in your AWS account.
    #
    # @option params [required, String] :configuration_recorder_name
    #   The name of the recorder object that records each configuration change
    #   made to the resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_configuration_recorder({
    #     configuration_recorder_name: "RecorderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StopConfigurationRecorder AWS API Documentation
    #
    # @overload stop_configuration_recorder(params = {})
    # @param [Hash] params ({})
    def stop_configuration_recorder(params = {}, options = {})
      req = build_request(:stop_configuration_recorder, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # resourceArn. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are deleted as well.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are `ConfigRule`,
    #   `ConfigurationAggregator` and `AggregatorAuthorization`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of tag object.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are `ConfigRule`,
    #   `ConfigurationAggregator` and `AggregatorAuthorization`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-configservice'
      context[:gem_version] = '1.30.0'
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
