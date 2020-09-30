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

Aws::Plugins::GlobalConfiguration.add_identifier(:configservice)

module Aws::ConfigService
  # An API client for ConfigService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConfigService::Client.new(
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #   resp.unprocessed_resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
    #   resp.base_configuration_items[0].resource_id #=> String
    #   resp.base_configuration_items[0].resource_name #=> String
    #   resp.base_configuration_items[0].aws_region #=> String
    #   resp.base_configuration_items[0].availability_zone #=> String
    #   resp.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.base_configuration_items[0].configuration #=> String
    #   resp.base_configuration_items[0].supplementary_configuration #=> Hash
    #   resp.base_configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #   resp.unprocessed_resource_keys #=> Array
    #   resp.unprocessed_resource_keys[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #     config_rule_name: "ConfigRuleName", # required
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

    # Deletes the specified conformance pack and all the AWS Config rules,
    # remediation actions, and all evaluation results within that
    # conformance pack.
    #
    # AWS Config sets the conformance pack to `DELETE_IN_PROGRESS` until the
    # deletion is complete. You cannot update a conformance pack while it is
    # in this state.
    #
    # @option params [required, String] :conformance_pack_name
    #   Name of the conformance pack you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conformance_pack({
    #     conformance_pack_name: "ConformancePackName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConformancePack AWS API Documentation
    #
    # @overload delete_conformance_pack(params = {})
    # @param [Hash] params ({})
    def delete_conformance_pack(params = {}, options = {})
      req = build_request(:delete_conformance_pack, params)
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

    # Deletes the specified organization config rule and all of its
    # evaluation results from all member accounts in that organization.
    #
    # Only a master account and a delegated administrator account can delete
    # an organization config rule. When calling this API with a delegated
    # administrator, you must ensure AWS Organizations
    # `ListDelegatedAdministrator` permissions are added.
    #
    # AWS Config sets the state of a rule to DELETE\_IN\_PROGRESS until the
    # deletion is complete. You cannot update a rule while it is in this
    # state.
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name of organization config rule that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization_config_rule({
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteOrganizationConfigRule AWS API Documentation
    #
    # @overload delete_organization_config_rule(params = {})
    # @param [Hash] params ({})
    def delete_organization_config_rule(params = {}, options = {})
      req = build_request(:delete_organization_config_rule, params)
      req.send_request(options)
    end

    # Deletes the specified organization conformance pack and all of the
    # config rules and remediation actions from all member accounts in that
    # organization.
    #
    # Only a master account or a delegated administrator account can delete
    # an organization conformance pack. When calling this API with a
    # delegated administrator, you must ensure AWS Organizations
    # `ListDelegatedAdministrator` permissions are added.
    #
    # AWS Config sets the state of a conformance pack to
    # DELETE\_IN\_PROGRESS until the deletion is complete. You cannot update
    # a conformance pack while it is in this state.
    #
    # @option params [required, String] :organization_conformance_pack_name
    #   The name of organization conformance pack that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization_conformance_pack({
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteOrganizationConformancePack AWS API Documentation
    #
    # @overload delete_organization_conformance_pack(params = {})
    # @param [Hash] params ({})
    def delete_organization_conformance_pack(params = {}, options = {})
      req = build_request(:delete_organization_conformance_pack, params)
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
    #     config_rule_name: "ConfigRuleName", # required
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

    # Deletes one or more remediation exceptions mentioned in the resource
    # keys.
    #
    # <note markdown="1"> AWS Config generates a remediation exception when a problem occurs
    # executing a remediation action to a specific resource. Remediation
    # exceptions blocks auto-remediation until the exception is cleared.
    #
    #  </note>
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want to delete
    #   remediation exception configuration.
    #
    # @option params [required, Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. AWS Config adds exception for each resource key. For
    #   example, AWS Config adds 3 exceptions for 3 resource keys.
    #
    # @return [Types::DeleteRemediationExceptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRemediationExceptionsResponse#failed_batches #failed_batches} => Array&lt;Types::FailedDeleteRemediationExceptionsBatch&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remediation_exceptions({
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_batches #=> Array
    #   resp.failed_batches[0].failure_message #=> String
    #   resp.failed_batches[0].failed_items #=> Array
    #   resp.failed_batches[0].failed_items[0].resource_type #=> String
    #   resp.failed_batches[0].failed_items[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteRemediationExceptions AWS API Documentation
    #
    # @overload delete_remediation_exceptions(params = {})
    # @param [Hash] params ({})
    def delete_remediation_exceptions(params = {}, options = {})
      req = build_request(:delete_remediation_exceptions, params)
      req.send_request(options)
    end

    # Records the configuration state for a custom resource that has been
    # deleted. This API records a new ConfigurationItem with a
    # ResourceDeleted status. You can retrieve the ConfigurationItems
    # recorded for this resource in your AWS Config History.
    #
    # @option params [required, String] :resource_type
    #   The type of the resource.
    #
    # @option params [required, String] :resource_id
    #   Unique identifier of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_config({
    #     resource_type: "ResourceTypeString", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteResourceConfig AWS API Documentation
    #
    # @overload delete_resource_config(params = {})
    # @param [Hash] params ({})
    def delete_resource_config(params = {}, options = {})
      req = build_request(:delete_resource_config, params)
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
    # `nextToken`, the results are displayed on the next page.
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #     config_rule_names: ["ConfigRuleName"],
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
    #     config_rule_names: ["ConfigRuleName"],
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
    #   resp.config_rules_evaluation_status[0].last_deactivated_time #=> Time
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
    #     config_rule_names: ["ConfigRuleName"],
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #   resp.configuration_aggregators[0].created_by #=> String
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
    #   resp.configuration_recorders[0].recording_group.resource_types[0] #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorders AWS API Documentation
    #
    # @overload describe_configuration_recorders(params = {})
    # @param [Hash] params ({})
    def describe_configuration_recorders(params = {}, options = {})
      req = build_request(:describe_configuration_recorders, params)
      req.send_request(options)
    end

    # Returns compliance details for each rule in that conformance pack.
    #
    # <note markdown="1"> You must provide exact rule names.
    #
    #  </note>
    #
    # @option params [required, String] :conformance_pack_name
    #   Name of the conformance pack.
    #
    # @option params [Types::ConformancePackComplianceFilters] :filters
    #   A `ConformancePackComplianceFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of AWS Config rules within a conformance pack are
    #   returned on each page.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::DescribeConformancePackComplianceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConformancePackComplianceResponse#conformance_pack_name #conformance_pack_name} => String
    #   * {Types::DescribeConformancePackComplianceResponse#conformance_pack_rule_compliance_list #conformance_pack_rule_compliance_list} => Array&lt;Types::ConformancePackRuleCompliance&gt;
    #   * {Types::DescribeConformancePackComplianceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_pack_compliance({
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_name #=> String
    #   resp.conformance_pack_rule_compliance_list #=> Array
    #   resp.conformance_pack_rule_compliance_list[0].config_rule_name #=> String
    #   resp.conformance_pack_rule_compliance_list[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackCompliance AWS API Documentation
    #
    # @overload describe_conformance_pack_compliance(params = {})
    # @param [Hash] params ({})
    def describe_conformance_pack_compliance(params = {}, options = {})
      req = build_request(:describe_conformance_pack_compliance, params)
      req.send_request(options)
    end

    # Provides one or more conformance packs deployment status.
    #
    # <note markdown="1"> If there are no conformance packs then you will see an empty result.
    #
    #  </note>
    #
    # @option params [Array<String>] :conformance_pack_names
    #   Comma-separated list of conformance pack names.
    #
    # @option params [Integer] :limit
    #   The maximum number of conformance packs status returned on each page.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::DescribeConformancePackStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConformancePackStatusResponse#conformance_pack_status_details #conformance_pack_status_details} => Array&lt;Types::ConformancePackStatusDetail&gt;
    #   * {Types::DescribeConformancePackStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_pack_status({
    #     conformance_pack_names: ["ConformancePackName"],
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_status_details #=> Array
    #   resp.conformance_pack_status_details[0].conformance_pack_name #=> String
    #   resp.conformance_pack_status_details[0].conformance_pack_id #=> String
    #   resp.conformance_pack_status_details[0].conformance_pack_arn #=> String
    #   resp.conformance_pack_status_details[0].conformance_pack_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.conformance_pack_status_details[0].stack_arn #=> String
    #   resp.conformance_pack_status_details[0].conformance_pack_status_reason #=> String
    #   resp.conformance_pack_status_details[0].last_update_requested_time #=> Time
    #   resp.conformance_pack_status_details[0].last_update_completed_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePackStatus AWS API Documentation
    #
    # @overload describe_conformance_pack_status(params = {})
    # @param [Hash] params ({})
    def describe_conformance_pack_status(params = {}, options = {})
      req = build_request(:describe_conformance_pack_status, params)
      req.send_request(options)
    end

    # Returns a list of one or more conformance packs.
    #
    # @option params [Array<String>] :conformance_pack_names
    #   Comma-separated list of conformance pack names for which you want
    #   details. If you do not specify any names, AWS Config returns details
    #   for all your conformance packs.
    #
    # @option params [Integer] :limit
    #   The maximum number of conformance packs returned on each page.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::DescribeConformancePacksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConformancePacksResponse#conformance_pack_details #conformance_pack_details} => Array&lt;Types::ConformancePackDetail&gt;
    #   * {Types::DescribeConformancePacksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_packs({
    #     conformance_pack_names: ["ConformancePackName"],
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_details #=> Array
    #   resp.conformance_pack_details[0].conformance_pack_name #=> String
    #   resp.conformance_pack_details[0].conformance_pack_arn #=> String
    #   resp.conformance_pack_details[0].conformance_pack_id #=> String
    #   resp.conformance_pack_details[0].delivery_s3_bucket #=> String
    #   resp.conformance_pack_details[0].delivery_s3_key_prefix #=> String
    #   resp.conformance_pack_details[0].conformance_pack_input_parameters #=> Array
    #   resp.conformance_pack_details[0].conformance_pack_input_parameters[0].parameter_name #=> String
    #   resp.conformance_pack_details[0].conformance_pack_input_parameters[0].parameter_value #=> String
    #   resp.conformance_pack_details[0].last_update_requested_time #=> Time
    #   resp.conformance_pack_details[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConformancePacks AWS API Documentation
    #
    # @overload describe_conformance_packs(params = {})
    # @param [Hash] params ({})
    def describe_conformance_packs(params = {}, options = {})
      req = build_request(:describe_conformance_packs, params)
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

    # Provides organization config rule deployment status for an
    # organization.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added.
    #
    # <note markdown="1"> The status is not considered successful until organization config rule
    # is successfully deployed in all the member accounts with an exception
    # of excluded accounts.
    #
    #  When you specify the limit and the next token, you receive a paginated
    # response. Limit and next token are not applicable if you specify
    # organization config rule names. It is only applicable, when you
    # request all the organization config rules.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   The names of organization config rules for which you want status
    #   details. If you do not specify any names, AWS Config returns details
    #   for all your organization AWS Confg rules.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConfigRuleStatuses` returned on
    #   each page. If you do no specify a number, AWS Config uses the default.
    #   The default is 100.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeOrganizationConfigRuleStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigRuleStatusesResponse#organization_config_rule_statuses #organization_config_rule_statuses} => Array&lt;Types::OrganizationConfigRuleStatus&gt;
    #   * {Types::DescribeOrganizationConfigRuleStatusesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_config_rule_statuses({
    #     organization_config_rule_names: ["StringWithCharLimit64"],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_config_rule_statuses #=> Array
    #   resp.organization_config_rule_statuses[0].organization_config_rule_name #=> String
    #   resp.organization_config_rule_statuses[0].organization_rule_status #=> String, one of "CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.organization_config_rule_statuses[0].error_code #=> String
    #   resp.organization_config_rule_statuses[0].error_message #=> String
    #   resp.organization_config_rule_statuses[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRuleStatuses AWS API Documentation
    #
    # @overload describe_organization_config_rule_statuses(params = {})
    # @param [Hash] params ({})
    def describe_organization_config_rule_statuses(params = {}, options = {})
      req = build_request(:describe_organization_config_rule_statuses, params)
      req.send_request(options)
    end

    # Returns a list of organization config rules.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added. 
    #
    # <note markdown="1"> When you specify the limit and the next token, you receive a paginated
    # response. Limit and next token are not applicable if you specify
    # organization config rule names. It is only applicable, when you
    # request all the organization config rules.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   The names of organization config rules for which you want details. If
    #   you do not specify any names, AWS Config returns details for all your
    #   organization config rules.
    #
    # @option params [Integer] :limit
    #   The maximum number of organization config rules returned on each page.
    #   If you do no specify a number, AWS Config uses the default. The
    #   default is 100.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeOrganizationConfigRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigRulesResponse#organization_config_rules #organization_config_rules} => Array&lt;Types::OrganizationConfigRule&gt;
    #   * {Types::DescribeOrganizationConfigRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_config_rules({
    #     organization_config_rule_names: ["StringWithCharLimit64"],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_config_rules #=> Array
    #   resp.organization_config_rules[0].organization_config_rule_name #=> String
    #   resp.organization_config_rules[0].organization_config_rule_arn #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.description #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.rule_identifier #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.input_parameters #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.resource_types_scope #=> Array
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.resource_types_scope[0] #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.resource_id_scope #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.tag_key_scope #=> String
    #   resp.organization_config_rules[0].organization_managed_rule_metadata.tag_value_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.description #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.lambda_function_arn #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.organization_config_rule_trigger_types #=> Array
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.organization_config_rule_trigger_types[0] #=> String, one of "ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification", "ScheduledNotification"
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.input_parameters #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.resource_types_scope #=> Array
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.resource_types_scope[0] #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.resource_id_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.tag_key_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_rule_metadata.tag_value_scope #=> String
    #   resp.organization_config_rules[0].excluded_accounts #=> Array
    #   resp.organization_config_rules[0].excluded_accounts[0] #=> String
    #   resp.organization_config_rules[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConfigRules AWS API Documentation
    #
    # @overload describe_organization_config_rules(params = {})
    # @param [Hash] params ({})
    def describe_organization_config_rules(params = {}, options = {})
      req = build_request(:describe_organization_config_rules, params)
      req.send_request(options)
    end

    # Provides organization conformance pack deployment status for an
    # organization.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added.
    #
    # <note markdown="1"> The status is not considered successful until organization conformance
    # pack is successfully deployed in all the member accounts with an
    # exception of excluded accounts.
    #
    #  When you specify the limit and the next token, you receive a paginated
    # response. Limit and next token are not applicable if you specify
    # organization conformance pack names. They are only applicable, when
    # you request all the organization conformance packs.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_conformance_pack_names
    #   The names of organization conformance packs for which you want status
    #   details. If you do not specify any names, AWS Config returns details
    #   for all your organization conformance packs.
    #
    # @option params [Integer] :limit
    #   The maximum number of OrganizationConformancePackStatuses returned on
    #   each page. If you do no specify a number, AWS Config uses the default.
    #   The default is 100.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeOrganizationConformancePackStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConformancePackStatusesResponse#organization_conformance_pack_statuses #organization_conformance_pack_statuses} => Array&lt;Types::OrganizationConformancePackStatus&gt;
    #   * {Types::DescribeOrganizationConformancePackStatusesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_conformance_pack_statuses({
    #     organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_conformance_pack_statuses #=> Array
    #   resp.organization_conformance_pack_statuses[0].organization_conformance_pack_name #=> String
    #   resp.organization_conformance_pack_statuses[0].status #=> String, one of "CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.organization_conformance_pack_statuses[0].error_code #=> String
    #   resp.organization_conformance_pack_statuses[0].error_message #=> String
    #   resp.organization_conformance_pack_statuses[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePackStatuses AWS API Documentation
    #
    # @overload describe_organization_conformance_pack_statuses(params = {})
    # @param [Hash] params ({})
    def describe_organization_conformance_pack_statuses(params = {}, options = {})
      req = build_request(:describe_organization_conformance_pack_statuses, params)
      req.send_request(options)
    end

    # Returns a list of organization conformance packs.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added.
    #
    # <note markdown="1"> When you specify the limit and the next token, you receive a paginated
    # response.
    #
    #  Limit and next token are not applicable if you specify organization
    # conformance packs names. They are only applicable, when you request
    # all the organization conformance packs.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_conformance_pack_names
    #   The name that you assign to an organization conformance pack.
    #
    # @option params [Integer] :limit
    #   The maximum number of organization config packs returned on each page.
    #   If you do no specify a number, AWS Config uses the default. The
    #   default is 100.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeOrganizationConformancePacksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConformancePacksResponse#organization_conformance_packs #organization_conformance_packs} => Array&lt;Types::OrganizationConformancePack&gt;
    #   * {Types::DescribeOrganizationConformancePacksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_conformance_packs({
    #     organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_conformance_packs #=> Array
    #   resp.organization_conformance_packs[0].organization_conformance_pack_name #=> String
    #   resp.organization_conformance_packs[0].organization_conformance_pack_arn #=> String
    #   resp.organization_conformance_packs[0].delivery_s3_bucket #=> String
    #   resp.organization_conformance_packs[0].delivery_s3_key_prefix #=> String
    #   resp.organization_conformance_packs[0].conformance_pack_input_parameters #=> Array
    #   resp.organization_conformance_packs[0].conformance_pack_input_parameters[0].parameter_name #=> String
    #   resp.organization_conformance_packs[0].conformance_pack_input_parameters[0].parameter_value #=> String
    #   resp.organization_conformance_packs[0].excluded_accounts #=> Array
    #   resp.organization_conformance_packs[0].excluded_accounts[0] #=> String
    #   resp.organization_conformance_packs[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeOrganizationConformancePacks AWS API Documentation
    #
    # @overload describe_organization_conformance_packs(params = {})
    # @param [Hash] params ({})
    def describe_organization_conformance_packs(params = {}, options = {})
      req = build_request(:describe_organization_conformance_packs, params)
      req.send_request(options)
    end

    # Returns a list of all pending aggregation requests.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is maximum. If you specify 0, AWS Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
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
    #     config_rule_names: ["ConfigRuleName"], # required
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
    #   resp.remediation_configurations[0].automatic #=> Boolean
    #   resp.remediation_configurations[0].execution_controls.ssm_controls.concurrent_execution_rate_percentage #=> Integer
    #   resp.remediation_configurations[0].execution_controls.ssm_controls.error_percentage #=> Integer
    #   resp.remediation_configurations[0].maximum_automatic_attempts #=> Integer
    #   resp.remediation_configurations[0].retry_attempt_seconds #=> Integer
    #   resp.remediation_configurations[0].arn #=> String
    #   resp.remediation_configurations[0].created_by_service #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationConfigurations AWS API Documentation
    #
    # @overload describe_remediation_configurations(params = {})
    # @param [Hash] params ({})
    def describe_remediation_configurations(params = {}, options = {})
      req = build_request(:describe_remediation_configurations, params)
      req.send_request(options)
    end

    # Returns the details of one or more remediation exceptions. A detailed
    # view of a remediation exception for a set of resources that includes
    # an explanation of an exception and the time when the exception will be
    # deleted. When you specify the limit and the next token, you receive a
    # paginated response.
    #
    # <note markdown="1"> AWS Config generates a remediation exception when a problem occurs
    # executing a remediation action to a specific resource. Remediation
    # exceptions blocks auto-remediation until the exception is cleared.
    #
    #  When you specify the limit and the next token, you receive a paginated
    # response.
    #
    #  Limit and next token are not applicable if you request resources in
    # batch. It is only applicable, when you request all resources.
    #
    #  </note>
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule.
    #
    # @option params [Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. AWS Config adds exception for each resource key. For
    #   example, AWS Config adds 3 exceptions for 3 resource keys.
    #
    # @option params [Integer] :limit
    #   The maximum number of RemediationExceptionResourceKey returned on each
    #   page. The default is 25. If you specify 0, AWS Config uses the
    #   default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::DescribeRemediationExceptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRemediationExceptionsResponse#remediation_exceptions #remediation_exceptions} => Array&lt;Types::RemediationException&gt;
    #   * {Types::DescribeRemediationExceptionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_exceptions({
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024",
    #       },
    #     ],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.remediation_exceptions #=> Array
    #   resp.remediation_exceptions[0].config_rule_name #=> String
    #   resp.remediation_exceptions[0].resource_type #=> String
    #   resp.remediation_exceptions[0].resource_id #=> String
    #   resp.remediation_exceptions[0].message #=> String
    #   resp.remediation_exceptions[0].expiration_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeRemediationExceptions AWS API Documentation
    #
    # @overload describe_remediation_exceptions(params = {})
    # @param [Hash] params ({})
    def describe_remediation_exceptions(params = {}, options = {})
      req = build_request(:describe_remediation_exceptions, params)
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_execution_status({
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.remediation_execution_statuses #=> Array
    #   resp.remediation_execution_statuses[0].resource_key.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    # `nextToken`, the results are displayed on the next page.
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #       resource_type: "AWS::EC2::CustomerGateway", # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #       resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.configuration_item.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #   resp.configuration_item.relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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

    # Returns compliance details of a conformance pack for all AWS resources
    # that are monitered by conformance pack.
    #
    # @option params [required, String] :conformance_pack_name
    #   Name of the conformance pack.
    #
    # @option params [Types::ConformancePackEvaluationFilters] :filters
    #   A `ConformancePackEvaluationFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. If you
    #   do no specify a number, AWS Config uses the default. The default is
    #   100.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::GetConformancePackComplianceDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConformancePackComplianceDetailsResponse#conformance_pack_name #conformance_pack_name} => String
    #   * {Types::GetConformancePackComplianceDetailsResponse#conformance_pack_rule_evaluation_results #conformance_pack_rule_evaluation_results} => Array&lt;Types::ConformancePackEvaluationResult&gt;
    #   * {Types::GetConformancePackComplianceDetailsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conformance_pack_compliance_details({
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT
    #       resource_type: "StringWithCharLimit256",
    #       resource_ids: ["StringWithCharLimit256"],
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_name #=> String
    #   resp.conformance_pack_rule_evaluation_results #=> Array
    #   resp.conformance_pack_rule_evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.conformance_pack_rule_evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.conformance_pack_rule_evaluation_results[0].result_recorded_time #=> Time
    #   resp.conformance_pack_rule_evaluation_results[0].annotation #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceDetails AWS API Documentation
    #
    # @overload get_conformance_pack_compliance_details(params = {})
    # @param [Hash] params ({})
    def get_conformance_pack_compliance_details(params = {}, options = {})
      req = build_request(:get_conformance_pack_compliance_details, params)
      req.send_request(options)
    end

    # Returns compliance details for the conformance pack based on the
    # cumulative compliance results of all the rules in that conformance
    # pack.
    #
    # @option params [required, Array<String>] :conformance_pack_names
    #   Names of conformance packs.
    #
    # @option params [Integer] :limit
    #   The maximum number of conformance packs returned on each page.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetConformancePackComplianceSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConformancePackComplianceSummaryResponse#conformance_pack_compliance_summary_list #conformance_pack_compliance_summary_list} => Array&lt;Types::ConformancePackComplianceSummary&gt;
    #   * {Types::GetConformancePackComplianceSummaryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conformance_pack_compliance_summary({
    #     conformance_pack_names: ["ConformancePackName"], # required
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_compliance_summary_list #=> Array
    #   resp.conformance_pack_compliance_summary_list[0].conformance_pack_name #=> String
    #   resp.conformance_pack_compliance_summary_list[0].conformance_pack_compliance_status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetConformancePackComplianceSummary AWS API Documentation
    #
    # @overload get_conformance_pack_compliance_summary(params = {})
    # @param [Hash] params ({})
    def get_conformance_pack_compliance_summary(params = {}, options = {})
      req = build_request(:get_conformance_pack_compliance_summary, params)
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
    #   resp.resource_counts[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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

    # Returns detailed status for each member account within an organization
    # for a given organization config rule.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added.
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name of organization config rule for which you want status details
    #   for member accounts.
    #
    # @option params [Types::StatusDetailFilters] :filters
    #   A `StatusDetailFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConfigRuleDetailedStatus` returned
    #   on each page. If you do not specify a number, AWS Config uses the
    #   default. The default is 100.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetOrganizationConfigRuleDetailedStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationConfigRuleDetailedStatusResponse#organization_config_rule_detailed_status #organization_config_rule_detailed_status} => Array&lt;Types::MemberAccountStatus&gt;
    #   * {Types::GetOrganizationConfigRuleDetailedStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_config_rule_detailed_status({
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       member_account_rule_status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #     },
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_config_rule_detailed_status #=> Array
    #   resp.organization_config_rule_detailed_status[0].account_id #=> String
    #   resp.organization_config_rule_detailed_status[0].config_rule_name #=> String
    #   resp.organization_config_rule_detailed_status[0].member_account_rule_status #=> String, one of "CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.organization_config_rule_detailed_status[0].error_code #=> String
    #   resp.organization_config_rule_detailed_status[0].error_message #=> String
    #   resp.organization_config_rule_detailed_status[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConfigRuleDetailedStatus AWS API Documentation
    #
    # @overload get_organization_config_rule_detailed_status(params = {})
    # @param [Hash] params ({})
    def get_organization_config_rule_detailed_status(params = {}, options = {})
      req = build_request(:get_organization_config_rule_detailed_status, params)
      req.send_request(options)
    end

    # Returns detailed status for each member account within an organization
    # for a given organization conformance pack.
    #
    # Only a master account and a delegated administrator account can call
    # this API. When calling this API with a delegated administrator, you
    # must ensure AWS Organizations `ListDelegatedAdministrator` permissions
    # are added.
    #
    # @option params [required, String] :organization_conformance_pack_name
    #   The name of organization conformance pack for which you want status
    #   details for member accounts.
    #
    # @option params [Types::OrganizationResourceDetailedStatusFilters] :filters
    #   An `OrganizationResourceDetailedStatusFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConformancePackDetailedStatuses`
    #   returned on each page. If you do not specify a number, AWS Config uses
    #   the default. The default is 100.
    #
    # @option params [String] :next_token
    #   The nextToken string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetOrganizationConformancePackDetailedStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationConformancePackDetailedStatusResponse#organization_conformance_pack_detailed_statuses #organization_conformance_pack_detailed_statuses} => Array&lt;Types::OrganizationConformancePackDetailedStatus&gt;
    #   * {Types::GetOrganizationConformancePackDetailedStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_conformance_pack_detailed_status({
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       status: "CREATE_SUCCESSFUL", # accepts CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED
    #     },
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_conformance_pack_detailed_statuses #=> Array
    #   resp.organization_conformance_pack_detailed_statuses[0].account_id #=> String
    #   resp.organization_conformance_pack_detailed_statuses[0].conformance_pack_name #=> String
    #   resp.organization_conformance_pack_detailed_statuses[0].status #=> String, one of "CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.organization_conformance_pack_detailed_statuses[0].error_code #=> String
    #   resp.organization_conformance_pack_detailed_statuses[0].error_message #=> String
    #   resp.organization_conformance_pack_detailed_statuses[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationConformancePackDetailedStatus AWS API Documentation
    #
    # @overload get_organization_conformance_pack_detailed_status(params = {})
    # @param [Hash] params ({})
    def get_organization_conformance_pack_detailed_status(params = {}, options = {})
      req = build_request(:get_organization_conformance_pack_detailed_status, params)
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_config_history({
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #   resp.configuration_items[0].relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
    #   The `nextToken` string returned on a previous page that you use to get
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
    #   An array of tag object.
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
    #   An array of tag object.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_config_rule({
    #     config_rule: { # required
    #       config_rule_name: "ConfigRuleName",
    #       config_rule_arn: "StringWithCharLimit256",
    #       config_rule_id: "StringWithCharLimit64",
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
    #   An array of tag object.
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
    #   resp.configuration_aggregator.created_by #=> String
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
    #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
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

    # Creates or updates a conformance pack. A conformance pack is a
    # collection of AWS Config rules that can be easily deployed in an
    # account and a region and across AWS Organization.
    #
    # This API creates a service linked role
    # `AWSServiceRoleForConfigConforms` in your account. The service linked
    # role is created only when the role does not exist in your account.
    #
    # <note markdown="1"> You must specify either the `TemplateS3Uri` or the `TemplateBody`
    # parameter, but not both. If you provide both AWS Config uses the
    # `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
    #
    #  </note>
    #
    # @option params [required, String] :conformance_pack_name
    #   Name of the conformance pack you want to create.
    #
    # @option params [String] :template_s3_uri
    #   Location of file containing the template body
    #   (`s3://bucketname/prefix`). The uri must point to the conformance pack
    #   template (max size: 300 KB) that is located in an Amazon S3 bucket in
    #   the same region as the conformance pack.
    #
    #   <note markdown="1"> You must have access to read Amazon S3 bucket.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   A string containing full conformance pack template body. Structure
    #   containing the template body with a minimum length of 1 byte and a
    #   maximum length of 51,200 bytes.
    #
    #   <note markdown="1"> You can only use a YAML template with one resource type, that is,
    #   config rule and a remediation action.
    #
    #    </note>
    #
    # @option params [String] :delivery_s3_bucket
    #   AWS Config stores intermediate files while processing conformance pack
    #   template.
    #
    # @option params [String] :delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #
    # @return [Types::PutConformancePackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutConformancePackResponse#conformance_pack_arn #conformance_pack_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_conformance_pack({
    #     conformance_pack_name: "ConformancePackName", # required
    #     template_s3_uri: "TemplateS3Uri",
    #     template_body: "TemplateBody",
    #     delivery_s3_bucket: "DeliveryS3Bucket",
    #     delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: "ParameterName", # required
    #         parameter_value: "ParameterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.conformance_pack_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConformancePack AWS API Documentation
    #
    # @overload put_conformance_pack(params = {})
    # @param [Hash] params ({})
    def put_conformance_pack(params = {}, options = {})
      req = build_request(:put_conformance_pack, params)
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

    # Adds or updates organization config rule for your entire organization
    # evaluating whether your AWS resources comply with your desired
    # configurations.
    #
    # Only a master account and a delegated administrator can create or
    # update an organization config rule. When calling this API with a
    # delegated administrator, you must ensure AWS Organizations
    # `ListDelegatedAdministrator` permissions are added.
    #
    # This API enables organization service access through the
    # `EnableAWSServiceAccess` action and creates a service linked role
    # `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated
    # administrator account of your organization. The service linked role is
    # created only when the role does not exist in the caller account. AWS
    # Config verifies the existence of role with `GetRole` action.
    #
    # To use this API with delegated administrator, register a delegated
    # administrator by calling AWS Organization
    # `register-delegated-administrator` for
    # `config-multiaccountsetup.amazonaws.com`.
    #
    # You can use this action to create both custom AWS Config rules and AWS
    # managed Config rules. If you are adding a new custom AWS Config rule,
    # you must first create AWS Lambda function in the master account or a
    # delegated administrator that the rule invokes to evaluate your
    # resources. When you use the `PutOrganizationConfigRule` action to add
    # the rule to AWS Config, you must specify the Amazon Resource Name
    # (ARN) that AWS Lambda assigns to the function. If you are adding an
    # AWS managed Config rule, specify the rule's identifier for the
    # `RuleIdentifier` key.
    #
    # The maximum number of organization config rules that AWS Config
    # supports is 150 and 3 delegated administrator per organization.
    #
    # <note markdown="1"> Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
    # features in an organization.
    #
    #  Specify either `OrganizationCustomRuleMetadata` or
    # `OrganizationManagedRuleMetadata`.
    #
    #  </note>
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name that you assign to an organization config rule.
    #
    # @option params [Types::OrganizationManagedRuleMetadata] :organization_managed_rule_metadata
    #   An `OrganizationManagedRuleMetadata` object.
    #
    # @option params [Types::OrganizationCustomRuleMetadata] :organization_custom_rule_metadata
    #   An `OrganizationCustomRuleMetadata` object.
    #
    # @option params [Array<String>] :excluded_accounts
    #   A comma-separated list of accounts that you want to exclude from an
    #   organization config rule.
    #
    # @return [Types::PutOrganizationConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutOrganizationConfigRuleResponse#organization_config_rule_arn #organization_config_rule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_organization_config_rule({
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #     organization_managed_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       rule_identifier: "StringWithCharLimit256", # required
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256",
    #     },
    #     organization_custom_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       lambda_function_arn: "StringWithCharLimit256", # required
    #       organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification"], # required, accepts ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, ScheduledNotification
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256",
    #     },
    #     excluded_accounts: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_config_rule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConfigRule AWS API Documentation
    #
    # @overload put_organization_config_rule(params = {})
    # @param [Hash] params ({})
    def put_organization_config_rule(params = {}, options = {})
      req = build_request(:put_organization_config_rule, params)
      req.send_request(options)
    end

    # Deploys conformance packs across member accounts in an AWS
    # Organization.
    #
    # Only a master account and a delegated administrator can call this API.
    # When calling this API with a delegated administrator, you must ensure
    # AWS Organizations `ListDelegatedAdministrator` permissions are added.
    #
    # This API enables organization service access for
    # `config-multiaccountsetup.amazonaws.com` through the
    # `EnableAWSServiceAccess` action and creates a service linked role
    # `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated
    # administrator account of your organization. The service linked role is
    # created only when the role does not exist in the caller account. To
    # use this API with delegated administrator, register a delegated
    # administrator by calling AWS Organization `register-delegate-admin`
    # for `config-multiaccountsetup.amazonaws.com`.
    #
    # <note markdown="1"> Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
    # features in an organization.
    #
    #  You must specify either the `TemplateS3Uri` or the `TemplateBody`
    # parameter, but not both. If you provide both AWS Config uses the
    # `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
    #
    #  AWS Config sets the state of a conformance pack to
    # CREATE\_IN\_PROGRESS and UPDATE\_IN\_PROGRESS until the conformance
    # pack is created or updated. You cannot update a conformance pack while
    # it is in this state.
    #
    #  You can create 6 conformance packs with 25 AWS Config rules in each
    # pack and 3 delegated administrator per organization.
    #
    #  </note>
    #
    # @option params [required, String] :organization_conformance_pack_name
    #   Name of the organization conformance pack you want to create.
    #
    # @option params [String] :template_s3_uri
    #   Location of file containing the template body. The uri must point to
    #   the conformance pack template (max size: 300 KB).
    #
    #   <note markdown="1"> You must have access to read Amazon S3 bucket.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   A string containing full conformance pack template body. Structure
    #   containing the template body with a minimum length of 1 byte and a
    #   maximum length of 51,200 bytes.
    #
    # @option params [String] :delivery_s3_bucket
    #   Location of an Amazon S3 bucket where AWS Config can deliver
    #   evaluation results. AWS Config stores intermediate files while
    #   processing conformance pack template.
    #
    #   The delivery bucket name should start with awsconfigconforms. For
    #   example: "Resource": "arn:aws:s3:::your\_bucket\_name/*". For
    #   more information, see [Permissions for cross account bucket
    #   access][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/conformance-pack-organization-apis.html
    #
    # @option params [String] :delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #
    # @option params [Array<String>] :excluded_accounts
    #   A list of AWS accounts to be excluded from an organization conformance
    #   pack while deploying a conformance pack.
    #
    # @return [Types::PutOrganizationConformancePackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutOrganizationConformancePackResponse#organization_conformance_pack_arn #organization_conformance_pack_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_organization_conformance_pack({
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #     template_s3_uri: "TemplateS3Uri",
    #     template_body: "TemplateBody",
    #     delivery_s3_bucket: "DeliveryS3Bucket",
    #     delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: "ParameterName", # required
    #         parameter_value: "ParameterValue", # required
    #       },
    #     ],
    #     excluded_accounts: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_conformance_pack_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutOrganizationConformancePack AWS API Documentation
    #
    # @overload put_organization_conformance_pack(params = {})
    # @param [Hash] params ({})
    def put_organization_conformance_pack(params = {}, options = {})
      req = build_request(:put_organization_conformance_pack, params)
      req.send_request(options)
    end

    # Adds or updates the remediation configuration with a specific AWS
    # Config rule with the selected target or action. The API creates the
    # `RemediationConfiguration` object for the AWS Config rule. The AWS
    # Config rule must already exist for you to add a remediation
    # configuration. The target (SSM document) must exist and have
    # permissions to use the target.
    #
    # <note markdown="1"> If you make backward incompatible changes to the SSM document, you
    # must call this again to ensure the remediations can run.
    #
    #  </note>
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
    #         config_rule_name: "ConfigRuleName", # required
    #         target_type: "SSM_DOCUMENT", # required, accepts SSM_DOCUMENT
    #         target_id: "StringWithCharLimit256", # required
    #         target_version: "String",
    #         parameters: {
    #           "StringWithCharLimit256" => {
    #             resource_value: {
    #               value: "RESOURCE_ID", # required, accepts RESOURCE_ID
    #             },
    #             static_value: {
    #               values: ["StringWithCharLimit256"], # required
    #             },
    #           },
    #         },
    #         resource_type: "String",
    #         automatic: false,
    #         execution_controls: {
    #           ssm_controls: {
    #             concurrent_execution_rate_percentage: 1,
    #             error_percentage: 1,
    #           },
    #         },
    #         maximum_automatic_attempts: 1,
    #         retry_attempt_seconds: 1,
    #         arn: "StringWithCharLimit1024",
    #         created_by_service: "StringWithCharLimit1024",
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
    #   resp.failed_batches[0].failed_items[0].automatic #=> Boolean
    #   resp.failed_batches[0].failed_items[0].execution_controls.ssm_controls.concurrent_execution_rate_percentage #=> Integer
    #   resp.failed_batches[0].failed_items[0].execution_controls.ssm_controls.error_percentage #=> Integer
    #   resp.failed_batches[0].failed_items[0].maximum_automatic_attempts #=> Integer
    #   resp.failed_batches[0].failed_items[0].retry_attempt_seconds #=> Integer
    #   resp.failed_batches[0].failed_items[0].arn #=> String
    #   resp.failed_batches[0].failed_items[0].created_by_service #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationConfigurations AWS API Documentation
    #
    # @overload put_remediation_configurations(params = {})
    # @param [Hash] params ({})
    def put_remediation_configurations(params = {}, options = {})
      req = build_request(:put_remediation_configurations, params)
      req.send_request(options)
    end

    # A remediation exception is when a specific resource is no longer
    # considered for auto-remediation. This API adds a new exception or
    # updates an exisiting exception for a specific resource with a specific
    # AWS Config rule.
    #
    # <note markdown="1"> AWS Config generates a remediation exception when a problem occurs
    # executing a remediation action to a specific resource. Remediation
    # exceptions blocks auto-remediation until the exception is cleared.
    #
    #  </note>
    #
    # @option params [required, String] :config_rule_name
    #   The name of the AWS Config rule for which you want to create
    #   remediation exception.
    #
    # @option params [required, Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. AWS Config adds exception for each resource key. For
    #   example, AWS Config adds 3 exceptions for 3 resource keys.
    #
    # @option params [String] :message
    #   The message contains an explanation of the exception.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_time
    #   The exception is automatically deleted after the expiration date.
    #
    # @return [Types::PutRemediationExceptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRemediationExceptionsResponse#failed_batches #failed_batches} => Array&lt;Types::FailedRemediationExceptionBatch&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_remediation_exceptions({
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024",
    #       },
    #     ],
    #     message: "StringWithCharLimit1024",
    #     expiration_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_batches #=> Array
    #   resp.failed_batches[0].failure_message #=> String
    #   resp.failed_batches[0].failed_items #=> Array
    #   resp.failed_batches[0].failed_items[0].config_rule_name #=> String
    #   resp.failed_batches[0].failed_items[0].resource_type #=> String
    #   resp.failed_batches[0].failed_items[0].resource_id #=> String
    #   resp.failed_batches[0].failed_items[0].message #=> String
    #   resp.failed_batches[0].failed_items[0].expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutRemediationExceptions AWS API Documentation
    #
    # @overload put_remediation_exceptions(params = {})
    # @param [Hash] params ({})
    def put_remediation_exceptions(params = {}, options = {})
      req = build_request(:put_remediation_exceptions, params)
      req.send_request(options)
    end

    # Records the configuration state for the resource provided in the
    # request. The configuration state of a resource is represented in AWS
    # Config as Configuration Items. Once this API records the configuration
    # item, you can retrieve the list of configuration items for the custom
    # resource type using existing AWS Config APIs.
    #
    # <note markdown="1"> The custom resource type must be registered with AWS CloudFormation.
    # This API accepts the configuration item registered with AWS
    # CloudFormation.
    #
    #  When you call this API, AWS Config only stores configuration state of
    # the resource provided in the request. This API does not change or
    # remediate the configuration of the resource.
    #
    #  Write-only schema properites are not recorded as part of the published
    # configuration item.
    #
    #  </note>
    #
    # @option params [required, String] :resource_type
    #   The type of the resource. The custom resource type must be registered
    #   with AWS CloudFormation.
    #
    #   <note markdown="1"> You cannot use the organization names “aws”, “amzn”, “amazon”,
    #   “alexa”, “custom” with custom resource types. It is the first part of
    #   the ResourceType up to the first ::.
    #
    #    </note>
    #
    # @option params [required, String] :schema_version_id
    #   Version of the schema registered for the ResourceType in AWS
    #   CloudFormation.
    #
    # @option params [required, String] :resource_id
    #   Unique identifier of the resource.
    #
    # @option params [String] :resource_name
    #   Name of the resource.
    #
    # @option params [required, String] :configuration
    #   The configuration object of the resource in valid JSON format. It must
    #   match the schema registered with AWS CloudFormation.
    #
    #   <note markdown="1"> The configuration JSON must not exceed 64 KB.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   Tags associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_config({
    #     resource_type: "ResourceTypeString", # required
    #     schema_version_id: "SchemaVersionId", # required
    #     resource_id: "ResourceId", # required
    #     resource_name: "ResourceName",
    #     configuration: "Configuration", # required
    #     tags: {
    #       "Name" => "Value",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutResourceConfig AWS API Documentation
    #
    # @overload put_resource_config(params = {})
    # @param [Hash] params ({})
    def put_resource_config(params = {}, options = {})
      req = build_request(:put_resource_config, params)
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

    # Accepts a structured query language (SQL) SELECT command and an
    # aggregator to query configuration state of AWS resources across
    # multiple accounts and regions, performs the corresponding search, and
    # returns resource configurations matching the properties.
    #
    # For more information about query components, see the [ **Query
    # Components** ][1] section in the AWS Config Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/query-components.html
    #
    # @option params [required, String] :expression
    #   The SQL query SELECT command.
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Integer] :limit
    #   The maximum number of query results returned on each page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of query results returned on each page. AWS Config
    #   also allows the Limit request parameter.
    #
    # @option params [String] :next_token
    #   The nextToken string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @return [Types::SelectAggregateResourceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SelectAggregateResourceConfigResponse#results #results} => Array&lt;String&gt;
    #   * {Types::SelectAggregateResourceConfigResponse#query_info #query_info} => Types::QueryInfo
    #   * {Types::SelectAggregateResourceConfigResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.select_aggregate_resource_config({
    #     expression: "Expression", # required
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     limit: 1,
    #     max_results: 1,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/SelectAggregateResourceConfig AWS API Documentation
    #
    # @overload select_aggregate_resource_config(params = {})
    # @param [Hash] params ({})
    def select_aggregate_resource_config(params = {}, options = {})
      req = build_request(:select_aggregate_resource_config, params)
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
    #     config_rule_names: ["ConfigRuleName"],
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
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failure_message #=> String
    #   resp.failed_items #=> Array
    #   resp.failed_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData"
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
      context[:gem_version] = '1.53.0'
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
