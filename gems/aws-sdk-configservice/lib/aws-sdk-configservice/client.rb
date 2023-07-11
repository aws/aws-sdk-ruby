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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::ConfigService::Plugins::Endpoints)

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
    #   @option options [Aws::ConfigService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ConfigService::EndpointParameters`
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

    # Returns the current configuration items for resources that are present
    # in your Config aggregator. The operation also returns a list of
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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
    #   resp.unprocessed_resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Returns the `BaseConfigurationItem` for one or more requested
    # resources. The operation also returns a list of resources that are not
    # processed in the current request. If there are no unprocessed
    # resources, the operation returns an empty unprocessedResourceKeys
    # list.
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.base_configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
    #   resp.base_configuration_items[0].resource_id #=> String
    #   resp.base_configuration_items[0].resource_name #=> String
    #   resp.base_configuration_items[0].aws_region #=> String
    #   resp.base_configuration_items[0].availability_zone #=> String
    #   resp.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.base_configuration_items[0].configuration #=> String
    #   resp.base_configuration_items[0].supplementary_configuration #=> Hash
    #   resp.base_configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
    #   resp.unprocessed_resource_keys #=> Array
    #   resp.unprocessed_resource_keys[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Deletes the specified Config rule and all of its evaluation results.
    #
    # Config sets the state of a rule to `DELETING` until the deletion is
    # complete. You cannot update a rule while it is in this state. If you
    # make a `PutConfigRule` or `DeleteConfigRule` request for the rule, you
    # will receive a `ResourceInUseException`.
    #
    # You can check the state of a rule by using the `DescribeConfigRules`
    # request.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule that you want to delete.
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
    # After the configuration recorder is deleted, Config will not record
    # resource configuration changes until you create a new configuration
    # recorder.
    #
    # This action does not delete the configuration information that was
    # previously recorded. You will be able to access the previously
    # recorded information by using the `GetResourceConfigHistory` action,
    # but you will not be able to access this information in the Config
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

    # Deletes the specified conformance pack and all the Config rules,
    # remediation actions, and all evaluation results within that
    # conformance pack.
    #
    # Config sets the conformance pack to `DELETE_IN_PROGRESS` until the
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

    # Deletes the evaluation results for the specified Config rule. You can
    # specify one Config rule per request. After you delete the evaluation
    # results, you can call the StartConfigRulesEvaluation API to start
    # evaluating your Amazon Web Services resources against the rule.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule for which you want to delete the
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

    # Deletes the specified organization Config rule and all of its
    # evaluation results from all member accounts in that organization.
    #
    # Only a management account and a delegated administrator account can
    # delete an organization Config rule. When calling this API with a
    # delegated administrator, you must ensure Organizations
    # `ListDelegatedAdministrator` permissions are added.
    #
    # Config sets the state of a rule to DELETE\_IN\_PROGRESS until the
    # deletion is complete. You cannot update a rule while it is in this
    # state.
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name of organization Config rule that you want to delete.
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
    # Config rules and remediation actions from all member accounts in that
    # organization.
    #
    # Only a management account or a delegated administrator account can
    # delete an organization conformance pack. When calling this API with a
    # delegated administrator, you must ensure Organizations
    # `ListDelegatedAdministrator` permissions are added.
    #
    # Config sets the state of a conformance pack to DELETE\_IN\_PROGRESS
    # until the deletion is complete. You cannot update a conformance pack
    # while it is in this state.
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
    #   The name of the Config rule for which you want to delete remediation
    #   configuration.
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
    # <note markdown="1"> Config generates a remediation exception when a problem occurs
    # executing a remediation action to a specific resource. Remediation
    # exceptions blocks auto-remediation until the exception is cleared.
    #
    #  </note>
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule for which you want to delete remediation
    #   exception configuration.
    #
    # @option params [required, Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. Config adds exception for each resource key. For
    #   example, Config adds 3 exceptions for 3 resource keys.
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
    # recorded for this resource in your Config History.
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

    # Deletes the stored query for a single Amazon Web Services account and
    # a single Amazon Web Services Region.
    #
    # @option params [required, String] :query_name
    #   The name of the query that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stored_query({
    #     query_name: "QueryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteStoredQuery AWS API Documentation
    #
    # @overload delete_stored_query(params = {})
    # @param [Hash] params ({})
    def delete_stored_query(params = {}, options = {})
      req = build_request(:delete_stored_query, params)
      req.send_request(options)
    end

    # Schedules delivery of a configuration snapshot to the Amazon S3 bucket
    # in the specified delivery channel. After the delivery has started,
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
    # resources for compliant and noncompliant rules. Does not display rules
    # that do not have compliance results.
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
    #   default is maximum. If you specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns a list of the conformance packs and their associated
    # compliance status with the count of compliant and noncompliant Config
    # rules within each conformance pack. Also returns the total rule count
    # which includes compliant rules, noncompliant rules, and rules that
    # cannot be evaluated due to insufficient data.
    #
    # <note markdown="1"> The results can return an empty result page, but if you have a
    # `nextToken`, the results are displayed on the next page.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Types::AggregateConformancePackComplianceFilters] :filters
    #   Filters the result by `AggregateConformancePackComplianceFilters`
    #   object.
    #
    # @option params [Integer] :limit
    #   The maximum number of conformance packs compliance details returned on
    #   each page. The default is maximum. If you specify 0, Config uses the
    #   default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::DescribeAggregateComplianceByConformancePacksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAggregateComplianceByConformancePacksResponse#aggregate_compliance_by_conformance_packs #aggregate_compliance_by_conformance_packs} => Array&lt;Types::AggregateComplianceByConformancePack&gt;
    #   * {Types::DescribeAggregateComplianceByConformancePacksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregate_compliance_by_conformance_packs({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       conformance_pack_name: "ConformancePackName",
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, INSUFFICIENT_DATA
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion",
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregate_compliance_by_conformance_packs #=> Array
    #   resp.aggregate_compliance_by_conformance_packs[0].conformance_pack_name #=> String
    #   resp.aggregate_compliance_by_conformance_packs[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"
    #   resp.aggregate_compliance_by_conformance_packs[0].compliance.compliant_rule_count #=> Integer
    #   resp.aggregate_compliance_by_conformance_packs[0].compliance.non_compliant_rule_count #=> Integer
    #   resp.aggregate_compliance_by_conformance_packs[0].compliance.total_rule_count #=> Integer
    #   resp.aggregate_compliance_by_conformance_packs[0].account_id #=> String
    #   resp.aggregate_compliance_by_conformance_packs[0].aws_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeAggregateComplianceByConformancePacks AWS API Documentation
    #
    # @overload describe_aggregate_compliance_by_conformance_packs(params = {})
    # @param [Hash] params ({})
    def describe_aggregate_compliance_by_conformance_packs(params = {}, options = {})
      req = build_request(:describe_aggregate_compliance_by_conformance_packs, params)
      req.send_request(options)
    end

    # Returns a list of authorizations granted to various aggregator
    # accounts and regions.
    #
    # @option params [Integer] :limit
    #   The maximum number of AggregationAuthorizations returned on each page.
    #   The default is maximum. If you specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Indicates whether the specified Config rules are compliant. If a rule
    # is noncompliant, this action returns the number of Amazon Web Services
    # resources that do not comply with the rule.
    #
    # A rule is compliant if all of the evaluated resources comply with it.
    # It is noncompliant if any of these resources do not comply.
    #
    # If Config has no current evaluation results for the rule, it returns
    # `INSUFFICIENT_DATA`. This result might indicate one of the following
    # conditions:
    #
    # * Config has never invoked an evaluation for the rule. To check
    #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
    #   to get the `LastSuccessfulInvocationTime` and
    #   `LastFailedInvocationTime`.
    #
    # * The rule's Lambda function is failing to send evaluation results to
    #   Config. Verify that the role you assigned to your configuration
    #   recorder includes the `config:PutEvaluations` permission. If the
    #   rule is a custom rule, verify that the Lambda execution role
    #   includes the `config:PutEvaluations` permission.
    #
    # * The rule's Lambda function has returned `NOT_APPLICABLE` for all
    #   evaluation results. This can occur if the resources were deleted or
    #   removed from the rule's scope.
    #
    # @option params [Array<String>] :config_rule_names
    #   Specify one or more Config rule names to filter the results by rule.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Indicates whether the specified Amazon Web Services resources are
    # compliant. If a resource is noncompliant, this action returns the
    # number of Config rules that the resource does not comply with.
    #
    # A resource is compliant if it complies with all the Config rules that
    # evaluate it. It is noncompliant if it does not comply with one or more
    # of these rules.
    #
    # If Config has no current evaluation results for the resource, it
    # returns `INSUFFICIENT_DATA`. This result might indicate one of the
    # following conditions about the rules that evaluate the resource:
    #
    # * Config has never invoked an evaluation for the rule. To check
    #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
    #   to get the `LastSuccessfulInvocationTime` and
    #   `LastFailedInvocationTime`.
    #
    # * The rule's Lambda function is failing to send evaluation results to
    #   Config. Verify that the role that you assigned to your configuration
    #   recorder includes the `config:PutEvaluations` permission. If the
    #   rule is a custom rule, verify that the Lambda execution role
    #   includes the `config:PutEvaluations` permission.
    #
    # * The rule's Lambda function has returned `NOT_APPLICABLE` for all
    #   evaluation results. This can occur if the resources were deleted or
    #   removed from the rule's scope.
    #
    # @option params [String] :resource_type
    #   The types of Amazon Web Services resources for which you want
    #   compliance information (for example, `AWS::EC2::Instance`). For this
    #   action, you can specify that the resource type is an Amazon Web
    #   Services account by specifying `AWS::::Account`.
    #
    # @option params [String] :resource_id
    #   The ID of the Amazon Web Services resource for which you want
    #   compliance information. You can specify only one resource ID. If you
    #   specify a resource ID, you must also specify a type for
    #   `ResourceType`.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns status information for each of your Config managed rules. The
    # status includes information such as the last time Config invoked the
    # rule, the last time Config failed to invoke the rule, and the related
    # error for the last failure.
    #
    # @option params [Array<String>] :config_rule_names
    #   The name of the Config managed rules for which you want status
    #   information. If you do not specify any names, Config returns status
    #   information for all Config managed rules that you use.
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
    #   For information about requesting a rule limit increase, see [Config
    #   Limits][1] in the *Amazon Web Services General Reference Guide*.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.config_rules_evaluation_status[0].last_debug_log_delivery_status #=> String
    #   resp.config_rules_evaluation_status[0].last_debug_log_delivery_status_reason #=> String
    #   resp.config_rules_evaluation_status[0].last_debug_log_delivery_time #=> Time
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

    # Returns details about your Config rules.
    #
    # @option params [Array<String>] :config_rule_names
    #   The names of the Config rules for which you want details. If you do
    #   not specify any names, Config returns details for all your rules.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @option params [Types::DescribeConfigRulesFilters] :filters
    #   Returns a list of Detective or Proactive Config rules. By default,
    #   this API returns an unfiltered list. For more information on Detective
    #   or Proactive Config rules, see [ **Evaluation Mode** ][1] in the
    #   *Config Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html
    #
    # @return [Types::DescribeConfigRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigRulesResponse#config_rules #config_rules} => Array&lt;Types::ConfigRule&gt;
    #   * {Types::DescribeConfigRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_config_rules({
    #     config_rule_names: ["ConfigRuleName"],
    #     next_token: "String",
    #     filters: {
    #       evaluation_mode: "DETECTIVE", # accepts DETECTIVE, PROACTIVE
    #     },
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
    #   resp.config_rules[0].source.owner #=> String, one of "CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"
    #   resp.config_rules[0].source.source_identifier #=> String
    #   resp.config_rules[0].source.source_details #=> Array
    #   resp.config_rules[0].source.source_details[0].event_source #=> String, one of "aws.config"
    #   resp.config_rules[0].source.source_details[0].message_type #=> String, one of "ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"
    #   resp.config_rules[0].source.source_details[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.config_rules[0].source.custom_policy_details.policy_runtime #=> String
    #   resp.config_rules[0].source.custom_policy_details.policy_text #=> String
    #   resp.config_rules[0].source.custom_policy_details.enable_debug_log_delivery #=> Boolean
    #   resp.config_rules[0].input_parameters #=> String
    #   resp.config_rules[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.config_rules[0].config_rule_state #=> String, one of "ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"
    #   resp.config_rules[0].created_by #=> String
    #   resp.config_rules[0].evaluation_modes #=> Array
    #   resp.config_rules[0].evaluation_modes[0].mode #=> String, one of "DETECTIVE", "PROACTIVE"
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
    # status includes information about the last time Config verified
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
    #   The default is maximum. If you specify 0, Config uses the default.
    #
    # @return [Types::DescribeConfigurationAggregatorSourcesStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationAggregatorSourcesStatusResponse#aggregated_source_status_list #aggregated_source_status_list} => Array&lt;Types::AggregatedSourceStatus&gt;
    #   * {Types::DescribeConfigurationAggregatorSourcesStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   The default is maximum. If you specify 0, Config uses the default.
    #
    # @return [Types::DescribeConfigurationAggregatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationAggregatorsResponse#configuration_aggregators #configuration_aggregators} => Array&lt;Types::ConfigurationAggregator&gt;
    #   * {Types::DescribeConfigurationAggregatorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns the current status of the specified configuration recorder as
    # well as the status of the last recording event for the recorder. If a
    # configuration recorder is not specified, this action returns the
    # status of all configuration recorders associated with the account.
    #
    # <note markdown="1"> &gt;You can specify only one configuration recorder for each Amazon
    # Web Services Region for each account. For a detailed status of
    # recording events over time, add your Config events to Amazon
    # CloudWatch metrics and use CloudWatch metrics.
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
    # <note markdown="1"> You can specify only one configuration recorder for each Amazon Web
    # Services Region for each account.
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
    #   resp.configuration_recorders[0].recording_group.resource_types[0] #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
    #   resp.configuration_recorders[0].recording_group.exclusion_by_resource_types.resource_types #=> Array
    #   resp.configuration_recorders[0].recording_group.exclusion_by_resource_types.resource_types[0] #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
    #   resp.configuration_recorders[0].recording_group.recording_strategy.use_only #=> String, one of "ALL_SUPPORTED_RESOURCE_TYPES", "INCLUSION_BY_RESOURCE_TYPES", "EXCLUSION_BY_RESOURCE_TYPES"
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
    #   The maximum number of Config rules within a conformance pack are
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_pack_compliance({
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, INSUFFICIENT_DATA
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
    #   resp.conformance_pack_rule_compliance_list[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"
    #   resp.conformance_pack_rule_compliance_list[0].controls #=> Array
    #   resp.conformance_pack_rule_compliance_list[0].controls[0] #=> String
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   details. If you do not specify any names, Config returns details for
    #   all your conformance packs.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.conformance_pack_details[0].template_ssm_document_details.document_name #=> String
    #   resp.conformance_pack_details[0].template_ssm_document_details.document_version #=> String
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
    #   resp.delivery_channels[0].s3_kms_key_arn #=> String
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

    # Provides organization Config rule deployment status for an
    # organization.
    #
    # <note markdown="1"> The status is not considered successful until organization Config rule
    # is successfully deployed in all the member accounts with an exception
    # of excluded accounts.
    #
    #  When you specify the limit and the next token, you receive a paginated
    # response. Limit and next token are not applicable if you specify
    # organization Config rule names. It is only applicable, when you
    # request all the organization Config rules.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   The names of organization Config rules for which you want status
    #   details. If you do not specify any names, Config returns details for
    #   all your organization Config rules.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConfigRuleStatuses` returned on
    #   each page. If you do no specify a number, Config uses the default. The
    #   default is 100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns a list of organization Config rules.
    #
    # <note markdown="1"> When you specify the limit and the next token, you receive a paginated
    # response.
    #
    #  Limit and next token are not applicable if you specify organization
    # Config rule names. It is only applicable, when you request all the
    # organization Config rules.
    #
    #  *For accounts within an organzation*
    #
    #  If you deploy an organizational rule or conformance pack in an
    # organization administrator account, and then establish a delegated
    # administrator and deploy an organizational rule or conformance pack in
    # the delegated administrator account, you won't be able to see the
    # organizational rule or conformance pack in the organization
    # administrator account from the delegated administrator account or see
    # the organizational rule or conformance pack in the delegated
    # administrator account from organization administrator account. The
    # `DescribeOrganizationConfigRules` and
    # `DescribeOrganizationConformancePacks` APIs can only see and interact
    # with the organization-related resource that were deployed from within
    # the account calling those APIs.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   The names of organization Config rules for which you want details. If
    #   you do not specify any names, Config returns details for all your
    #   organization Config rules.
    #
    # @option params [Integer] :limit
    #   The maximum number of organization Config rules returned on each page.
    #   If you do no specify a number, Config uses the default. The default is
    #   100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.description #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.organization_config_rule_trigger_types #=> Array
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.organization_config_rule_trigger_types[0] #=> String, one of "ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification"
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.input_parameters #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.resource_types_scope #=> Array
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.resource_types_scope[0] #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.resource_id_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.tag_key_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.tag_value_scope #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.policy_runtime #=> String
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.debug_log_delivery_accounts #=> Array
    #   resp.organization_config_rules[0].organization_custom_policy_rule_metadata.debug_log_delivery_accounts[0] #=> String
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
    #   details. If you do not specify any names, Config returns details for
    #   all your organization conformance packs.
    #
    # @option params [Integer] :limit
    #   The maximum number of OrganizationConformancePackStatuses returned on
    #   each page. If you do no specify a number, Config uses the default. The
    #   default is 100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # <note markdown="1"> When you specify the limit and the next token, you receive a paginated
    # response.
    #
    #  Limit and next token are not applicable if you specify organization
    # conformance packs names. They are only applicable, when you request
    # all the organization conformance packs.
    #
    #  *For accounts within an organzation*
    #
    #  If you deploy an organizational rule or conformance pack in an
    # organization administrator account, and then establish a delegated
    # administrator and deploy an organizational rule or conformance pack in
    # the delegated administrator account, you won't be able to see the
    # organizational rule or conformance pack in the organization
    # administrator account from the delegated administrator account or see
    # the organizational rule or conformance pack in the delegated
    # administrator account from organization administrator account. The
    # `DescribeOrganizationConfigRules` and
    # `DescribeOrganizationConformancePacks` APIs can only see and interact
    # with the organization-related resource that were deployed from within
    # the account calling those APIs.
    #
    #  </note>
    #
    # @option params [Array<String>] :organization_conformance_pack_names
    #   The name that you assign to an organization conformance pack.
    #
    # @option params [Integer] :limit
    #   The maximum number of organization config packs returned on each page.
    #   If you do no specify a number, Config uses the default. The default is
    #   100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   default is maximum. If you specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   A list of Config rule names of remediation configurations for which
    #   you want details.
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
    # <note markdown="1"> Config generates a remediation exception when a problem occurs
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
    #   The name of the Config rule.
    #
    # @option params [Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. Config adds exception for each resource key. For
    #   example, Config adds 3 exceptions for 3 resource keys.
    #
    # @option params [Integer] :limit
    #   The maximum number of RemediationExceptionResourceKey returned on each
    #   page. The default is 25. If you specify 0, Config uses the default.
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
    #   A list of Config rule names.
    #
    # @option params [Array<Types::ResourceKey>] :resource_keys
    #   A list of resource keys to be processed with the current request. Each
    #   element in the list consists of the resource type and resource ID.
    #
    # @option params [Integer] :limit
    #   The maximum number of RemediationExecutionStatuses returned on each
    #   page. The default is maximum. If you specify 0, Config uses the
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.remediation_execution_statuses[0].resource_key.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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
    # <note markdown="1"> Currently, Config supports only one retention configuration per region
    # in your account.
    #
    #  </note>
    #
    # @option params [Array<String>] :retention_configuration_names
    #   A list of names of retention configurations for which you want
    #   details. If you do not specify a name, Config returns details for all
    #   the retention configurations for that account.
    #
    #   <note markdown="1"> Currently, Config supports only one retention configuration per region
    #   in your account.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns the evaluation results for the specified Config rule for a
    # specific resource in a rule. The results indicate which Amazon Web
    # Services resources were evaluated by the rule, when each resource was
    # last evaluated, and whether each resource complies with the rule.
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
    #   The name of the Config rule for which you want compliance information.
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
    #   Config supports only the `COMPLIANT` and `NON_COMPLIANT`. Config does
    #   not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` values.
    #
    #    </note>
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 50. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.aggregate_evaluation_results[0].evaluation_result_identifier.resource_evaluation_id #=> String
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
    #   specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns the count of compliant and noncompliant conformance packs
    # across all Amazon Web Services accounts and Amazon Web Services
    # Regions in an aggregator. You can filter based on Amazon Web Services
    # account ID or Amazon Web Services Region.
    #
    # <note markdown="1"> The results can return an empty result page, but if you have a
    # nextToken, the results are displayed on the next page.
    #
    #  </note>
    #
    # @option params [required, String] :configuration_aggregator_name
    #   The name of the configuration aggregator.
    #
    # @option params [Types::AggregateConformancePackComplianceSummaryFilters] :filters
    #   Filters the results based on the
    #   `AggregateConformancePackComplianceSummaryFilters` object.
    #
    # @option params [String] :group_by_key
    #   Groups the result based on Amazon Web Services account ID or Amazon
    #   Web Services Region.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned on each page. The default is
    #   maximum. If you specify 0, Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::GetAggregateConformancePackComplianceSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregateConformancePackComplianceSummaryResponse#aggregate_conformance_pack_compliance_summaries #aggregate_conformance_pack_compliance_summaries} => Array&lt;Types::AggregateConformancePackComplianceSummary&gt;
    #   * {Types::GetAggregateConformancePackComplianceSummaryResponse#group_by_key #group_by_key} => String
    #   * {Types::GetAggregateConformancePackComplianceSummaryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_conformance_pack_compliance_summary({
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
    #   resp.aggregate_conformance_pack_compliance_summaries #=> Array
    #   resp.aggregate_conformance_pack_compliance_summaries[0].compliance_summary.compliant_conformance_pack_count #=> Integer
    #   resp.aggregate_conformance_pack_compliance_summaries[0].compliance_summary.non_compliant_conformance_pack_count #=> Integer
    #   resp.aggregate_conformance_pack_compliance_summaries[0].group_name #=> String
    #   resp.group_by_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetAggregateConformancePackComplianceSummary AWS API Documentation
    #
    # @overload get_aggregate_conformance_pack_compliance_summary(params = {})
    # @param [Hash] params ({})
    def get_aggregate_conformance_pack_compliance_summary(params = {}, options = {})
      req = build_request(:get_aggregate_conformance_pack_compliance_summary, params)
      req.send_request(options)
    end

    # Returns the resource counts across accounts and regions that are
    # present in your Config aggregator. You can request the resource counts
    # by providing filters and GroupByKey.
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
    #   1000. If you specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_discovered_resource_counts({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       resource_type: "AWS::EC2::CustomerGateway", # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #       resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.configuration_item.resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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
    #   resp.configuration_item.relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Returns the evaluation results for the specified Config rule. The
    # results indicate which Amazon Web Services resources were evaluated by
    # the rule, when each resource was last evaluated, and whether each
    # resource complies with the rule.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule for which you want compliance information.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned when
    #   an Config rule cannot be evaluated. However, `INSUFFICIENT_DATA`
    #   cannot be used as a `ComplianceType` for filtering results.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. The
    #   default is 10. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.evaluation_results[0].evaluation_result_identifier.resource_evaluation_id #=> String
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

    # Returns the evaluation results for the specified Amazon Web Services
    # resource. The results indicate which Config rules were used to
    # evaluate the resource, when each rule was last invoked, and whether
    # the resource complies with each rule.
    #
    # @option params [String] :resource_type
    #   The type of the Amazon Web Services resource for which you want
    #   compliance information.
    #
    # @option params [String] :resource_id
    #   The ID of the Amazon Web Services resource for which you want
    #   compliance information.
    #
    # @option params [Array<String>] :compliance_types
    #   Filters the results by compliance.
    #
    #   `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned when
    #   an Config rule cannot be evaluated. However, `INSUFFICIENT_DATA`
    #   cannot be used as a `ComplianceType` for filtering results.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @option params [String] :resource_evaluation_id
    #   The unique ID of Amazon Web Services resource execution for which you
    #   want to retrieve evaluation results.
    #
    #   <note markdown="1"> You need to only provide either a `ResourceEvaluationID` or a
    #   `ResourceID `and `ResourceType`.
    #
    #    </note>
    #
    # @return [Types::GetComplianceDetailsByResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceDetailsByResourceResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResult&gt;
    #   * {Types::GetComplianceDetailsByResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_details_by_resource({
    #     resource_type: "StringWithCharLimit256",
    #     resource_id: "BaseResourceId",
    #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #     next_token: "String",
    #     resource_evaluation_id: "ResourceEvaluationId",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.evaluation_results[0].evaluation_result_identifier.resource_evaluation_id #=> String
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

    # Returns the number of Config rules that are compliant and
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
    #   For this request, you can specify an Amazon Web Services resource type
    #   such as `AWS::EC2::Instance`. You can specify that the resource type
    #   is an Amazon Web Services account by specifying `AWS::::Account`.
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

    # Returns compliance details of a conformance pack for all Amazon Web
    # Services resources that are monitered by conformance pack.
    #
    # @option params [required, String] :conformance_pack_name
    #   Name of the conformance pack.
    #
    # @option params [Types::ConformancePackEvaluationFilters] :filters
    #   A `ConformancePackEvaluationFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluation results returned on each page. If you
    #   do no specify a number, Config uses the default. The default is 100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conformance_pack_compliance_details({
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT", # accepts COMPLIANT, NON_COMPLIANT, INSUFFICIENT_DATA
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
    #   resp.conformance_pack_rule_evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.resource_evaluation_id #=> String
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.conformance_pack_compliance_summary_list[0].conformance_pack_compliance_status #=> String, one of "COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"
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

    # Returns the policy definition containing the logic for your Config
    # Custom Policy rule.
    #
    # @option params [String] :config_rule_name
    #   The name of your Config Custom Policy rule.
    #
    # @return [Types::GetCustomRulePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomRulePolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_rule_policy({
    #     config_rule_name: "ConfigRuleName",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetCustomRulePolicy AWS API Documentation
    #
    # @overload get_custom_rule_policy(params = {})
    # @param [Hash] params ({})
    def get_custom_rule_policy(params = {}, options = {})
      req = build_request(:get_custom_rule_policy, params)
      req.send_request(options)
    end

    # Returns the resource types, the number of each resource type, and the
    # total number of resources that Config is recording in this region for
    # your Amazon Web Services account.
    #
    # **Example**
    #
    # 1.  Config is recording three resource types in the US East (Ohio)
    #     Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
    #     buckets.
    #
    # 2.  You make a call to the `GetDiscoveredResourceCounts` action and
    #     specify that you want all resource types.
    #
    # 3.  Config returns the following:
    #
    #     * The resource types (EC2 instances, IAM users, and S3 buckets).
    #
    #     * The number of each resource type (25, 20, and 15).
    #
    #     * The total number of all resources (60).
    #
    # The response is paginated. By default, Config lists 100 ResourceCount
    # objects on each page. You can customize this number with the `limit`
    # parameter. The response includes a `nextToken` string. To get the next
    # page of results, run the request again and specify the string for the
    # `nextToken` parameter.
    #
    # <note markdown="1"> If you make a call to the GetDiscoveredResourceCounts action, you
    # might not immediately receive resource counts in the following
    # situations:
    #
    #  * You are a new Config customer.
    #
    # * You just enabled resource recording.
    #
    #  It might take a few minutes for Config to record and count your
    # resources. Wait a few minutes and then retry the
    # GetDiscoveredResourceCounts action.
    #
    #  </note>
    #
    # @option params [Array<String>] :resource_types
    #   The comma-separated list that specifies the resource types that you
    #   want Config to return (for example, `"AWS::EC2::Instance"`,
    #   `"AWS::IAM::User"`).
    #
    #   If a value for `resourceTypes` is not specified, Config returns all
    #   resource types that Config is recording in the region for your
    #   account.
    #
    #   <note markdown="1"> If the configuration recorder is turned off, Config returns an empty
    #   list of ResourceCount objects. If the configuration recorder is not
    #   recording a specific resource type (for example, S3 buckets), that
    #   resource type is not returned in the list of ResourceCount objects.
    #
    #    </note>
    #
    # @option params [Integer] :limit
    #   The maximum number of ResourceCount objects returned on each page. The
    #   default is 100. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.resource_counts[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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
    # for a given organization Config rule.
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name of your organization Config rule for which you want status
    #   details for member accounts.
    #
    # @option params [Types::StatusDetailFilters] :filters
    #   A `StatusDetailFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConfigRuleDetailedStatus` returned
    #   on each page. If you do not specify a number, Config uses the default.
    #   The default is 100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # @option params [required, String] :organization_conformance_pack_name
    #   The name of organization conformance pack for which you want status
    #   details for member accounts.
    #
    # @option params [Types::OrganizationResourceDetailedStatusFilters] :filters
    #   An `OrganizationResourceDetailedStatusFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of `OrganizationConformancePackDetailedStatuses`
    #   returned on each page. If you do not specify a number, Config uses the
    #   default. The default is 100.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns the policy definition containing the logic for your
    # organization Config Custom Policy rule.
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name of your organization Config Custom Policy rule.
    #
    # @return [Types::GetOrganizationCustomRulePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationCustomRulePolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_custom_rule_policy({
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetOrganizationCustomRulePolicy AWS API Documentation
    #
    # @overload get_organization_custom_rule_policy(params = {})
    # @param [Hash] params ({})
    def get_organization_custom_rule_policy(params = {}, options = {})
      req = build_request(:get_organization_custom_rule_policy, params)
      req.send_request(options)
    end

    # Returns a list of `ConfigurationItems` for the specified resource. The
    # list contains details about each state of the resource during the
    # specified time interval. If you specified a retention period to retain
    # your `ConfigurationItems` between a minimum of 30 days and a maximum
    # of 7 years (2557 days), Config returns the `ConfigurationItems` for
    # the specified retention period.
    #
    # The response is paginated. By default, Config returns a limit of 10
    # configuration items per page. You can customize this number with the
    # `limit` parameter. The response includes a `nextToken` string. To get
    # the next page of results, run the request again and specify the string
    # for the `nextToken` parameter.
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
    #   specify 0, Config uses the default.
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
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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
    #   resp.configuration_items[0].relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Returns a summary of resource evaluation for the specified resource
    # evaluation ID from the proactive rules that were run. The results
    # indicate which evaluation context was used to evaluate the rules,
    # which resource details were evaluated, the evaluation mode that was
    # run, and whether the resource details comply with the configuration of
    # the proactive rules.
    #
    # <note markdown="1"> To see additional information about the evaluation result, such as
    # which rule flagged a resource as NON\_COMPLIANT, use the
    # [GetComplianceDetailsByResource][1] API. For more information, see the
    # [Examples][2] section.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html
    # [2]: https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples
    #
    # @option params [required, String] :resource_evaluation_id
    #   The unique `ResourceEvaluationId` of Amazon Web Services resource
    #   execution for which you want to retrieve the evaluation summary.
    #
    # @return [Types::GetResourceEvaluationSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceEvaluationSummaryResponse#resource_evaluation_id #resource_evaluation_id} => String
    #   * {Types::GetResourceEvaluationSummaryResponse#evaluation_mode #evaluation_mode} => String
    #   * {Types::GetResourceEvaluationSummaryResponse#evaluation_status #evaluation_status} => Types::EvaluationStatus
    #   * {Types::GetResourceEvaluationSummaryResponse#evaluation_start_timestamp #evaluation_start_timestamp} => Time
    #   * {Types::GetResourceEvaluationSummaryResponse#compliance #compliance} => String
    #   * {Types::GetResourceEvaluationSummaryResponse#evaluation_context #evaluation_context} => Types::EvaluationContext
    #   * {Types::GetResourceEvaluationSummaryResponse#resource_details #resource_details} => Types::ResourceDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_evaluation_summary({
    #     resource_evaluation_id: "ResourceEvaluationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_evaluation_id #=> String
    #   resp.evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.evaluation_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.evaluation_status.failure_reason #=> String
    #   resp.evaluation_start_timestamp #=> Time
    #   resp.compliance #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.evaluation_context.evaluation_context_identifier #=> String
    #   resp.resource_details.resource_id #=> String
    #   resp.resource_details.resource_type #=> String
    #   resp.resource_details.resource_configuration #=> String
    #   resp.resource_details.resource_configuration_schema_type #=> String, one of "CFN_RESOURCE_SCHEMA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceEvaluationSummary AWS API Documentation
    #
    # @overload get_resource_evaluation_summary(params = {})
    # @param [Hash] params ({})
    def get_resource_evaluation_summary(params = {}, options = {})
      req = build_request(:get_resource_evaluation_summary, params)
      req.send_request(options)
    end

    # Returns the details of a specific stored query.
    #
    # @option params [required, String] :query_name
    #   The name of the query.
    #
    # @return [Types::GetStoredQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStoredQueryResponse#stored_query #stored_query} => Types::StoredQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stored_query({
    #     query_name: "QueryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stored_query.query_id #=> String
    #   resp.stored_query.query_arn #=> String
    #   resp.stored_query.query_name #=> String
    #   resp.stored_query.description #=> String
    #   resp.stored_query.expression #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetStoredQuery AWS API Documentation
    #
    # @overload get_stored_query(params = {})
    # @param [Hash] params ({})
    def get_stored_query(params = {}, options = {})
      req = build_request(:get_stored_query, params)
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
    #   The type of resources that you want Config to list in the response.
    #
    # @option params [Types::ResourceFilters] :filters
    #   Filters the results based on the `ResourceFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource identifiers returned on each page. You
    #   cannot specify a number greater than 100. If you specify 0, Config
    #   uses the default.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregate_discovered_resources({
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Returns a list of conformance pack compliance scores. A compliance
    # score is the percentage of the number of compliant rule-resource
    # combinations in a conformance pack compared to the number of total
    # possible rule-resource combinations in the conformance pack. This
    # metric provides you with a high-level view of the compliance state of
    # your conformance packs. You can use it to identify, investigate, and
    # understand the level of compliance in your conformance packs.
    #
    # <note markdown="1"> Conformance packs with no evaluation results will have a compliance
    # score of `INSUFFICIENT_DATA`.
    #
    #  </note>
    #
    # @option params [Types::ConformancePackComplianceScoresFilters] :filters
    #   Filters the results based on the
    #   `ConformancePackComplianceScoresFilters`.
    #
    # @option params [String] :sort_order
    #   Determines the order in which conformance pack compliance scores are
    #   sorted. Either in ascending or descending order.
    #
    #   By default, conformance pack compliance scores are sorted in
    #   alphabetical order by name of the conformance pack. Conformance pack
    #   compliance scores are sorted in reverse alphabetical order if you
    #   enter `DESCENDING`.
    #
    #   You can sort conformance pack compliance scores by the numerical value
    #   of the compliance score by entering `SCORE` in the `SortBy` action.
    #   When compliance scores are sorted by `SCORE`, conformance packs with a
    #   compliance score of `INSUFFICIENT_DATA` will be last when sorting by
    #   ascending order and first when sorting by descending order.
    #
    # @option params [String] :sort_by
    #   Sorts your conformance pack compliance scores in either ascending or
    #   descending order, depending on `SortOrder`.
    #
    #   By default, conformance pack compliance scores are sorted in
    #   alphabetical order by name of the conformance pack. Enter `SCORE`, to
    #   sort conformance pack compliance scores by the numerical value of the
    #   compliance score.
    #
    # @option params [Integer] :limit
    #   The maximum number of conformance pack compliance scores returned on
    #   each page.
    #
    # @option params [String] :next_token
    #   The `nextToken` string in a prior request that you can use to get the
    #   paginated response for the next set of conformance pack compliance
    #   scores.
    #
    # @return [Types::ListConformancePackComplianceScoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConformancePackComplianceScoresResponse#next_token #next_token} => String
    #   * {Types::ListConformancePackComplianceScoresResponse#conformance_pack_compliance_scores #conformance_pack_compliance_scores} => Array&lt;Types::ConformancePackComplianceScore&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conformance_pack_compliance_scores({
    #     filters: {
    #       conformance_pack_names: ["ConformancePackName"], # required
    #     },
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "SCORE", # accepts SCORE
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.conformance_pack_compliance_scores #=> Array
    #   resp.conformance_pack_compliance_scores[0].score #=> String
    #   resp.conformance_pack_compliance_scores[0].conformance_pack_name #=> String
    #   resp.conformance_pack_compliance_scores[0].last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListConformancePackComplianceScores AWS API Documentation
    #
    # @overload list_conformance_pack_compliance_scores(params = {})
    # @param [Hash] params ({})
    def list_conformance_pack_compliance_scores(params = {}, options = {})
      req = build_request(:list_conformance_pack_compliance_scores, params)
      req.send_request(options)
    end

    # Accepts a resource type and returns a list of resource identifiers for
    # the resources of that type. A resource identifier includes the
    # resource type, ID, and (if available) the custom resource name. The
    # results consist of resources that Config has discovered, including
    # those that Config is not currently recording. You can narrow the
    # results to include only resources that have specific resource IDs or a
    # resource name.
    #
    # <note markdown="1"> You can specify either resource IDs or a resource name, but not both,
    # in the same request.
    #
    #  </note>
    #
    # The response is paginated. By default, Config lists 100 resource
    # identifiers on each page. You can customize this number with the
    # `limit` parameter. The response includes a `nextToken` string. To get
    # the next page of results, run the request again and specify the string
    # for the `nextToken` parameter.
    #
    # @option params [required, String] :resource_type
    #   The type of resources that you want Config to list in the response.
    #
    # @option params [Array<String>] :resource_ids
    #   The IDs of only those resources that you want Config to list in the
    #   response. If you do not specify this parameter, Config lists all
    #   resources of the specified type that it has discovered. You can list a
    #   minimum of 1 resourceID and a maximum of 20 resourceIds.
    #
    # @option params [String] :resource_name
    #   The custom name of only those resources that you want Config to list
    #   in the response. If you do not specify this parameter, Config lists
    #   all resources of the specified type that it has discovered.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource identifiers returned on each page. The
    #   default is 100. You cannot specify a number greater than 100. If you
    #   specify 0, Config uses the default.
    #
    # @option params [Boolean] :include_deleted_resources
    #   Specifies whether Config includes deleted resources in the results. By
    #   default, deleted resources are not included.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources({
    #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
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
    #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Returns a list of proactive resource evaluations.
    #
    # @option params [Types::ResourceEvaluationFilters] :filters
    #   Returns a `ResourceEvaluationFilters` object.
    #
    # @option params [Integer] :limit
    #   The maximum number of evaluations returned on each page. The default
    #   is 10. You cannot specify a number greater than 100. If you specify 0,
    #   Config uses the default.
    #
    # @option params [String] :next_token
    #   The `nextToken` string returned on a previous page that you use to get
    #   the next page of results in a paginated response.
    #
    # @return [Types::ListResourceEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceEvaluationsResponse#resource_evaluations #resource_evaluations} => Array&lt;Types::ResourceEvaluation&gt;
    #   * {Types::ListResourceEvaluationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_evaluations({
    #     filters: {
    #       evaluation_mode: "DETECTIVE", # accepts DETECTIVE, PROACTIVE
    #       time_window: {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       },
    #       evaluation_context_identifier: "EvaluationContextIdentifier",
    #     },
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_evaluations #=> Array
    #   resp.resource_evaluations[0].resource_evaluation_id #=> String
    #   resp.resource_evaluations[0].evaluation_mode #=> String, one of "DETECTIVE", "PROACTIVE"
    #   resp.resource_evaluations[0].evaluation_start_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListResourceEvaluations AWS API Documentation
    #
    # @overload list_resource_evaluations(params = {})
    # @param [Hash] params ({})
    def list_resource_evaluations(params = {}, options = {})
      req = build_request(:list_resource_evaluations, params)
      req.send_request(options)
    end

    # Lists the stored queries for a single Amazon Web Services account and
    # a single Amazon Web Services Region. The default is 100.
    #
    # @option params [String] :next_token
    #   The nextToken string returned in a previous request that you use to
    #   request the next page of results in a paginated response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call.
    #
    # @return [Types::ListStoredQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStoredQueriesResponse#stored_query_metadata #stored_query_metadata} => Array&lt;Types::StoredQueryMetadata&gt;
    #   * {Types::ListStoredQueriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stored_queries({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stored_query_metadata #=> Array
    #   resp.stored_query_metadata[0].query_id #=> String
    #   resp.stored_query_metadata[0].query_arn #=> String
    #   resp.stored_query_metadata[0].query_name #=> String
    #   resp.stored_query_metadata[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListStoredQueries AWS API Documentation
    #
    # @overload list_stored_queries(params = {})
    # @param [Hash] params ({})
    def list_stored_queries(params = {}, options = {})
      req = build_request(:list_stored_queries, params)
      req.send_request(options)
    end

    # List the tags for Config resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the supported resources are `ConfigRule`,
    #   `ConfigurationAggregator` and `AggregatorAuthorization`.
    #
    # @option params [Integer] :limit
    #   The maximum number of tags returned on each page. The limit maximum is
    #   50. You cannot specify a number greater than 50. If you specify 0,
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # <note markdown="1"> `PutAggregationAuthorization` is an idempotent API. Subsequent
    # requests won’t create a duplicate resource if one was already created.
    # If a following request has different `tags` values, Config will ignore
    # these differences and treat it as an idempotent request of the
    # previous. In this case, `tags` will not be updated, even if they are
    # different.
    #
    #  </note>
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

    # Adds or updates an Config rule to evaluate if your Amazon Web Services
    # resources comply with your desired configurations. For information on
    # how many Config rules you can have per account, see [ **Service
    # Limits** ][1] in the *Config Developer Guide*.
    #
    # There are two types of rules: *Config Managed Rules* and *Config
    # Custom Rules*. You can use `PutConfigRule` to create both Config
    # Managed Rules and Config Custom Rules.
    #
    # Config Managed Rules are predefined, customizable rules created by
    # Config. For a list of managed rules, see [List of Config Managed
    # Rules][2]. If you are adding an Config managed rule, you must specify
    # the rule's identifier for the `SourceIdentifier` key.
    #
    # Config Custom Rules are rules that you create from scratch. There are
    # two ways to create Config custom rules: with Lambda functions ([
    # Lambda Developer Guide][3]) and with Guard ([Guard GitHub
    # Repository][4]), a policy-as-code language. Config custom rules
    # created with Lambda are called *Config Custom Lambda Rules* and Config
    # custom rules created with Guard are called *Config Custom Policy
    # Rules*.
    #
    # If you are adding a new Config Custom Lambda rule, you first need to
    # create an Lambda function that the rule invokes to evaluate your
    # resources. When you use `PutConfigRule` to add a Custom Lambda rule to
    # Config, you must specify the Amazon Resource Name (ARN) that Lambda
    # assigns to the function. You specify the ARN in the `SourceIdentifier`
    # key. This key is part of the `Source` object, which is part of the
    # `ConfigRule` object.
    #
    # For any new Config rule that you add, specify the `ConfigRuleName` in
    # the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the
    # `ConfigRuleId`. These values are generated by Config for new rules.
    #
    # If you are updating a rule that you added previously, you can specify
    # the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in
    # the `ConfigRule` data type that you use in this request.
    #
    # For more information about developing and using Config rules, see
    # [Evaluating Resources with Config Rules][5] in the *Config Developer
    # Guide*.
    #
    # <note markdown="1"> `PutConfigRule` is an idempotent API. Subsequent requests won’t create
    # a duplicate resource if one was already created. If a following
    # request has different `tags` values, Config will ignore these
    # differences and treat it as an idempotent request of the previous. In
    # this case, `tags` will not be updated, even if they are different.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    # [2]: https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html
    # [3]: https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function
    # [4]: https://github.com/aws-cloudformation/cloudformation-guard
    # [5]: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
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
    #         owner: "CUSTOM_LAMBDA", # required, accepts CUSTOM_LAMBDA, AWS, CUSTOM_POLICY
    #         source_identifier: "StringWithCharLimit256",
    #         source_details: [
    #           {
    #             event_source: "aws.config", # accepts aws.config
    #             message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification
    #             maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #           },
    #         ],
    #         custom_policy_details: {
    #           policy_runtime: "PolicyRuntime", # required
    #           policy_text: "PolicyText", # required
    #           enable_debug_log_delivery: false,
    #         },
    #       },
    #       input_parameters: "StringWithCharLimit1024",
    #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
    #       created_by: "StringWithCharLimit256",
    #       evaluation_modes: [
    #         {
    #           mode: "DETECTIVE", # accepts DETECTIVE, PROACTIVE
    #         },
    #       ],
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
    # `accountIds` that are passed will be replaced with existing accounts.
    # If you want to add additional accounts into the aggregator, call
    # `DescribeConfigurationAggregators` to get the previous accounts and
    # then append new ones.
    #
    # <note markdown="1"> Config should be enabled in source accounts and regions you want to
    # aggregate.
    #
    #  If your source type is an organization, you must be signed in to the
    # management account or a registered delegated administrator and all the
    # features must be enabled in your organization. If the caller is a
    # management account, Config calls `EnableAwsServiceAccess` API to
    # enable integration between Config and Organizations. If the caller is
    # a registered delegated administrator, Config calls
    # `ListDelegatedAdministrators` API to verify whether the caller is a
    # valid delegated administrator.
    #
    #  To register a delegated administrator, see [Register a Delegated
    # Administrator][1] in the *Config developer guide*.
    #
    #  </note>
    #
    # <note markdown="1"> `PutConfigurationAggregator` is an idempotent API. Subsequent requests
    # won’t create a duplicate resource if one was already created. If a
    # following request has different `tags` values, Config will ignore
    # these differences and treat it as an idempotent request of the
    # previous. In this case, `tags` will not be updated, even if they are
    # different.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli
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

    # Creates a new configuration recorder to record configuration changes
    # for specified resource types.
    #
    # You can also use this action to change the `roleARN` or the
    # `recordingGroup` of an existing recorder. For more information, see [
    # **Managing the Configuration Recorder** ][1] in the *Config Developer
    # Guide*.
    #
    # <note markdown="1"> You can specify only one configuration recorder for each Amazon Web
    # Services Region for each account.
    #
    #  If the configuration recorder does not have the `recordingGroup` field
    # specified, the default is to record all supported resource types.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html
    #
    # @option params [required, Types::ConfigurationRecorder] :configuration_recorder
    #   An object for the configuration recorder to record configuration
    #   changes for specified resource types.
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
    #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
    #         exclusion_by_resource_types: {
    #           resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
    #         },
    #         recording_strategy: {
    #           use_only: "ALL_SUPPORTED_RESOURCE_TYPES", # accepts ALL_SUPPORTED_RESOURCE_TYPES, INCLUSION_BY_RESOURCE_TYPES, EXCLUSION_BY_RESOURCE_TYPES
    #         },
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
    # collection of Config rules that can be easily deployed in an account
    # and a region and across an organization. For information on how many
    # conformance packs you can have per account, see [ **Service Limits**
    # ][1] in the *Config Developer Guide*.
    #
    # This API creates a service-linked role
    # `AWSServiceRoleForConfigConforms` in your account. The service-linked
    # role is created only when the role does not exist in your account.
    #
    # <note markdown="1"> You must specify only one of the follow parameters: `TemplateS3Uri`,
    # `TemplateBody` or `TemplateSSMDocumentDetails`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    #
    # @option params [required, String] :conformance_pack_name
    #   The unique name of the conformance pack you want to deploy.
    #
    # @option params [String] :template_s3_uri
    #   The location of the file containing the template body
    #   (`s3://bucketname/prefix`). The uri must point to a conformance pack
    #   template (max size: 300 KB) that is located in an Amazon S3 bucket in
    #   the same Region as the conformance pack.
    #
    #   <note markdown="1"> You must have access to read Amazon S3 bucket.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   A string containing the full conformance pack template body. The
    #   structure containing the template body has a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes.
    #
    #   <note markdown="1"> You can use a YAML template with two resource types: Config rule
    #   (`AWS::Config::ConfigRule`) and remediation action
    #   (`AWS::Config::RemediationConfiguration`).
    #
    #    </note>
    #
    # @option params [String] :delivery_s3_bucket
    #   The name of the Amazon S3 bucket where Config stores conformance pack
    #   templates.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #
    # @option params [String] :delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #
    # @option params [Types::TemplateSSMDocumentDetails] :template_ssm_document_details
    #   An object of type `TemplateSSMDocumentDetails`, which contains the
    #   name or the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Systems Manager document (SSM document) and the version of the SSM
    #   document that is used to create a conformance pack.
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
    #     template_ssm_document_details: {
    #       document_name: "SSMDocumentName", # required
    #       document_version: "SSMDocumentVersion",
    #     },
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
    #       s3_kms_key_arn: "String",
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

    # Used by an Lambda function to deliver evaluation results to Config.
    # This action is required in every Lambda function that is invoked by an
    # Config rule.
    #
    # @option params [Array<Types::Evaluation>] :evaluations
    #   The assessments that the Lambda function performs. Each evaluation
    #   identifies an Amazon Web Services resource and indicates whether it
    #   complies with the Config rule that invokes the Lambda function.
    #
    # @option params [required, String] :result_token
    #   An encrypted token that associates an evaluation with an Config rule.
    #   Identifies the rule and the event that triggered the evaluation.
    #
    # @option params [Boolean] :test_mode
    #   Use this parameter to specify a test run for `PutEvaluations`. You can
    #   verify whether your Lambda function will deliver evaluation results to
    #   Config. No updates occur to your existing evaluations, and evaluation
    #   results are not sent to Config.
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

    # Add or updates the evaluations for process checks. This API checks if
    # the rule is a process check when the name of the Config rule is
    # provided.
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule.
    #
    # @option params [required, Types::ExternalEvaluation] :external_evaluation
    #   An `ExternalEvaluation` object that provides details about compliance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_external_evaluation({
    #     config_rule_name: "ConfigRuleName", # required
    #     external_evaluation: { # required
    #       compliance_resource_type: "StringWithCharLimit256", # required
    #       compliance_resource_id: "BaseResourceId", # required
    #       compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
    #       annotation: "StringWithCharLimit256",
    #       ordering_timestamp: Time.now, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutExternalEvaluation AWS API Documentation
    #
    # @overload put_external_evaluation(params = {})
    # @param [Hash] params ({})
    def put_external_evaluation(params = {}, options = {})
      req = build_request(:put_external_evaluation, params)
      req.send_request(options)
    end

    # Adds or updates an Config rule for your entire organization to
    # evaluate if your Amazon Web Services resources comply with your
    # desired configurations. For information on how many organization
    # Config rules you can have per account, see [ **Service Limits** ][1]
    # in the *Config Developer Guide*.
    #
    # Only a management account and a delegated administrator can create or
    # update an organization Config rule. When calling this API with a
    # delegated administrator, you must ensure Organizations
    # `ListDelegatedAdministrator` permissions are added. An organization
    # can have up to 3 delegated administrators.
    #
    # This API enables organization service access through the
    # `EnableAWSServiceAccess` action and creates a service-linked role
    # `AWSServiceRoleForConfigMultiAccountSetup` in the management or
    # delegated administrator account of your organization. The
    # service-linked role is created only when the role does not exist in
    # the caller account. Config verifies the existence of role with
    # `GetRole` action.
    #
    # To use this API with delegated administrator, register a delegated
    # administrator by calling Amazon Web Services Organization
    # `register-delegated-administrator` for
    # `config-multiaccountsetup.amazonaws.com`.
    #
    # There are two types of rules: *Config Managed Rules* and *Config
    # Custom Rules*. You can use `PutOrganizationConfigRule` to create both
    # Config Managed Rules and Config Custom Rules.
    #
    # Config Managed Rules are predefined, customizable rules created by
    # Config. For a list of managed rules, see [List of Config Managed
    # Rules][2]. If you are adding an Config managed rule, you must specify
    # the rule's identifier for the `RuleIdentifier` key.
    #
    # Config Custom Rules are rules that you create from scratch. There are
    # two ways to create Config custom rules: with Lambda functions ([
    # Lambda Developer Guide][3]) and with Guard ([Guard GitHub
    # Repository][4]), a policy-as-code language. Config custom rules
    # created with Lambda are called *Config Custom Lambda Rules* and Config
    # custom rules created with Guard are called *Config Custom Policy
    # Rules*.
    #
    # If you are adding a new Config Custom Lambda rule, you first need to
    # create an Lambda function in the management account or a delegated
    # administrator that the rule invokes to evaluate your resources. You
    # also need to create an IAM role in the managed account that can be
    # assumed by the Lambda function. When you use
    # `PutOrganizationConfigRule` to add a Custom Lambda rule to Config, you
    # must specify the Amazon Resource Name (ARN) that Lambda assigns to the
    # function.
    #
    # <note markdown="1"> Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
    # features in an organization.
    #
    #  Make sure to specify one of either
    # `OrganizationCustomPolicyRuleMetadata` for Custom Policy rules,
    # `OrganizationCustomRuleMetadata` for Custom Lambda rules, or
    # `OrganizationManagedRuleMetadata` for managed rules.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
    # [2]: https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html
    # [3]: https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function
    # [4]: https://github.com/aws-cloudformation/cloudformation-guard
    #
    # @option params [required, String] :organization_config_rule_name
    #   The name that you assign to an organization Config rule.
    #
    # @option params [Types::OrganizationManagedRuleMetadata] :organization_managed_rule_metadata
    #   An `OrganizationManagedRuleMetadata` object. This object specifies
    #   organization managed rule metadata such as resource type and ID of
    #   Amazon Web Services resource along with the rule identifier. It also
    #   provides the frequency with which you want Config to run evaluations
    #   for the rule if the trigger type is periodic.
    #
    # @option params [Types::OrganizationCustomRuleMetadata] :organization_custom_rule_metadata
    #   An `OrganizationCustomRuleMetadata` object. This object specifies
    #   organization custom rule metadata such as resource type, resource ID
    #   of Amazon Web Services resource, Lambda function ARN, and organization
    #   trigger types that trigger Config to evaluate your Amazon Web Services
    #   resources against a rule. It also provides the frequency with which
    #   you want Config to run evaluations for the rule if the trigger type is
    #   periodic.
    #
    # @option params [Array<String>] :excluded_accounts
    #   A comma-separated list of accounts that you want to exclude from an
    #   organization Config rule.
    #
    # @option params [Types::OrganizationCustomPolicyRuleMetadata] :organization_custom_policy_rule_metadata
    #   An `OrganizationCustomPolicyRuleMetadata` object. This object
    #   specifies metadata for your organization's Config Custom Policy rule.
    #   The metadata includes the runtime system in use, which accounts have
    #   debug logging enabled, and other custom rule metadata, such as
    #   resource type, resource ID of Amazon Web Services resource, and
    #   organization trigger types that initiate Config to evaluate Amazon Web
    #   Services resources against a rule.
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
    #     organization_custom_policy_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification"], # accepts ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256",
    #       policy_runtime: "PolicyRuntime", # required
    #       policy_text: "PolicyText", # required
    #       debug_log_delivery_accounts: ["AccountId"],
    #     },
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

    # Deploys conformance packs across member accounts in an Amazon Web
    # Services Organization. For information on how many organization
    # conformance packs and how many Config rules you can have per account,
    # see [ **Service Limits** ][1] in the *Config Developer Guide*.
    #
    # Only a management account and a delegated administrator can call this
    # API. When calling this API with a delegated administrator, you must
    # ensure Organizations `ListDelegatedAdministrator` permissions are
    # added. An organization can have up to 3 delegated administrators.
    #
    # This API enables organization service access for
    # `config-multiaccountsetup.amazonaws.com` through the
    # `EnableAWSServiceAccess` action and creates a service-linked role
    # `AWSServiceRoleForConfigMultiAccountSetup` in the management or
    # delegated administrator account of your organization. The
    # service-linked role is created only when the role does not exist in
    # the caller account. To use this API with delegated administrator,
    # register a delegated administrator by calling Amazon Web Services
    # Organization `register-delegate-admin` for
    # `config-multiaccountsetup.amazonaws.com`.
    #
    # <note markdown="1"> Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
    # features in an organization.
    #
    #  You must specify either the `TemplateS3Uri` or the `TemplateBody`
    # parameter, but not both. If you provide both Config uses the
    # `TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.
    #
    #  Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS
    # and UPDATE\_IN\_PROGRESS until the conformance pack is created or
    # updated. You cannot update a conformance pack while it is in this
    # state.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
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
    #   The name of the Amazon S3 bucket where Config stores conformance pack
    #   templates.
    #
    #   <note markdown="1"> This field is optional. If used, it must be prefixed with
    #   `awsconfigconforms`.
    #
    #    </note>
    #
    # @option params [String] :delivery_s3_key_prefix
    #   The prefix for the Amazon S3 bucket.
    #
    #   <note markdown="1"> This field is optional.
    #
    #    </note>
    #
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   A list of `ConformancePackInputParameter` objects.
    #
    # @option params [Array<String>] :excluded_accounts
    #   A list of Amazon Web Services accounts to be excluded from an
    #   organization conformance pack while deploying a conformance pack.
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

    # Adds or updates the remediation configuration with a specific Config
    # rule with the selected target or action. The API creates the
    # `RemediationConfiguration` object for the Config rule. The Config rule
    # must already exist for you to add a remediation configuration. The
    # target (SSM document) must exist and have permissions to use the
    # target.
    #
    # <note markdown="1"> If you make backward incompatible changes to the SSM document, you
    # must call this again to ensure the remediations can run.
    #
    #  This API does not support adding remediation configurations for
    # service-linked Config Rules such as Organization Config rules, the
    # rules deployed by conformance packs, and rules deployed by Amazon Web
    # Services Security Hub.
    #
    #  </note>
    #
    # <note markdown="1"> For manual remediation configuration, you need to provide a value for
    # `automationAssumeRole` or use a value in the `assumeRole`field to
    # remediate your resources. The SSM automation document can use either
    # as long as it maps to a valid parameter.
    #
    #  However, for automatic remediation configuration, the only valid
    # `assumeRole` field value is `AutomationAssumeRole` and you need to
    # provide a value for `AutomationAssumeRole` to remediate your
    # resources.
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

    # A remediation exception is when a specified resource is no longer
    # considered for auto-remediation. This API adds a new exception or
    # updates an existing exception for a specified resource with a
    # specified Config rule.
    #
    # <note markdown="1"> Config generates a remediation exception when a problem occurs running
    # a remediation action for a specified resource. Remediation exceptions
    # blocks auto-remediation until the exception is cleared.
    #
    #  </note>
    #
    # <note markdown="1"> When placing an exception on an Amazon Web Services resource, it is
    # recommended that remediation is set as manual remediation until the
    # given Config rule for the specified resource evaluates the resource as
    # `NON_COMPLIANT`. Once the resource has been evaluated as
    # `NON_COMPLIANT`, you can add remediation exceptions and change the
    # remediation type back from Manual to Auto if you want to use
    # auto-remediation. Otherwise, using auto-remediation before a
    # `NON_COMPLIANT` evaluation result can delete resources before the
    # exception is applied.
    #
    #  </note>
    #
    # <note markdown="1"> Placing an exception can only be performed on resources that are
    # `NON_COMPLIANT`. If you use this API for `COMPLIANT` resources or
    # resources that are `NOT_APPLICABLE`, a remediation exception will not
    # be generated. For more information on the conditions that initiate the
    # possible Config evaluation results, see [Concepts \| Config Rules][1]
    # in the *Config Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules
    #
    # @option params [required, String] :config_rule_name
    #   The name of the Config rule for which you want to create remediation
    #   exception.
    #
    # @option params [required, Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   An exception list of resource exception keys to be processed with the
    #   current request. Config adds exception for each resource key. For
    #   example, Config adds 3 exceptions for 3 resource keys.
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
    # request. The configuration state of a resource is represented in
    # Config as Configuration Items. Once this API records the configuration
    # item, you can retrieve the list of configuration items for the custom
    # resource type using existing Config APIs.
    #
    # <note markdown="1"> The custom resource type must be registered with CloudFormation. This
    # API accepts the configuration item registered with CloudFormation.
    #
    #  When you call this API, Config only stores configuration state of the
    # resource provided in the request. This API does not change or
    # remediate the configuration of the resource.
    #
    #  Write-only schema properites are not recorded as part of the published
    # configuration item.
    #
    #  </note>
    #
    # @option params [required, String] :resource_type
    #   The type of the resource. The custom resource type must be registered
    #   with CloudFormation.
    #
    #   <note markdown="1"> You cannot use the organization names “amzn”, “amazon”, “alexa”,
    #   “custom” with custom resource types. It is the first part of the
    #   ResourceType up to the first ::.
    #
    #    </note>
    #
    # @option params [required, String] :schema_version_id
    #   Version of the schema registered for the ResourceType in
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
    #   match the schema registered with CloudFormation.
    #
    #   <note markdown="1"> The configuration JSON must not exceed 64 KB.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   Tags associated with the resource.
    #
    #   <note markdown="1"> This field is not to be confused with the Amazon Web Services-wide tag
    #   feature for Amazon Web Services resources. Tags for
    #   `PutResourceConfig` are tags that you supply for the configuration
    #   items of your custom resources.
    #
    #    </note>
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
    # retention period (number of days) that Config stores your historical
    # information. The API creates the `RetentionConfiguration` object and
    # names the object as **default**. When you have a
    # `RetentionConfiguration` object named **default**, calling the API
    # modifies the default object.
    #
    # <note markdown="1"> Currently, Config supports only one retention configuration per region
    # in your account.
    #
    #  </note>
    #
    # @option params [required, Integer] :retention_period_in_days
    #   Number of days Config stores your historical information.
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

    # Saves a new query or updates an existing saved query. The `QueryName`
    # must be unique for a single Amazon Web Services account and a single
    # Amazon Web Services Region. You can create upto 300 queries in a
    # single Amazon Web Services account and a single Amazon Web Services
    # Region.
    #
    # <note markdown="1"> `PutStoredQuery` is an idempotent API. Subsequent requests won’t
    # create a duplicate resource if one was already created. If a following
    # request has different `tags` values, Config will ignore these
    # differences and treat it as an idempotent request of the previous. In
    # this case, `tags` will not be updated, even if they are different.
    #
    #  </note>
    #
    # @option params [required, Types::StoredQuery] :stored_query
    #   A list of `StoredQuery` objects. The mandatory fields are `QueryName`
    #   and `Expression`.
    #
    #   <note markdown="1"> When you are creating a query, you must provide a query name and an
    #   expression. When you are updating a query, you must provide a query
    #   name but updating the description is optional.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of `Tags` object.
    #
    # @return [Types::PutStoredQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutStoredQueryResponse#query_arn #query_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_stored_query({
    #     stored_query: { # required
    #       query_id: "QueryId",
    #       query_arn: "QueryArn",
    #       query_name: "QueryName", # required
    #       description: "QueryDescription",
    #       expression: "QueryExpression",
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
    #   resp.query_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutStoredQuery AWS API Documentation
    #
    # @overload put_stored_query(params = {})
    # @param [Hash] params ({})
    def put_stored_query(params = {}, options = {})
      req = build_request(:put_stored_query, params)
      req.send_request(options)
    end

    # Accepts a structured query language (SQL) SELECT command and an
    # aggregator to query configuration state of Amazon Web Services
    # resources across multiple accounts and regions, performs the
    # corresponding search, and returns resource configurations matching the
    # properties.
    #
    # For more information about query components, see the [ **Query
    # Components** ][1] section in the *Config Developer Guide*.
    #
    # <note markdown="1"> If you run an aggregation query (i.e., using `GROUP BY` or using
    # aggregate functions such as `COUNT`; e.g., `SELECT resourceId,
    # COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId`)
    # and do not specify the `MaxResults` or the `Limit` query parameters,
    # the default page size is set to 500.
    #
    #  If you run a non-aggregation query (i.e., not using `GROUP BY` or
    # aggregate function; e.g., `SELECT * WHERE resourceType =
    # 'AWS::IAM::Role'`) and do not specify the `MaxResults` or the `Limit`
    # query parameters, the default page size is set to 25.
    #
    #  </note>
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
    #   The maximum number of query results returned on each page. Config also
    #   allows the Limit request parameter.
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
    # Components** ][1] section in the *Config Developer Guide*.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Runs an on-demand evaluation for the specified Config rules against
    # the last known configuration state of the resources. Use
    # `StartConfigRulesEvaluation` when you want to test that a rule you
    # updated is working as expected. `StartConfigRulesEvaluation` does not
    # re-record the latest configuration state for your resources. It
    # re-runs an evaluation against the last known state of your resources.
    #
    # You can specify up to 25 Config rules per request.
    #
    # An existing `StartConfigRulesEvaluation` call for the specified rules
    # must complete before you can call the API again. If you chose to have
    # Config stream to an Amazon SNS topic, you will receive a
    # `ConfigRuleEvaluationStarted` notification when the evaluation starts.
    #
    # <note markdown="1"> You don't need to call the `StartConfigRulesEvaluation` API to run an
    # evaluation for a new rule. When you create a rule, Config evaluates
    # your resources against the rule automatically.
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
    # 4.  Config invokes your Lambda function and evaluates your IAM
    #     resources.
    #
    # 5.  Your custom rule will still run periodic evaluations every 24
    #     hours.
    #
    # @option params [Array<String>] :config_rule_names
    #   The list of names of Config rules that you want to run evaluations
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

    # Starts recording configurations of the Amazon Web Services resources
    # you have selected to record in your Amazon Web Services account.
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

    # Runs an on-demand remediation for the specified Config rules against
    # the last known remediation configuration. It runs an execution against
    # the current state of your resources. Remediation execution is
    # asynchronous.
    #
    # You can specify up to 100 resource keys per request. An existing
    # StartRemediationExecution call for the specified resource keys must
    # complete before you can call the API again.
    #
    # @option params [required, String] :config_rule_name
    #   The list of names of Config rules that you want to run remediation
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
    #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::EC2::RegisteredHAInstance, AWS::EC2::NatGateway, AWS::EC2::EgressOnlyInternetGateway, AWS::EC2::VPCEndpoint, AWS::EC2::VPCEndpointService, AWS::EC2::FlowLog, AWS::EC2::VPCPeeringConnection, AWS::Elasticsearch::Domain, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::DBCluster, AWS::RDS::DBClusterSnapshot, AWS::RDS::EventSubscription, AWS::S3::Bucket, AWS::S3::AccountPublicAccessBlock, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::SSM::ManagedInstanceInventory, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::ElasticLoadBalancing::LoadBalancer, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::DynamoDB::Table, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::RuleGroup, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::RuleGroup, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::Lambda::Function, AWS::NetworkFirewall::Firewall, AWS::NetworkFirewall::FirewallPolicy, AWS::NetworkFirewall::RuleGroup, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::WAFv2::WebACL, AWS::WAFv2::RuleGroup, AWS::WAFv2::IPSet, AWS::WAFv2::RegexPatternSet, AWS::WAFv2::ManagedRuleSet, AWS::XRay::EncryptionConfig, AWS::SSM::AssociationCompliance, AWS::SSM::PatchCompliance, AWS::Shield::Protection, AWS::ShieldRegional::Protection, AWS::Config::ConformancePackCompliance, AWS::Config::ResourceCompliance, AWS::ApiGateway::Stage, AWS::ApiGateway::RestApi, AWS::ApiGatewayV2::Stage, AWS::ApiGatewayV2::Api, AWS::CodePipeline::Pipeline, AWS::ServiceCatalog::CloudFormationProvisionedProduct, AWS::ServiceCatalog::CloudFormationProduct, AWS::ServiceCatalog::Portfolio, AWS::SQS::Queue, AWS::KMS::Key, AWS::QLDB::Ledger, AWS::SecretsManager::Secret, AWS::SNS::Topic, AWS::SSM::FileData, AWS::Backup::BackupPlan, AWS::Backup::BackupSelection, AWS::Backup::BackupVault, AWS::Backup::RecoveryPoint, AWS::ECR::Repository, AWS::ECS::Cluster, AWS::ECS::Service, AWS::ECS::TaskDefinition, AWS::EFS::AccessPoint, AWS::EFS::FileSystem, AWS::EKS::Cluster, AWS::OpenSearch::Domain, AWS::EC2::TransitGateway, AWS::Kinesis::Stream, AWS::Kinesis::StreamConsumer, AWS::CodeDeploy::Application, AWS::CodeDeploy::DeploymentConfig, AWS::CodeDeploy::DeploymentGroup, AWS::EC2::LaunchTemplate, AWS::ECR::PublicRepository, AWS::GuardDuty::Detector, AWS::EMR::SecurityConfiguration, AWS::SageMaker::CodeRepository, AWS::Route53Resolver::ResolverEndpoint, AWS::Route53Resolver::ResolverRule, AWS::Route53Resolver::ResolverRuleAssociation, AWS::DMS::ReplicationSubnetGroup, AWS::DMS::EventSubscription, AWS::MSK::Cluster, AWS::StepFunctions::Activity, AWS::WorkSpaces::Workspace, AWS::WorkSpaces::ConnectionAlias, AWS::SageMaker::Model, AWS::ElasticLoadBalancingV2::Listener, AWS::StepFunctions::StateMachine, AWS::Batch::JobQueue, AWS::Batch::ComputeEnvironment, AWS::AccessAnalyzer::Analyzer, AWS::Athena::WorkGroup, AWS::Athena::DataCatalog, AWS::Detective::Graph, AWS::GlobalAccelerator::Accelerator, AWS::GlobalAccelerator::EndpointGroup, AWS::GlobalAccelerator::Listener, AWS::EC2::TransitGatewayAttachment, AWS::EC2::TransitGatewayRouteTable, AWS::DMS::Certificate, AWS::AppConfig::Application, AWS::AppSync::GraphQLApi, AWS::DataSync::LocationSMB, AWS::DataSync::LocationFSxLustre, AWS::DataSync::LocationS3, AWS::DataSync::LocationEFS, AWS::DataSync::Task, AWS::DataSync::LocationNFS, AWS::EC2::NetworkInsightsAccessScopeAnalysis, AWS::EKS::FargateProfile, AWS::Glue::Job, AWS::GuardDuty::ThreatIntelSet, AWS::GuardDuty::IPSet, AWS::SageMaker::Workteam, AWS::SageMaker::NotebookInstanceLifecycleConfig, AWS::ServiceDiscovery::Service, AWS::ServiceDiscovery::PublicDnsNamespace, AWS::SES::ContactList, AWS::SES::ConfigurationSet, AWS::Route53::HostedZone, AWS::IoTEvents::Input, AWS::IoTEvents::DetectorModel, AWS::IoTEvents::AlarmModel, AWS::ServiceDiscovery::HttpNamespace, AWS::Events::EventBus, AWS::ImageBuilder::ContainerRecipe, AWS::ImageBuilder::DistributionConfiguration, AWS::ImageBuilder::InfrastructureConfiguration, AWS::DataSync::LocationObjectStorage, AWS::DataSync::LocationHDFS, AWS::Glue::Classifier, AWS::Route53RecoveryReadiness::Cell, AWS::Route53RecoveryReadiness::ReadinessCheck, AWS::ECR::RegistryPolicy, AWS::Backup::ReportPlan, AWS::Lightsail::Certificate, AWS::RUM::AppMonitor, AWS::Events::Endpoint, AWS::SES::ReceiptRuleSet, AWS::Events::Archive, AWS::Events::ApiDestination, AWS::Lightsail::Disk, AWS::FIS::ExperimentTemplate, AWS::DataSync::LocationFSxWindows, AWS::SES::ReceiptFilter, AWS::GuardDuty::Filter, AWS::SES::Template, AWS::AmazonMQ::Broker, AWS::AppConfig::Environment, AWS::AppConfig::ConfigurationProfile, AWS::Cloud9::EnvironmentEC2, AWS::EventSchemas::Registry, AWS::EventSchemas::RegistryPolicy, AWS::EventSchemas::Discoverer, AWS::FraudDetector::Label, AWS::FraudDetector::EntityType, AWS::FraudDetector::Variable, AWS::FraudDetector::Outcome, AWS::IoT::Authorizer, AWS::IoT::SecurityProfile, AWS::IoT::RoleAlias, AWS::IoT::Dimension, AWS::IoTAnalytics::Datastore, AWS::Lightsail::Bucket, AWS::Lightsail::StaticIp, AWS::MediaPackage::PackagingGroup, AWS::Route53RecoveryReadiness::RecoveryGroup, AWS::ResilienceHub::ResiliencyPolicy, AWS::Transfer::Workflow, AWS::EKS::IdentityProviderConfig, AWS::EKS::Addon, AWS::Glue::MLTransform, AWS::IoT::Policy, AWS::IoT::MitigationAction, AWS::IoTTwinMaker::Workspace, AWS::IoTTwinMaker::Entity, AWS::IoTAnalytics::Dataset, AWS::IoTAnalytics::Pipeline, AWS::IoTAnalytics::Channel, AWS::IoTSiteWise::Dashboard, AWS::IoTSiteWise::Project, AWS::IoTSiteWise::Portal, AWS::IoTSiteWise::AssetModel, AWS::IVS::Channel, AWS::IVS::RecordingConfiguration, AWS::IVS::PlaybackKeyPair, AWS::KinesisAnalyticsV2::Application, AWS::RDS::GlobalCluster, AWS::S3::MultiRegionAccessPoint, AWS::DeviceFarm::TestGridProject, AWS::Budgets::BudgetsAction, AWS::Lex::Bot, AWS::CodeGuruReviewer::RepositoryAssociation, AWS::IoT::CustomMetric, AWS::Route53Resolver::FirewallDomainList, AWS::RoboMaker::RobotApplicationVersion, AWS::EC2::TrafficMirrorSession, AWS::IoTSiteWise::Gateway, AWS::Lex::BotAlias, AWS::LookoutMetrics::Alert, AWS::IoT::AccountAuditConfiguration, AWS::EC2::TrafficMirrorTarget, AWS::S3::StorageLens, AWS::IoT::ScheduledAudit, AWS::Events::Connection, AWS::EventSchemas::Schema, AWS::MediaPackage::PackagingConfiguration, AWS::KinesisVideo::SignalingChannel, AWS::AppStream::DirectoryConfig, AWS::LookoutVision::Project, AWS::Route53RecoveryControl::Cluster, AWS::Route53RecoveryControl::SafetyRule, AWS::Route53RecoveryControl::ControlPanel, AWS::Route53RecoveryControl::RoutingControl, AWS::Route53RecoveryReadiness::ResourceSet, AWS::RoboMaker::SimulationApplication, AWS::RoboMaker::RobotApplication, AWS::HealthLake::FHIRDatastore, AWS::Pinpoint::Segment, AWS::Pinpoint::ApplicationSettings, AWS::Events::Rule, AWS::EC2::DHCPOptions, AWS::EC2::NetworkInsightsPath, AWS::EC2::TrafficMirrorFilter, AWS::EC2::IPAM, AWS::IoTTwinMaker::Scene, AWS::NetworkManager::TransitGatewayRegistration, AWS::CustomerProfiles::Domain, AWS::AutoScaling::WarmPool, AWS::Connect::PhoneNumber, AWS::AppConfig::DeploymentStrategy, AWS::AppFlow::Flow, AWS::AuditManager::Assessment, AWS::CloudWatch::MetricStream, AWS::DeviceFarm::InstanceProfile, AWS::DeviceFarm::Project, AWS::EC2::EC2Fleet, AWS::EC2::SubnetRouteTableAssociation, AWS::ECR::PullThroughCacheRule, AWS::GroundStation::Config, AWS::ImageBuilder::ImagePipeline, AWS::IoT::FleetMetric, AWS::IoTWireless::ServiceProfile, AWS::NetworkManager::Device, AWS::NetworkManager::GlobalNetwork, AWS::NetworkManager::Link, AWS::NetworkManager::Site, AWS::Panorama::Package, AWS::Pinpoint::App, AWS::Redshift::ScheduledAction, AWS::Route53Resolver::FirewallRuleGroupAssociation, AWS::SageMaker::AppImageConfig, AWS::SageMaker::Image, AWS::ECS::TaskSet, AWS::Cassandra::Keyspace, AWS::Signer::SigningProfile, AWS::Amplify::App, AWS::AppMesh::VirtualNode, AWS::AppMesh::VirtualService, AWS::AppRunner::VpcConnector, AWS::AppStream::Application, AWS::CodeArtifact::Repository, AWS::EC2::PrefixList, AWS::EC2::SpotFleet, AWS::Evidently::Project, AWS::Forecast::Dataset, AWS::IAM::SAMLProvider, AWS::IAM::ServerCertificate, AWS::Pinpoint::Campaign, AWS::Pinpoint::InAppTemplate, AWS::SageMaker::Domain, AWS::Transfer::Agreement, AWS::Transfer::Connector, AWS::KinesisFirehose::DeliveryStream
    #         resource_id: "ResourceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failure_message #=> String
    #   resp.failed_items #=> Array
    #   resp.failed_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream"
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

    # Runs an on-demand evaluation for the specified resource to determine
    # whether the resource details will comply with configured Config rules.
    # You can also use it for evaluation purposes. Config recommends using
    # an evaluation context. It runs an execution against the resource
    # details with all of the Config rules in your account that match with
    # the specified proactive mode and resource type.
    #
    # <note markdown="1"> Ensure you have the `cloudformation:DescribeType` role setup to
    # validate the resource type schema.
    #
    #  You can find the [Resource type schema][1] in "*Amazon Web Services
    # public extensions*" within the CloudFormation registry or with the
    # following CLI commmand: `aws cloudformation describe-type --type-name
    # "AWS::S3::Bucket" --type RESOURCE`.
    #
    #  For more information, see [Managing extensions through the
    # CloudFormation registry][2] and [Amazon Web Services resource and
    # property types reference][3] in the CloudFormation User Guide.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view
    # [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # @option params [required, Types::ResourceDetails] :resource_details
    #   Returns a `ResourceDetails` object.
    #
    # @option params [Types::EvaluationContext] :evaluation_context
    #   Returns an `EvaluationContext` object.
    #
    # @option params [required, String] :evaluation_mode
    #   The mode of an evaluation. The valid values for this API are
    #   `DETECTIVE` and `PROACTIVE`.
    #
    # @option params [Integer] :evaluation_timeout
    #   The timeout for an evaluation. The default is 900 seconds. You cannot
    #   specify a number greater than 3600. If you specify 0, Config uses the
    #   default.
    #
    # @option params [String] :client_token
    #   A client token is a unique, case-sensitive string of up to 64 ASCII
    #   characters. To make an idempotent API request using one of these
    #   actions, specify a client token in the request.
    #
    #   <note markdown="1"> Avoid reusing the same client token for other API requests. If you
    #   retry a request that completed successfully using the same client
    #   token and the same parameters, the retry succeeds without performing
    #   any further actions. If you retry a successful request using the same
    #   client token, but one or more of the parameters are different, other
    #   than the Region or Availability Zone, the retry fails with an
    #   IdempotentParameterMismatch error.
    #
    #    </note>
    #
    # @return [Types::StartResourceEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartResourceEvaluationResponse#resource_evaluation_id #resource_evaluation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_evaluation({
    #     resource_details: { # required
    #       resource_id: "BaseResourceId", # required
    #       resource_type: "StringWithCharLimit256", # required
    #       resource_configuration: "ResourceConfiguration", # required
    #       resource_configuration_schema_type: "CFN_RESOURCE_SCHEMA", # accepts CFN_RESOURCE_SCHEMA
    #     },
    #     evaluation_context: {
    #       evaluation_context_identifier: "EvaluationContextIdentifier",
    #     },
    #     evaluation_mode: "DETECTIVE", # required, accepts DETECTIVE, PROACTIVE
    #     evaluation_timeout: 1,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_evaluation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartResourceEvaluation AWS API Documentation
    #
    # @overload start_resource_evaluation(params = {})
    # @param [Hash] params ({})
    def start_resource_evaluation(params = {}, options = {})
      req = build_request(:start_resource_evaluation, params)
      req.send_request(options)
    end

    # Stops recording configurations of the Amazon Web Services resources
    # you have selected to record in your Amazon Web Services account.
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
    # request parameters, they are not changed. If existing tags are
    # specified, however, then their values will be updated. When a resource
    # is deleted, the tags associated with that resource are deleted as
    # well.
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
      context[:gem_version] = '1.96.0'
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
